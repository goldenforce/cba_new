<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:include href="../includes/check.xslt"/>
    <xsl:param name="EarFileName"/>
    <xsl:param name="DeploymentName"/>
    <xsl:variable name="deployment" select="/GSServerApplication/Deployments/Deployment[@name=$DeploymentName]"/>
    <xsl:variable name="assembly" select="/GSServerApplication/Assembly"/>
    <xsl:variable name="jndi-prefix">
        <xsl:value-of select="$deployment/@domain"/>
    </xsl:variable>
    <xsl:template match="/">
        <xsl:call-template name="checkDeployment">
            <xsl:with-param name="assembly" select="current()"/>
            <xsl:with-param name="DeploymentName" select="$DeploymentName"/>
        </xsl:call-template>
        <ironjacamar>
  			<connection-definitions>
            	<xsl:apply-templates select="$deployment/Resources/*/*"/>
        	</connection-definitions>
        </ironjacamar>
    </xsl:template>
    <xsl:template match="LocalFilesystem">
            <connection-definition>
            <xsl:attribute name="class-name">com.j2fe.ra.fileSystem.MCF</xsl:attribute>
            <xsl:attribute name="jndi-name">java:jboss/<xsl:value-of select="$jndi-prefix"/>/adapters/<xsl:value-of select="@prefix"/><xsl:value-of select="@name"/></xsl:attribute>
            <config-property name="Name" type="java.lang.String">
                <xsl:value-of select="@name"/>
            </config-property>
            <config-property name="Protocol" type="java.lang.String">local</config-property>
            <config-property name="Properties" type="java.lang.String">WorkingDirectory=<xsl:value-of select="@workingDirectory"/></config-property>
            </connection-definition>
    </xsl:template>
    <xsl:template name="BaseFTP">
        <config-property name="Name" type="java.lang.String">
            <xsl:value-of select="@name"/>
        </config-property>
        <config-property name="Protocol" type="java.lang.String">ftp</config-property>
        <config-property name="Properties" type="java.lang.String">
            <xsl:if test="@workingDirectory">WorkingDirectory=<xsl:value-of select="@workingDirectory"/></xsl:if>
UserName=<xsl:value-of select="@username"/>
PassWord=<xsl:value-of select="@password"/>
ServerName=<xsl:value-of select="@server"/>
BinaryTransfer=<xsl:value-of select="@binaryTransfer"/>
PassiveFTPMode=<xsl:value-of select="@passiveFTPMode"/>
RetryCount=<xsl:value-of select="@retryCount"/>
TimeOut=<xsl:value-of select="@timeOut"/>
PortNumber=<xsl:value-of select="@port"/>
            <xsl:if test="@tmpDir">
TmpDir=<xsl:value-of select="@tmpDir"/></xsl:if>
            <xsl:if test="@loginSequence">
LoginSequence=<xsl:value-of select="@loginSequence"/></xsl:if>
            <xsl:if test="@keepDownloadedFiles">
KeepDownloadedFiles=<xsl:value-of select="@keepDownloadedFiles"/></xsl:if>
<xsl:if test="@proxyHost">
ProxyHost=<xsl:value-of select="@proxyHost" />\n</xsl:if>
			<xsl:if test="@proxyPort">
ProxyPort=<xsl:value-of select="@proxyPort" />\n</xsl:if>
        </config-property>
    </xsl:template>
    <xsl:template name="BaseSFTP">
        <config-property name="Name" type="java.lang.String">
            <xsl:value-of select="@name"/>
        </config-property>
        <config-property name="Protocol" type="java.lang.String">sftp</config-property>
        <config-property name="Properties" type="java.lang.String">
            <xsl:if test="@workingDirectory">WorkingDirectory=<xsl:value-of select="@workingDirectory"/></xsl:if>
UserName=<xsl:value-of select="@username"/>
PassWord=<xsl:value-of select="@password"/>
ServerName=<xsl:value-of select="@server"/>
KeyFile=<xsl:value-of select="@keyfile"/>
RetryCount=<xsl:value-of select="@retryCount"/>
TimeOut=<xsl:value-of select="@timeOut"/>
PortNumber=<xsl:value-of select="@port"/>
            <xsl:if test="@tmpDir">
TmpDir=<xsl:value-of select="@tmpDir"/></xsl:if>
            <xsl:if test="@keepDownloadedFiles">
KeepDownloadedFiles=<xsl:value-of select="@keepDownloadedFiles"/></xsl:if>
<xsl:if test="@proxyHost">
ProxyHost=<xsl:value-of select="@proxyHost" />\n</xsl:if>
			<xsl:if test="@proxyPort">
