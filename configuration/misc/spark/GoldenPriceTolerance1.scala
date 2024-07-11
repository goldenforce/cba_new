
package com.thegoldensource.mds.batch

import org.apache.spark.SparkContext
import org.apache.spark.SparkConf
import org.apache.spark.sql.SQLContext

import org.apache.spark.sql.SQLContext
import org.apache.spark.{ SparkContext, SparkConf }
import java.util.Properties
import java.sql.DriverManager
import org.apache.spark.sql.SparkSession
import org.apache.spark.sql.functions._
import org.apache.spark.sql.functions.{to_date, to_timestamp}
import org.apache.spark.sql.functions._
import org.apache.log4j._
import org.apache.logging.log4j.scala.Logging
import java.sql.Date
import java.sql.Timestamp
import org.apache.spark.sql.functions.udf
import org.apache.spark.sql.types._
import scala.collection.immutable.TreeMap
import org.apache.spark.mllib.stat.MultivariateStatisticalSummary
import org.apache.spark.mllib.stat.{MultivariateStatisticalSummary, Statistics}
import org.apache.spark.sql.expressions.Window
import java.text.SimpleDateFormat
import java.util.Locale
import java.sql.Timestamp // Since java.util.Date is not supported in Spark SQL
import org.apache.spark.mllib.linalg.distributed.{BlockMatrix, CoordinateMatrix, MatrixEntry}
import org.apache.spark.rdd.RDD
import org.apache.spark.sql.SaveMode
import com.thegoldensource.mds.util.OidGenerator
import com.thegoldensource.mds.util.OidGeneratorImpl
import org.apache.spark.sql.functions.map
import org.apache.spark.sql.DataFrameStatFunctions
import java.util.Calendar
import org.apache.spark.storage.StorageLevel
import java.io.FileInputStream
import com.typesafe.config.ConfigFactory
import org.apache.spark.TaskContext
import org.apache.spark.SparkEnv


/*
 * Batch job for calculating tolerances subsequently being used by PRVI processing
 * 
 * TODO: Add command line parser https://github.com/scopt/scopt, 
 *                               https://stackoverflow.com/questions/2315912/best-way-to-parse-command-line-parameters
 *                               
 * TODO: Goldenprice indicator  CMNT_REAS_TYP = 'GOLDENPRICE?'
 */


object Oid {   
  lazy val generator = {
    // TODO: Check and replace with SparkContext.DRIVER_IDENTIFIER    
    val isDriver = SparkEnv.get.executorId == "driver"    
    
    val oidGen = new OidGeneratorImpl()    
    oidGen.setSystemId(100)
    // TODO: Check if that actually works across the cluster
    if (!isDriver)    
     oidGen.setProcessSeed(SparkEnv.get.executorId.toInt)
    else 
      oidGen.setProcessSeed(1)
      
    oidGen
  }
  
  def get() : String = { 
    generator.getOid() 
  }
}


object GoldenPriceTolerance1 extends App {
  
  //System.setProperty( "oracle.jdbc.Trace", "true" );
  val log = LogManager.getRootLogger
  
  val toInt = udf[Int, String]( _.toInt)
  val toDouble = udf[Double, String]( _.toDouble)
  val toHour = udf((t: String) => "%04d".format(t.toInt).take(2).toInt ) 
  val days_since_nearest_holidays = udf( 
     (year:String, month:String, dayOfMonth:String) => year.toInt + 27 + month.toInt-12
  )  

  if (args.length != 1) {
        println("Processing Timestamp is required (e.g. 2018-09-15 00:00:00) ")
  }
  val procTms = args(0)
  
  // parameters
  // val procTms = "2018-09-15 00:00:00"
  
  val priceAgeHist = 3600
    
  
  //SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
  val sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
  
  val procTmsUpperUnix = sdf.parse(procTms).getTime()
  val procTmsLowerUnix = procTmsUpperUnix - priceAgeHist * 24 * 3600 * 1000l //subtract n days  
  log.warn("Global Price Selection Timeframe: " + sdf.format(new Date(procTmsUpperUnix)) + " - " + sdf.format(new Date(procTmsLowerUnix)))

  
  
  val now = Calendar.getInstance().getTime()
  val nowTms = sdf.format(now)    
  
  val jdbcUsername = ConfigFactory.load().getString("conf.db.user")
  val jdbcPassword = ConfigFactory.load().getString("conf.db.password")
  val jdbcHostname = ConfigFactory.load().getString("conf.db.host")
  val jdbcPort = ConfigFactory.load().getString("conf.db.port")
  val jdbcDatabase = ConfigFactory.load().getString("conf.db.service")
  val jdbcUrl = s"jdbc:oracle:thin:@//${jdbcHostname}:${jdbcPort}/${jdbcDatabase}"    
    
