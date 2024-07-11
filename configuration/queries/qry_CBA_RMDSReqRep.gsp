<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.7.1.15">
<package-comment/>
<businessobject displayString="qry_CBA_RMDSReqRep" type="com.j2fe.translation.template.QueryDefinition">
<com.j2fe.translation.template.QueryDefinition id="0">
<name id="1">qry_CBA_RMDSReqRep</name>
<parameters id="2" type="java.util.ArrayList">
<item id="3" type="com.j2fe.translation.template.QueryParameter">
<description id="4">group name</description>
<name id="5">p_grp_nme</name>
<type>12</type>
</item>
<item id="6" type="com.j2fe.translation.template.QueryParameter">
<description id="7">request type</description>
<name id="8">p_reqtyp</name>
<type>12</type>
</item>
<item id="9" type="com.j2fe.translation.template.QueryParameter">
<description id="10">region</description>
<name id="11">p_region</name>
<type>12</type>
</item>
</parameters>
<text id="12">select cba_rmdsreqrep(?, ?, ?) from dual&#13;
--select cba_rmdsreqrep_mtgd(?, ?, ?) from dual</text>
</com.j2fe.translation.template.QueryDefinition>
</businessobject>
</goldensource-package>
