<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="ReutersDSS_INTRADAY_CBA_MaturityDate" type="com.j2fe.processing.BusinessFeed">
<com.j2fe.processing.BusinessFeed id="0">
<dataSource id="1">
<businessFeeds id="2" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.BusinessFeed"/>
</businessFeeds>
<id id="3">REUTERS</id>
</dataSource>
<feedDefinition id="4">db://resource/xml/feeds/reuters/select.xml</feedDefinition>
<fileDefinitions id="5" type="java.util.ArrayList">
<item id="6" type="com.j2fe.processing.FileDefinition">
<file id="7">CBA_Reuters_Intra_Maturitydate.csv.gz</file>
<group id="8">1</group>
<messageType id="9">
<applicationName id="10">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="11">false</createMarketRealTimeInd>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="12">db://resource/mapping/Cba/CBA_ReutersDss_Maturity.mdx</mappingResource>
<metaData id="13" type="java.util.HashMap"/>
<name id="14">ReutersDSS_INTRADAY_CBA_MaturityDate</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="15" type="java.util.ArrayList"/>
<publishingEvents id="16" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="17">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>ERROR</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>WARNING</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</messageType>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="18" type="java.util.HashSet">
<item idref="9" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="19">ReutersDSS_INTRADAY_CBA_MaturityDate</name>
</com.j2fe.processing.BusinessFeed>
</businessobject>
<businessobject displayString="ReutersDSS_INTRADAY_CBA_MaturityDate" type="com.j2fe.connector.RequestType">
<com.j2fe.connector.RequestType id="0">
<dataSource id="1">
<id id="2">REUTERS</id>
<requestTypes id="3" type="java.util.HashSet">
<item idref="0" type="com.j2fe.connector.RequestType"/>
</requestTypes>
</dataSource>
<dataTypes id="4" type="java.util.HashSet">
<item id="5" type="java.lang.String">BASIC</item>
</dataTypes>
<externalIssueTypes id="6" type="java.util.HashSet"/>
<filePattern id="7">CBA_Reuters_EOD_Maturitydate.csv.gz</filePattern>
<marketSector id="8" type="java.util.HashSet"/>
<messageType id="9">
<businessEntity>false</businessEntity>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<name id="10">ReutersDSS_INTRADAY_CBA_MaturityDate</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<syncPublishing>false</syncPublishing>
</messageType>
<requestType id="11">ReutersDSS_INTRADAY_CBA_MaturityDate</requestType>
<templateURI id="12">db://resource/xslt/request/reuters/IntradayPricing.xslt</templateURI>
</com.j2fe.connector.RequestType>
</businessobject>
</goldensource-package>
