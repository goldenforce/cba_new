<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="db://resource/xslt/request/bloomberg/BBCurrencyImport.xslt"/>
  <xsl:param name="Firmname" select="'Please specify the firmname in the configuration of the service'"></xsl:param>
  <xsl:output method="text"/>
  <xsl:template match="/VendorRequest">START-OF-FILE
FIRMNAME=<xsl:value-of select="$Firmname"/>
DATEFORMAT=yyyymmdd
<!-- add start -->
USERNUMBER=15283536
SN=814788
WS=0
<!-- add end -->
PROGRAMNAME=getdata<xsl:if test="/VendorRequest/Request/Param[@Key='DATERANGE']">
DATERANGE=<xsl:value-of select="/VendorRequest/Request/Param[@Key='DATERANGE']"/></xsl:if>
<xsl:if test="/VendorRequest/Request/Param[@Key='ACTIONS']">
ACTIONS=<xsl:value-of select="/VendorRequest/Request/Param[@Key='ACTIONS']"/></xsl:if>
<xsl:if test="/VendorRequest/Request/Param[@Key='ACTIONS_DATE']">
ACTIONS_DATE=<xsl:value-of select="/VendorRequest/Request/Param[@Key='ACTIONS_DATE']"/></xsl:if>
<!-- 
<xsl:if test="/VendorRequest/ProgramFlag/text()">
PROGRAMFLAG=<xsl:value-of select="/VendorRequest/ProgramFlag/text()"/></xsl:if>
 -->
PROGRAMFLAG=daily
<xsl:if test="/VendorRequest/Request/Param[@Key='Header_YELLOWKEY']">
YELLOWKEY=<xsl:value-of select="/VendorRequest/Request/Param[@Key='Header_YELLOWKEY']"/></xsl:if>
<!-- 
<xsl:if test="/VendorRequest/DiffFlag/text()">
DIFFFLAG=<xsl:value-of select="/VendorRequest/DiffFlag/text()"/></xsl:if>
 -->
<xsl:if test="/VendorRequest/RunDate/text()">
RUNDATE=<xsl:value-of select="/VendorRequest/RunDate/text()"/></xsl:if>
<xsl:if test="/VendorRequest/Time/text()">
TIME=<xsl:value-of select="/VendorRequest/Time/text()"/></xsl:if>
<xsl:if test="/VendorRequest/ReplyFileName/text()">
REPLYFILENAME=<xsl:value-of select="/VendorRequest/ReplyFileName/text()"/></xsl:if>
<xsl:call-template name="extra-header-fields"/>

START-OF-FIELDS
#BBRequestReplyFile
NAME
PX_BID
PX_MID
PX_ASK
CRNCY
PX_OPEN
PX_HIGH
PX_LOW
SECURITY_TYP
ID_BB_UNIQUE
ID_BB_COMPANY
ID_BB_SECURITY
TICKER
EXCH_CODE
ID_ISIN
MARKET_SECTOR_DES
PX_LAST
LAST_UPDATE
LAST_UPDATE_DT
PRICING_SOURCE
COUNTRY_ISO
INVERSE_QUOTED
QUOTE_FACTOR
FEED_SOURCE
ID_BB_SEC_NUM_DES
PX_SETTLE
PX_SETTLE_LAST_DT
PX_DIRTY_BID
PX_DIRTY_MID
PX_DISC_BID
PX_YEST_CLOSE
PX_YEST_DT
TENOR
SECURITY_TENOR_ONE
SECURITY_TENOR_TWO
BASE_CRNCY
MATURITY
OPT_EXPIRE_DT
HIST_CALL_IMP_VOL
HIST_PUT_IMP_VOL
LAST_TRADEABLE_DT
ID_BB_GLOBAL<xsl:call-template name="extra-fields"/>
END-OF-FIELDS

START-OF-DATA
<xsl:apply-templates select="Request"/>END-OF-DATA
END-OF-FILE</xsl:template>
  <xsl:template match="Request">#Identifier=<xsl:value-of select="Identifier"/>|<xsl:for-each select="OID"><xsl:value-of select="text()"/><xsl:if test="position()!=last()"><xsl:text>,</xsl:text></xsl:if></xsl:for-each>|<xsl:for-each select="MSGTYP"><xsl:value-of select="text()"/><xsl:if test="position()!=last()"><xsl:text>,</xsl:text></xsl:if></xsl:for-each><xsl:text>
</xsl:text>
  <xsl:value-of select="Identifier"/><xsl:text> </xsl:text>
  <xsl:if test="Param[@Key='PricingSource']"><xsl:value-of select="Param[@Key='PricingSource']"/><xsl:text> </xsl:text></xsl:if>
  <xsl:if test="Param[@Key='Header_YELLOWKEY']"><xsl:value-of select="Param[@Key='Header_YELLOWKEY']"/><xsl:text> </xsl:text></xsl:if>
  <xsl:if test="Param[@Key='Exchange']"><xsl:value-of select="Param[@Key='Exchange']"/><xsl:text> </xsl:text></xsl:if>
  <xsl:if test="Param[@Key='MarketSector']"><xsl:value-of select="Param[@Key='MarketSector']"/><xsl:text> </xsl:text></xsl:if>| <xsl:value-of select="IDContext"/><xsl:text>
</xsl:text></xsl:template>
</xsl:stylesheet><!--input type="text" -->