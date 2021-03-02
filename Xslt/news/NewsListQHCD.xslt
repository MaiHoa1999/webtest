<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="quan-he-co-dong">
			<div class="ajaxresponse">
				<div class="ajaxresponsewrap">
					<xsl:apply-templates select="News"></xsl:apply-templates>
					
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-xl-6">
			<div class="box-item">
				<div class="wrap-left">
					<div class="date"><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of><span><xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of> - <xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></span></div>
					<div class="text"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
				</div>
				<a class="pdf" href="" download="">
					<xsl:attribute name="href">
						<xsl:value-of select="FileUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img src="/Data/Sites/1/skins/default/img/icon/pdf_down.png" alt=""/>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
