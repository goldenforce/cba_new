<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.16">
<package-comment/>
<businessobject displayString="REUTERS" type="com.j2fe.processing.BusinessFeed">
<com.j2fe.processing.BusinessFeed id="0">
<dataSource id="1">
<businessFeeds id="2" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.BusinessFeed"/>
</businessFeeds>
<id id="3">REUTERS</id>
</dataSource>
<feedDefinition id="4">db://resource/xml/feeds/rsu/RSUDSSLineByLine.xml</feedDefinition>
<fileDefinitions id="5" type="java.util.ArrayList">
<item id="6" type="com.j2fe.processing.FileDefinition">
<file id="7">*</file>
<group id="8">0</group>
<messageType id="9">
<applicationName id="10">CUSTOMERANDCTPTY</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="11">false</createMarketRealTimeInd>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="12">db://resource/mapping/Cba/CBA_ReutersDSS_Intraday_Pricing.mdx</mappingResource>
<metaData id="13" type="java.util.HashMap">
<entry>
<key id="14" type="java.lang.String">STATUS</key>
<value id="15" type="java.lang.String">UNKNOWN</value>
</entry>
</metaData>
<name id="16">ReutersDssPrices</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="17" type="java.util.ArrayList"/>
<publishingEvents id="18" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="19">
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
<messageTypes id="20" type="java.util.HashSet">
<item id="21" type="com.j2fe.processing.MessageType">
<applicationName id="22">CUSTOMERANDCTPTY</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="23">db://resource/mapping/rsu/dss/Pricing_DSS.mdx</mappingResource>
<metaData id="24" type="java.util.HashMap">
<entry>
<key id="25" type="java.lang.String">STATUS</key>
<value id="26" type="java.lang.String">PARTIAL</value>
</entry>
</metaData>
<name id="27">ReutersDssPrices_Schedule_Partial</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="28" type="java.util.ArrayList"/>
<publishingEvents id="29" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="30">
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
</item>
<item idref="9" type="com.j2fe.processing.MessageType"/>
<item id="31" type="com.j2fe.processing.MessageType">
<applicationName id="32">CUSTOMERANDCTPTY</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="33">db://resource/mapping/rsu/dss/Pricing_DSS.mdx</mappingResource>
<metaData id="34" type="java.util.HashMap">
<entry>
<key id="35" type="java.lang.String">STATUS</key>
<value id="36" type="java.lang.String">RECEIVED</value>
</entry>
</metaData>
<name id="37">ReutersDssPrices_Schedule_Full</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="38" type="java.util.ArrayList"/>
<publishingEvents id="39" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="40">
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
</item>
<item id="41" type="com.j2fe.processing.MessageType">
<applicationName id="42">CUSTOMERANDCTPTY</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="11"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="43">db://resource/mapping/Cba/CBA_ReutersDSS_Intraday_Pricing.mdx</mappingResource>
<metaData id="44" type="java.util.HashMap"/>
<name id="45">ReutersDssPricesEOD</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="46" type="java.util.ArrayList"/>
<publishingEvents id="47" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="48">
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
</item>
</messageTypes>
<name id="49">REUTERS</name>
</com.j2fe.processing.BusinessFeed>
</businessobject>
<businessobject displayString="DssPrices" type="com.j2fe.connector.RequestType">
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
<marketSector id="7" type="java.util.HashSet"/>
<messageType id="8">
<businessEntity>false</businessEntity>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<name id="9">ReutersDssPrices</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<syncPublishing>false</syncPublishing>
</messageType>
<requestType id="10">DssPrices</requestType>
</com.j2fe.connector.RequestType>
</businessobject>
</goldensource-package>
