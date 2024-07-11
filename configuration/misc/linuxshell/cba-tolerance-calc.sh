############################################
# below scripts to be parameterlized:
#  -- $SPARK_HOME to be used
#  -- $MASTER_URL
#  -- $SUBMITTED CLASS
#  -- $JAR
############################################

/opt/spark-2.2.1-bin-hadoop2.7/bin/spark-submit \
--master spark://n04fxd0l2089.s4.chp.cba:7077[2] \
--class com.thegoldensource.mds.batch.GoldenPriceTolerance1 \
--executor-memory 8g \
--executor-cores 2 \
/opt/spark-2.2.1-bin-hadoop2.7/jars/mds-batch-1.0-SNAPSHOT-jar-with-dependencies.jar $2