  val connectionProperties = new Properties()
  connectionProperties.put("user", jdbcUsername)
  connectionProperties.put("password", jdbcPassword)

  log.warn("Using host: " + ConfigFactory.load().getString("conf.spark.master"));
  
  // spark session 
  val spark = SparkSession
    .builder()
    .appName("GoldenPriceTolerance1")   
    .master(ConfigFactory.load().getString("conf.spark.master"))
    .config("spark.files.overwrite",true)       
    .config("spark.sql.crossJoin.enabled", true)
    .config("spark.debug.maxToStringFields",5000)
    .config("spark.ui.showConsoleProgress", false)
    .config("spark.serializer", "org.apache.spark.serializer.KryoSerializer")
    .config("spark.executor.extraClassPath", "./") 
    .getOrCreate()   
    
  val sqlContext = spark.sqlContext
  import sqlContext.implicits._
    
  log.warn("Start Processing")
  
  val newOid = udf ( () => { 
    Oid.get
  })
  
  
  log.warn("Loading Historical Prices...")
  log.warn("Using SQL: " + ConfigFactory.load().getString("conf.app.pricesql"));
  // load historical prices from datastore
  val goldenPrices = spark.read.format("jdbc")
    .option("url", jdbcUrl)
    .option("user", s"${jdbcUsername}")
    .option("password", s"${jdbcPassword}")    
    .option("dbtable", ConfigFactory.load().getString("conf.app.pricesql"))
    .option("driver","oracle.jdbc.driver.OracleDriver")
    .option("fetchSize", "10000")
    .option("fetchsize", "10000")
     //.option("columnName", "INSTR_ID")
     //.lowerBound = 100000,
     //.upperBound = 400000,
     //.option("numPartitions", "10")
    .option("ignoreTrailingWhiteSpace",true)
    .load()
    //.cache()
    
  log.warn(s"Goldenprices being validated: ${goldenPrices.count}")    
  
  // load historical prices from datastore
  val prvi = spark.read.format("jdbc")
    .option("url", jdbcUrl)
    .option("user", s"${jdbcUsername}")
    .option("password", s"${jdbcPassword}")       
    .option("dbtable", ConfigFactory.load().getString("conf.app.prvisql")) //iWqa$>DoW1, AND PRVI_OID = '=WDOR00001'
    .option("driver","oracle.jdbc.driver.OracleDriver")
    .option("fetchSize", "10000")
    .option("ignoreTrailingWhiteSpace",true)
    .load()
    //.cache()    
  
  final case class PRVIRow(prvi_oid: String,
                           prc_curr_cde: String,
                           prc_qt_meth_typ: String,
                           prcng_meth_typ: String,
                           addnl_prc_qual_typ: String,
                           mkt_oid: String,
                           pped_oid: String, 
                           prc_typ: String,
                           prc_tol_upper_formula_txt: String,
                           prc_tol_lower_formula_txt: String,
                           bus_dy_cnt: Int)
  
  val set = prvi.select("PRVI_OID", "PRC_CURR_CDE", "PRC_QT_METH_TYP", "PRCNG_METH_TYP", "ADDNL_PRC_QUAL_TYP", "MKT_OID", "PPED_OID", "PRC_TYP", "PRC_TOL_UPPER_FORMULA_TXT", "PRC_TOL_LOWER_FORMULA_TXT", "BUS_DY_CNT").distinct().as[PRVIRow].collect

  
  log.warn(s"Price validation instructions (PRVI) being evaluated: ${set.size}")  
                     
  val joinDoubleMap = udf { values: Seq[Map[String,Double]] => values.flatten.toMap}
  val joinTimestampMap = udf { values: Seq[Map[String,Timestamp]] => values.flatten.toMap}  
  val joinTimestampDoubleMap = udf { values: Seq[Map[Timestamp,Double]] => values.flatten.toMap}
  val joinMapMap = udf { values: Seq[Map[String,Map[String,Double]]] => values.flatten.toMap}
      
  val goldenPriceSetKey = Array("HIST.INSTR_ID", "HIST.PRC_CURR_CDE", "HIST.PRC_QT_METH_TYP", "HIST.PRCNG_METH_TYP", "HIST.ADDNL_PRC_QUAL_TYP", "HIST.MKT_OID", "HIST.PPED_OID", 
                                "PRVI.PRVI_OID")

  val window = Window.partitionBy($"INSTR_ID", $"PRC_CURR_CDE", $"PRC_QT_METH_TYP", $"PRCNG_METH_TYP", $"ADDNL_PRC_QUAL_TYP", $"MKT_OID", $"PPED_OID")
                     .orderBy($"PRC_TYP", $"PRC_TMS".desc, $"ADJST_TMS".desc)  

