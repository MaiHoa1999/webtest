<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<div class="wrap-report">
			<div class="container">
				<h2 class="title-small main"><xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of></h2>
				<xsl:apply-templates select="Zone[IsActive='true']/Zone" mode="ZoneBig"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneBig">
		<div class="wrap-main-select">
			<div class="row">
				<div class="col-xl-4">
					<div class="wrap-select">
						<select class="select-qh" name="loai">
							<xsl:apply-templates select="Zone" mode="ZoneSelect"></xsl:apply-templates>
						</select>
						<div class="icon-select">
							<div class="icon"></div>
						</div>
					</div>
				</div>
				<div class="col-xl-8">
					<div class="title-small-2"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
					<div class="row">
						<xsl:apply-templates select="Zone[1]/News" mode="ZoneNews"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneSelect">
		<option>
			<xsl:attribute name="value">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-href">
				<xsl:value-of select="FullUrl" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</option>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews">
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
