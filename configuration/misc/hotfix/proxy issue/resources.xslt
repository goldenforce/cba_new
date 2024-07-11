<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-public="-//JBoss//DTD JBOSS JCA Config 1.5//EN" doctype-system="http://www.jboss.org/j2ee/dtd/jboss-ds_1_5.dtd"/>
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
        <connection-factories>
            <xsl:apply-templates select="$deployment/Resources/*/*"/>
        </connection-factories>
    </xsl:template>
    <xsl:template match="LocalFilesystem">
        <no-tx-connection-factory>
            <xsl:call-template name="BaseAdapter"/>
            <rar-name><xsl:value-of select="$EarFileName"/>#goldensource.filesystem.rar</rar-name>
            <connection-definition>javax.resource.cci.ConnectionFactory</connection-definition>
            <config-property name="Name" type="java.lang.String">
                <xsl:value-of select="@name"/>
            </config-property>
            <config-property name="Protocol" type="java.lang.String">local</config-property>
            <config-property name="Properties" type="java.lang.String">WorkingDirectory=<xsl:value-of select="@workingDirectory"/></config-property>
        </no-tx-connection-factory>
    </xsl:template>
    <xsl:template name="BaseAdapter">
        <jndi-name><xsl:value-of select="$jndi-prefix"/>/adapters/<xsl:value-of select="@prefix"/><xsl:value-of select="@name"/></jndi-name>
    </xsl:template>
    <xsl:template name="BaseFTP">
        <xsl:call-template name="BaseAdapter"/>
        <rar-name><xsl:value-of select="$EarFileName"/>#goldensource.filesystem.rar</rar-name>
        <connection-definition>javax.resource.cci.ConnectionFactory</connection-definition>
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
        <xsl:call-template name="BaseAdapter"/>
        <rar-name><xsl:value-of select="$EarFileName"/>#goldensource.filesystem.rar</rar-name>
        <connection-definition>javax.resource.cci.ConnectionFactory</connection-definition>
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
        <no-tx-connection-factory>
            <xsl:call-template name="BaseFTP"/>
            <xsl:variable name="assemblyFS" select="/GSServerApplication/Assembly/Resources/Filesystems/FTPFilesystem[@name=current()/@name]"/>
            <xsl:if test="$assemblyFS/customFilePreparation/@name">
            	<config-property name="StreamPreparation" type="java.lang.String"><xsl:value-of select="$assemblyFS/customFilePreparation/@name"/></config-property>
            </xsl:if>
        </no-tx-connection-factory>
    </xsl:template>
    <xsl:template match="SFTPFilesystem">
        <no-tx-connection-factory>
            <xsl:call-template name="BaseSFTP"/>
            <xsl:variable name="assemblyFS" select="/GSServerApplication/Assembly/Resources/Filesystems/SFTPFilesystem[@name=current()/@name]"/>
            <xsl:if test="$assemblyFS/customFilePreparation/@name">
            	<config-property name="StreamPreparation" type="java.lang.String"><xsl:value-of select="$assemblyFS/customFilePreparation/@name"/></config-property>
            </xsl:if>
        </no-tx-connection-factory>
    </xsl:template>
    <xsl:template match="BloombergFTPFilesystem">
        <no-tx-connection-factory>
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
        </no-tx-connection-factory>
    </xsl:template>
    <xsl:template match="BloombergSFTPFilesystem">
        <no-tx-connection-factory>
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
        </no-tx-connection-factory>
    </xsl:template>
    <xsl:template name="NativeContainer">
        <config-property name="Name" type="java.lang.String">
            <xsl:value-of select="@name"/>
        </config-property>
        <config-property name="LogDirectory" type="java.lang.String">
            <xsl:choose>
                <xsl:when test="@logDirectory">
                    <xsl:value-of select="@logDirectory"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$deployment/Logging/@directory"/>
                </xsl:otherwise>
            </xsl:choose>
        </config-property>
        <xsl:variable name="acontainer" select="$assembly/Resources/*[name(.)=concat(name(current()),'s')]/*[name(.)=name(current()) and @name = current()/@name]"/>
        <config-property name="TraceLevel" type="java.lang.Integer">
            <xsl:choose>
	            <xsl:when test="@traceLevel">
	                <xsl:value-of select="@traceLevel"/>
	            </xsl:when>
	            <xsl:otherwise>
	                <xsl:value-of select="$acontainer/@initialTraceLevel"/>
	            </xsl:otherwise>
        	</xsl:choose>
        </config-property>
        <config-property name="Timing" type="java.lang.Boolean">
	        <xsl:value-of select="@timing"/>
        </config-property>
        <config-property name="LogLevel" type="java.lang.String">
            <xsl:choose>
            <xsl:when test="@logLevel">
                <xsl:value-of select="@logLevel"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$acontainer/@initialLogLevel"/>
            </xsl:otherwise>
        </xsl:choose>
        </config-property>
        <xsl:variable name="installation" select="../../Installations/Installation[@name=current()/@installation]"></xsl:variable>
        <config-property name="Environment" type="java.lang.String">
            <xsl:choose>
                <xsl:when test="$installation/@databaseType = 'Oracle'">
