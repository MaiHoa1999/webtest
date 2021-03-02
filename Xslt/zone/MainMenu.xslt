<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<ul class="list-menu type-none">
			<xsl:apply-templates select="Zone"></xsl:apply-templates>
			
		</ul>
	</xsl:template>
	<xsl:template match="Zone">
		<li class="nav-item">
			<xsl:if test="IsActive = 'true'">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">nav-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class=" nav-link">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
