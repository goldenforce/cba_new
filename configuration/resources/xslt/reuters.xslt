<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.reuters.com/Datascope/ReportRequest.xsd">
  <xsl:param name="ReportTemplateName" select="'Please provide a Report Template Name'"/>
  <xsl:param name="InputListName" select="'Please provide an Input List Name'"/>
  <xsl:param name="ScheduleName" select="'Please provide a Schedule Name'"/>
  <xsl:param name="OutputFileName" select="'Please provide an Output File Name'"/>
  <xsl:param name="Hours" select="'Please provide a Hours'"/>
  <xsl:param name="Minutes" select="'Please provide a Minutes'"/>
  <xsl:output method="xml"/>
  <xsl:template match="/VendorRequest">
    <ReportRequest>
      <InputList>
        <InputListAction>Replace</InputListAction>
        <Name>
          <xsl:value-of select="$InputListName"/>
        </Name>
        <xsl:apply-templates select="Request"/>
      </InputList>
      <Schedule>
        <ScheduleAction>Replace</ScheduleAction>
        <Name>
          <xsl:value-of select="$ScheduleName"/>
        </Name>
        <IntradayPricingSchedule>
          <InputListName>
            <xsl:value-of select="$InputListName"/>
          </InputListName>
          <ReportTemplateName>
            <xsl:value-of select="$ReportTemplateName"/>
          </ReportTemplateName>
          <OutputFileName>
            <xsl:value-of select="$OutputFileName"/>
          </OutputFileName>
          <ScheduleTimezone>GMT Standard Time</ScheduleTimezone>
		  <ScheduleWeekly>
            <DayOfWeek>Monday</DayOfWeek>
            <DayOfWeek>Tuesday</DayOfWeek>
            <DayOfWeek>Wednesday</DayOfWeek>
            <DayOfWeek>Thursday</DayOfWeek>
            <DayOfWeek>Friday</DayOfWeek>
            <Type>LU</Type>
          </ScheduleWeekly>
          <ScheduleTime>
            <Hour>
            <xsl:value-of select="$Hours"/>
            </Hour>
            <Minute>
              <xsl:value-of select="$Minutes"/>
            </Minute>
          </ScheduleTime>
        </IntradayPricingSchedule>
      </Schedule>
    </ReportRequest>
  </xsl:template>
  <xsl:template match="Request">
    <Instrument>
      <IdentifierType>
        <xsl:value-of select="IDContext"/>
      </IdentifierType>
      <Identifier>
        <xsl:value-of select="Identifier"/>
      </Identifier>
      <UserDefinedIdentifier>
        <xsl:value-of select="OID"/>
      </UserDefinedIdentifier>
      <xsl:if test="Param[@Key='Exchange']">
        <Exchange>
          <xsl:value-of select="Param[@Key='Exchange']"/>
        </Exchange>
      </xsl:if>
    </Instrument>
  </xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c)1998-2002 eXcelon Corp.
<metaInformation>
<scenarios/><MapperInfo srcSchemaPath="" srcSchemaRoot="" srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
</metaInformation>
-->