ORACLE_HOME=<xsl:value-of select="$installation/@databaseHome"/>
LD_LIBRARY_PATH=<xsl:if test="$installation/@additionalBinaryPath"><xsl:value-of select="$installation/@additionalBinaryPath"/>:</xsl:if><xsl:value-of select="$installation/@goldenSourceBaseDirectory"/>/BaseComponents/lib:<xsl:value-of select="$installation/@goldenSourceBaseDirectory"/>/ReferenceEngine/lib:<xsl:value-of select="$installation/@goldenSourceBaseDirectory"/>/PositionsEngine/lib:<xsl:value-of select="$installation/@databaseHome"/>/network/lib:<xsl:value-of select="$installation/@databaseHome"/>/lib32:<xsl:value-of select="$installation/@databaseHome"/>/lib:/usr/lib
<xsl:if test="@NLSLang">NLS_LANG=<xsl:value-of select="@NLSLang"/></xsl:if>
                </xsl:when>
                <xsl:when test="$installation/@databaseType = 'DB2'">
                    <xsl:choose>
                        <xsl:when test="not($installation/@db2Instance) and current()[name() != 'MSFTranslator']">
                            <xsl:message terminate="yes">DB2 Instance is not configured. This is required in order to start a DB2 Engine</xsl:message>
                        </xsl:when>
                        <xsl:when test="$installation/@db2Instance">DB2INSTANCE=<xsl:value-of select="$installation/@db2Instance"/></xsl:when>
                    </xsl:choose>
DB2DIR=<xsl:value-of select="$installation/@databaseHome"/>
LD_LIBRARY_PATH=<xsl:if test="$installation/@additionalBinaryPath"><xsl:value-of select="$installation/@additionalBinaryPath"/>:</xsl:if><xsl:value-of select="$installation/@goldenSourceBaseDirectory"/>/BaseComponents/lib:<xsl:value-of select="$installation/@goldenSourceBaseDirectory"/>/ReferenceEngine/lib:<xsl:value-of select="$installation/@goldenSourceBaseDirectory"/>/PositionsEngine/lib:<xsl:value-of select="$installation/@databaseHome"/>/lib:/usr/lib
                </xsl:when>
            </xsl:choose>
LC_ALL=en_US.UTF-8
            <xsl:for-each select="EnvironmentVariables/property">
<xsl:value-of select="@name"/>=<xsl:value-of select="@value"/><xsl:text>&#xA;</xsl:text>
            </xsl:for-each>
            <xsl:for-each select="$acontainer/EnvironmentVariables/property">
                <xsl:if test="not(@name = EnvironmentVariables/property/@name)">
<xsl:value-of select="@name"/>=<xsl:value-of select="@value"/><xsl:text>&#xA;</xsl:text>
                </xsl:if>
            </xsl:for-each>
        </config-property>
        <config-property name="AdditionalJVMParameters" type="java.lang.String">
            <xsl:for-each select="$acontainer/JVMParameter">
