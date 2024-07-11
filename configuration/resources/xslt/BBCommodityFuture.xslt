<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">	
	<xsl:param name="Firmname" select="'Please specify the firmname in the configuration of the service'"></xsl:param>
	<xsl:output method="text"/>
	<xsl:template match="/VendorRequest">START-OF-FILE
FIRMNAME=<xsl:value-of select="$Firmname"/>
CLOSINGVALUES=YES
SECID=TICKER
SECMASTER=YES
DERIVED=YES
DATEFORMAT=yyyymmdd
PROGRAMNAME=getdata
PROGRAMFLAG=adhoc<xsl:if test="/VendorRequest/Request/Param[@Key='DATERANGE']">
DATERANGE=<xsl:value-of select="/VendorRequest/Request/Param[@Key='DATERANGE']"/></xsl:if>
<xsl:if test="/VendorRequest/Request/Param[@Key='ACTIONS']">
ACTIONS=<xsl:value-of select="/VendorRequest/Request/Param[@Key='ACTIONS']"/></xsl:if>
<xsl:if test="/VendorRequest/Request/Param[@Key='ACTIONS_DATE']">n
ACTIONS_DATE=<xsl:value-of select="/VendorRequest/Request/Param[@Key='ACTIONS_DATE']"/></xsl:if>


START-OF-FIELDS<xsl:if test="/VendorRequest/Request/RequestType='CBA_ReqRepFutRoll'">
<!--reference fields -->
#BBRequestReplyFile
NAME
SECURITY_TYP
ID_BB_UNIQUE
ID_BB_COMPANY
ID_BB_SECURITY
TICKER
#Futures fiels
FUT_CHAIN
BH_FUT_CHAIN
ID_BB_GLOBAL
</xsl:if>
END-OF-FIELDS

START-OF-DATA
<xsl:apply-templates select="Request"/>END-OF-DATA
END-OF-FILE</xsl:template>
	<xsl:template match="Request">
	<xsl:value-of select="Identifier"/><xsl:text> </xsl:text>
	<xsl:if test="Param[@Key='Exchange']"><xsl:value-of select="Param[@Key='Exchange']"/><xsl:text> </xsl:text></xsl:if>
	<xsl:if test="Param[@Key='MarketSector']"><xsl:value-of select="Param[@Key='MarketSector']"/><xsl:text> </xsl:text></xsl:if>|<xsl:value-of select="IDContext"/><xsl:text>
</xsl:text></xsl:template>
</xsl:stylesheet>