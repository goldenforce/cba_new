<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="RMDS" type="com.j2fe.connector.RequestType">
<com.j2fe.connector.RequestType id="0">
<dataSource id="1">
<id id="2">RMDS</id>
<requestTypes id="3" type="java.util.HashSet">
<item idref="0" type="com.j2fe.connector.RequestType"/>
</requestTypes>
</dataSource>
<dataTypes id="4" type="java.util.HashSet">
<item id="5" type="java.lang.String">MARKET_PRICE</item>
</dataTypes>
<externalIssueTypes id="6" type="java.util.HashSet"/>
<marketSector id="7" type="java.util.HashSet"/>
<messageType id="8">
<businessEntity>false</businessEntity>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>false</isVDDB>
<name id="9">RMDS</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<syncPublishing>false</syncPublishing>
</messageType>
<requestType id="10">RMDS</requestType>
</com.j2fe.connector.RequestType>
</businessobject>
</goldensource-package>