<xsl:value-of select="text()"/><xsl:text>&#xA;</xsl:text>
            </xsl:for-each>
            <xsl:for-each select="JVMParameter">
<xsl:value-of select="text()"/><xsl:text>&#xA;</xsl:text>
            </xsl:for-each>
        </config-property>
        <config-property name="SystemProperties" type="java.lang.String">
            <xsl:for-each select="SystemProperties/property">
<xsl:value-of select="@name"/>=<xsl:value-of select="@value"/><xsl:text>&#xA;</xsl:text>
            </xsl:for-each>
            <xsl:for-each select="$acontainer/SystemProperties/property">
                <xsl:if test="not(@name =SystemProperties/property/@name)">
<xsl:value-of select="@name"/>=<xsl:value-of select="@value"/><xsl:text>&#xA;</xsl:text>
                </xsl:if>
            </xsl:for-each>
java.rmi.server.hostname=127.0.0.1
java.rmi.server.useCodebaseOnly=true
            java.library.path=<xsl:if test="$installation/@additionalBinaryPath"><xsl:value-of select="$installation/@additionalBinaryPath"/>:</xsl:if><xsl:value-of select="$installation/@goldenSourceBaseDirectory"/>/BaseComponents/lib:<xsl:value-of select="$installation/@goldenSourceBaseDirectory"/>/ReferenceEngine/lib:<xsl:value-of select="$installation/@goldenSourceBaseDirectory"/>/PositionsEngine/lib
        </config-property>
        <config-property name="MaxParallelConnecting" type="java.lang.Integer"><xsl:value-of select="PoolSettings/@maxParallelStart"/></config-property>
        <min-pool-size>
            <xsl:value-of select="PoolSettings/@minSize"/>
        </min-pool-size>
        <max-pool-size>
            <xsl:value-of select="PoolSettings/@maxSize"/>
        </max-pool-size>
        <blocking-timeout-millis>
            <xsl:value-of select="PoolSettings/@timeout * 1000"/>
        </blocking-timeout-millis>
        <xsl:if test="@transactionTimeout">
            <xa-resource-timeout>
                <xsl:value-of select="@transactionTimeout"/>
            </xa-resource-timeout>
        </xsl:if>
    </xsl:template>
    <xsl:template match="MSFTranslator">
        <no-tx-connection-factory>
            <xsl:call-template name="BaseAdapter"/>
            <rar-name><xsl:value-of select="$EarFileName"/>#goldensource.translator.rar</rar-name>
            <connection-definition>javax.resource.cci.ConnectionFactory</connection-definition>
            <config-property name="InstancesPerContainer" type="java.lang.Integer">
                <xsl:value-of select="@instancesPerContainer"/>
            </config-property>
            <config-property name="TranslateExternalDir" type="java.lang.String">
                <xsl:value-of select="@translateExternalDir"/>
            </config-property>
            <config-property name="DefinitionDirectory" type="java.lang.String">
                <xsl:choose>
                    <xsl:when test="@definitionDirectory"><xsl:value-of select="@definitionDirectory"/></xsl:when>
                    <xsl:otherwise><xsl:value-of select="../../Installations/Installation[@name=current()/@installation]/@goldenSourceBaseDirectory"/>/BaseComponents/defs</xsl:otherwise>
                </xsl:choose>
            </config-property>
            <config-property name="ErrorLogLevel" type="java.lang.Integer">
                <xsl:value-of select="@errorLogLevel"/>
            </config-property>
            <xsl:call-template name="NativeContainer"/>
        </no-tx-connection-factory>
    </xsl:template>
    <xsl:template match="Engine">
    </xsl:template>
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c)1998-2004. Sonic Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="..\..\examples\DevelopmentStandard.xml" htmlbaseurl="" outputurl="" processortype="internal" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext=""/></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition></MapperMetaTag>
</metaInformation>
-->