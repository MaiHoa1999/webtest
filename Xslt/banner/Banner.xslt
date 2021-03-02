<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/BannerList">
		<section id="pagebanner">
			<xsl:apply-templates select="Banner"></xsl:apply-templates>
			
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="img">
			<img class=" ">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
		<div class="box-text">
			<h2 class="title-line"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
			<div class="desc">
				<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