  val window2 = Window.partitionBy($"INSTR_ID", $"PRC_CURR_CDE", $"PRC_QT_METH_TYP", $"PRCNG_METH_TYP", $"ADDNL_PRC_QUAL_TYP", $"MKT_OID", $"PPED_OID")
                      .orderBy($"UNIT_CPRC".desc)                       

                                
  val history = goldenPrices
                  .withColumn("PROC_TMS", to_timestamp(lit(procTms), "yyyy-MM-dd HH:mm:ss"))  
                  //.where($"PRC_TMS" <= $"PROC_TMS" && $"PRC_TMS" >= from_unixtime(unix_timestamp($"PRC_TMS").minus(priceAgeHist), "YYYY-MM-dd HH:mm:ss"))      
                  .where(to_timestamp($"PRC_TMS", "yyyy-MM-dd HH:mm:ss") <= $"PROC_TMS" && unix_timestamp($"PRC_TMS") >= unix_timestamp($"PROC_TMS").minus(priceAgeHist * 24 * 3600 * 1000l))                  
                  .withColumn("UNIT_CPRC", toDouble(goldenPrices("UNIT_CPRC")))
                  .withColumn("UNIT_CPRC_LEAD", lead("UNIT_CPRC", 1).over(window))
                  .withColumn("UNIT_CPRC_LAG", lag("UNIT_CPRC", 1).over(window))      
                  .withColumn("UNIT_CPRC_FIRST", first("UNIT_CPRC").over(window))   
                  //.withColumn("UNIT_CPRC_MAX", dense_rank.over(window2))
                  .withColumn("PRC_TYP", trim($"PRC_TYP"))
                  .alias("HIST")

  log.warn(s"Historical prices")  
  //history.show(50, false)
 