ProxyPort=<xsl:value-of select="@proxyPort" />\n</xsl:if>
        </config-property>
    </xsl:template>    
    <xsl:template match="FTPFilesystem">
        <connection-definition>
            <xsl:attribute name="class-name">com.j2fe.ra.fileSystem.MCF</xsl:attribute>
            <xsl:attribute name="jndi-name">java:jboss/<xsl:value-of select="$jndi-prefix"/>/adapters/<xsl:value-of select="@prefix"/><xsl:value-of select="@name"/></xsl:attribute>
            <xsl:call-template name="BaseFTP"/>
            <xsl:variable name="assemblyFS" select="/GSServerApplication/Assembly/Resources/Filesystems/FTPFilesystem[@name=current()/@name]"/>
            <xsl:if test="$assemblyFS/customFilePreparation/@name">
            	<config-property name="StreamPreparation" type="java.lang.String"><xsl:value-of select="$assemblyFS/customFilePreparation/@name"/></config-property>
            </xsl:if>
        </connection-definition>
    </xsl:template>
    <xsl:template match="SFTPFilesystem">
        <connection-definition>
            <xsl:attribute name="class-name">com.j2fe.ra.fileSystem.MCF</xsl:attribute>
            <xsl:attribute name="jndi-name">java:jboss/<xsl:value-of select="$jndi-prefix"/>/adapters/<xsl:value-of select="@prefix"/><xsl:value-of select="@name"/></xsl:attribute>
            <xsl:call-template name="BaseSFTP"/>
            <xsl:variable name="assemblyFS" select="/GSServerApplication/Assembly/Resources/Filesystems/SFTPFilesystem[@name=current()/@name]"/>
            <xsl:if test="$assemblyFS/customFilePreparation/@name">
            	<config-property name="StreamPreparation" type="java.lang.String"><xsl:value-of select="$assemblyFS/customFilePreparation/@name"/></config-property>
            </xsl:if>
        </connection-definition>
    </xsl:template>
    <xsl:template match="BloombergFTPFilesystem">
        <connection-definition>
            <xsl:attribute name="class-name">com.j2fe.ra.fileSystem.MCF</xsl:attribute>
            <xsl:attribute name="jndi-name">java:jboss/<xsl:value-of select="$jndi-prefix"/>/adapters/<xsl:value-of select="@prefix"/><xsl:value-of select="@name"/></xsl:attribute>
            <xsl:call-template name="BaseFTP"/>
            <xsl:if test="@decryptionKey">
                <config-property name="FileMetaData" type="java.lang.String">BloombergDecryptionKey=<xsl:value-of select="@decryptionKey"/>
UnencryptedFiles=<xsl:value-of select="@unencrypted"/>
                    </config-property>
            </xsl:if>
            <xsl:variable name="assemblyFS" select="/GSServerApplication/Assembly/Resources/Filesystems/BloombergFTPFilesystem[@name=current()/@name]"/>
            <xsl:choose>
                <xsl:when test="$assemblyFS/@bloombergFilePreparationMethod='Backoffice'">
                    <config-property name="StreamPreparation" type="java.lang.String">com/j2fe/feeds/bloomberg/BB_BO_FilePreparations.xml</config-property>
                </xsl:when>
                <xsl:when test="$assemblyFS/@bloombergFilePreparationMethod='Per Security'">
                    <xsl:if test="@decryptionKey">
                    	<config-property name="StreamPreparation" type="java.lang.String">com/j2fe/feeds/bloomberg/BB_PS_FilePreparations.xml</config-property>
                    </xsl:if>
                </xsl:when>
                <xsl:when test="$assemblyFS/@bloombergFilePreparationMethod='Per Security - Zipped'">
                     <xsl:if test="@decryptionKey">
                    	<config-property name="StreamPreparation" type="java.lang.String">com/j2fe/feeds/bloomberg/BB_PS_FilePreparations.xml</config-property>
                    </xsl:if>
                </xsl:when>
            </xsl:choose>
        </connection-definition>
    </xsl:template>
    <xsl:template match="BloombergSFTPFilesystem">
        <connection-definition>
            <xsl:attribute name="class-name">com.j2fe.ra.fileSystem.MCF</xsl:attribute>
            <xsl:attribute name="jndi-name">java:jboss/<xsl:value-of select="$jndi-prefix"/>/adapters/<xsl:value-of select="@prefix"/><xsl:value-of select="@name"/></xsl:attribute>
            <xsl:call-template name="BaseSFTP"/>
            <xsl:if test="@decryptionKey">
                <config-property name="FileMetaData" type="java.lang.String">BloombergDecryptionKey=<xsl:value-of select="@decryptionKey"/>
UnencryptedFiles=<xsl:value-of select="@unencrypted"/>
                    </config-property>
            </xsl:if>
            <xsl:variable name="assemblyFS" select="/GSServerApplication/Assembly/Resources/Filesystems/BloombergSFTPFilesystem[@name=current()/@name]"/>
            <xsl:choose>
                <xsl:when test="$assemblyFS/@bloombergFilePreparationMethod='BackofficeSFTP'">
                    <config-property name="StreamPreparation" type="java.lang.String">com/j2fe/feeds/bloomberg/BB_BO_FilePreparations.xml</config-property>
                </xsl:when>
                <xsl:when test="$assemblyFS/@bloombergFilePreparationMethod='Per SecuritySFTP'">
				 <xsl:if test="@decryptionKey">
                    <config-property name="StreamPreparation" type="java.lang.String">com/j2fe/feeds/bloomberg/BB_PS_FilePreparations.xml</config-property>
				 </xsl:if>	
                </xsl:when>
                <xsl:when test="$assemblyFS/@bloombergFilePreparationMethod='Per SecuritySFTP - Zipped'">
				 <xsl:if test="@decryptionKey">
                    <config-property name="StreamPreparation" type="java.lang.String">com/j2fe/feeds/bloomberg/BB_PS_FilePreparations.xml</config-property>
				 </xsl:if>	
                </xsl:when>
            </xsl:choose>
        </connection-definition>
    </xsl:template>    
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c)1998-2004. Sonic Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="..\..\examples\DevelopmentStandard.xml" htmlbaseurl="" outputurl="" processortype="internal" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext=""/></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition></MapperMetaTag>
</metaInformation>
-->