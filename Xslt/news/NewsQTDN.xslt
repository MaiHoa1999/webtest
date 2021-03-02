<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<div class="modal-quan-he-cd" id="qhcd-2" style="display: none">
			<div class="title-main"><xsl:value-of select="Zone/Title" disable-output-escaping="yes"></xsl:value-of></div>
			<div class="mota border-b"><xsl:value-of select="Zone/Description" disable-output-escaping="yes"></xsl:value-of></div>
			<xsl:apply-templates select="Zone/Zone[1]" mode="Zone1"></xsl:apply-templates>
			<div class="line"></div>
			<xsl:apply-templates select="Zone/Zone[2]" mode="Zone2"></xsl:apply-templates>
			<div class="line"></div>
			<xsl:apply-templates select="Zone/Zone[3]" mode="Zone3"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone1">
		<div class="title-small center">
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="mota">
			<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="img">
			<img class="lazyload">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2">
		<div class="title-small"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
		<div class="mota"><xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of></div>
		<div class="wrap-pdf">
			<div class="row">
				<xsl:apply-templates select="News" mode="Zone2-News"></xsl:apply-templates>
				
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone2-News">
		<div class="col-lg-6">
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
	<xsl:template match="Zone" mode="Zone3">
		<div class="title-small"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
		<div class="mota"><xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of></div>
		<div class="wrap-pdf">
			<div class="row">
				<xsl:apply-templates select="News" mode="Zone2-News"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