  set.foreach { case (row) => 
    log.warn(s"PRVI_OID: ${row.prvi_oid}") 
    val prviBatch = prvi.where($"PRVI_OID" === row.prvi_oid).alias("PRVI")
    //sprviBatch.show(50, false)
    
    val prviPriceAgeHist = row.bus_dy_cnt
    
    val prviProcTmsUpperUnix = sdf.parse(procTms).getTime()
    val prviProcTmsLowerUnix = procTmsUpperUnix - prviPriceAgeHist * 24 * 3600 * 1000l //subtract n days  
    log.warn("Instruction Price Selection Timeframe: " + sdf.format(new Date(prviProcTmsUpperUnix)) + " - " + sdf.format(new Date(prviProcTmsLowerUnix)))
    
    var instr_ids = prvi.select("INSTR_ID").collect().map(_(0)).toList
    //log.warn(s"List: ${instr_ids}")
    
    // Compile join criteria based on PRVI settings
    var joinCriteria =  Seq.empty ++ Seq("INSTR_ID") ++ 
                Seq("PRC_CURR_CDE".filter(_ => row.prc_curr_cde != null)).filter(_.nonEmpty) ++
                Seq("PRC_QT_METH_TYP".filter(_ => row.prc_qt_meth_typ != null)).filter(_.nonEmpty) ++
                Seq("PRCNG_METH_TYP".filter(_ => row.prcng_meth_typ != null)).filter(_.nonEmpty) ++
                Seq("ADDNL_PRC_QUAL_TYP".filter(_ => row.addnl_prc_qual_typ != null)).filter(_.nonEmpty) ++
                Seq("MKT_OID".filter(_ => row.mkt_oid != null)).filter(_.nonEmpty) ++
                Seq("PPED_OID".filter(_ => row.pped_oid != null)).filter(_.nonEmpty) ++
                Seq("PRC_TYP".filter(_ => row.prc_typ != null)).filter(_.nonEmpty)    
                
    //joinCriteria = Seq("INSTR_ID", "PRC_CURR_CDE", "PRC_QT_METH_TYP", "PRCNG_METH_TYP", "ADDNL_PRC_QUAL_TYP", "MKT_OID", "PPED_OID", "PRC_TYP")
    
    //withColumn("rn", row_number.over(window2)).where($"rn" === 1).drop("rn")
                  //df.withColumn("rn", row_number.over(w)).where($"rn" === 1).drop("rn")

                
    log.warn(s"Underlying Prices")
    var underlyingPrices = history.alias("HIST")          
                         .where(to_timestamp($"PRC_TMS", "yyyy-MM-dd HH:mm:ss") <= $"PROC_TMS" && unix_timestamp($"PRC_TMS") >= unix_timestamp($"PROC_TMS").minus(prviPriceAgeHist * 24 * 3600))                         
                         .join(prviBatch.alias("PRVI"), Seq("INSTR_ID")) 
                         .select(newOid().alias("PRTD_OID"),
                                 $"HIST.GPCS_OID",
                                 $"HIST.INSTR_ID",
                                 $"HIST.PRC_CURR_CDE", 
                                 $"HIST.PRC_QT_METH_TYP", 
                                 $"HIST.PRC_TYP", 
                                 $"HIST.PRCNG_METH_TYP", 
                                 $"HIST.ADDNL_PRC_QUAL_TYP", 
                                 $"HIST.MKT_OID", 
                                 $"HIST.PPED_OID",
                                 $"HIST.DATA_SRC_ID", 
                                 $"HIST.PRC_SRCE_TYP", 
                                 $"HIST.UNIT_CPRC",
                                 $"HIST.PRC_TMS",
                                 $"PRVI.PRVI_OID"
                          )

    underlyingPrices.show(50, false)  
    
    val y = underlyingPrices.columns.map((_, "")).toMap
    val underlyingPricesNull = underlyingPrices.na.fill(y)
  
    underlyingPricesNull.repartition(1).write.mode(SaveMode.Append).jdbc(jdbcUrl, "FT_T_PRTD", connectionProperties)                                 

                         
                
    log.warn(s"Join History and PRVI using: ${joinCriteria}")  
    var historyGrouped = history.alias("HIST")             
                         .where(to_timestamp($"PRC_TMS", "yyyy-MM-dd HH:mm:ss") <= $"PROC_TMS" && unix_timestamp($"PRC_TMS") >= unix_timestamp($"PROC_TMS").minus(prviPriceAgeHist * 24 * 3600))
                         .join(prviBatch.alias("PRVI"), joinCriteria) 
                         .groupBy("HIST.INSTR_ID", goldenPriceSetKey:_*)
                         .agg(
                           expr(row.prc_tol_upper_formula_txt).alias("UPPER_TOL_REL"),
                           expr(row.prc_tol_lower_formula_txt).alias("LOWER_TOL_REL"),
                           max($"UNIT_CPRC_FIRST").alias("UNIT_CPRC_FIRST"), // pass through 
                           count("*").alias("CNT")     
                         )
                         //.withColumn("rn", row_number.over(window2)).where($"rn" === 1).drop("rn")                               
                         .select(newOid().alias("PRTR_OID"),
                                 $"HIST.INSTR_ID".alias("INSTR_ID"),
                                 $"HIST.PRC_CURR_CDE", 
                                 $"HIST.PRC_QT_METH_TYP", 
                                 lit("").alias("PRC_TYP"), // no price type due to Goldenprices
                                 $"HIST.PRCNG_METH_TYP", 
                                 $"HIST.ADDNL_PRC_QUAL_TYP", 
                                 $"HIST.MKT_OID", 
                                 $"HIST.PPED_OID",
                                 lit("").alias("DATA_SRC_ID"), // no populated due to goldenprice 
                                 lit("").alias("PRC_SRCE_TYP"), // no populated due to goldenprice 
                                 $"PRVI.PRVI_OID".alias("PRVI_OID"),
                                 lit("").alias("DWDF_OID"), 
                                 $"UNIT_CPRC_FIRST".alias("REF_UNIT_CPRC"),
                                 $"UPPER_TOL_REL".alias("PRC_TOL_UPPER_OF_CPRC"), 
                                 $"LOWER_TOL_REL".alias("PRC_TOL_LOWER_OF_CPRC"),
                                 ($"UNIT_CPRC_FIRST"+$"UPPER_TOL_REL").alias("PRC_TOL_UPPER_CPRC"),
                                 ($"UNIT_CPRC_FIRST"-$"LOWER_TOL_REL").alias("PRC_TOL_LOWER_CPRC"),       
                                 //lit(row.prc_tol_upper_formula_txt).alias("UPPER_TOL_FORMULA"),
                                 //lit(row.prc_tol_lower_formula_txt).alias("LOWER_TOL_FORMULA"),
                                 to_timestamp(lit(procTms), "yyyy-MM-dd HH:mm:ss").alias("TOL_RANGE_EFF_TMS"),
                                 to_timestamp(lit(nowTms), "yyyy-MM-dd HH:mm:ss").alias("ADJST_TMS"),
                                 to_timestamp(lit(nowTms), "yyyy-MM-dd HH:mm:ss").alias("LAST_CHG_TMS"),
                                 lit("GoldenPriceTolerance1").alias("LAST_CHG_USR_ID")
                                 //$"CNT"
                         )
                         .cache()
    
    log.warn(s"Tolerances, Count=${historyGrouped.count}")  
    historyGrouped.show(50, false)  
    
    val m = historyGrouped.columns.map((_, "")).toMap
    val historyGroupedNull = historyGrouped.na.fill(m)
  
    historyGroupedNull.repartition(1).write.mode(SaveMode.Append).jdbc(jdbcUrl, "FT_T_PRTR", connectionProperties)    

  }  
  
  log.warn("Finished Processing")
}

