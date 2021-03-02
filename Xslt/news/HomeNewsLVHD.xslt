<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<div class="section-title">
			<xsl:value-of select="Zone/Title" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="img-big backInLeft">
			<img class=" lazyload">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
		<div class="wrap-post-small">
			<div class="row">
				<div class="col-lg-3 col-md-12 wrap-text">
					<div class="box-item box-text fadeInTopLeft">
						<div class="mota">
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<a class="view-detail ">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="/ZoneList/ViewDetailText" disable-output-escaping="yes"></xsl:value-of>
						</a>
					</div>
				</div>
				<xsl:apply-templates select="Zone"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="col-lg-3 col-md-4">
			<a class="box-item zoom-img box-img flipInX" href="">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<img class="lazyload">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
				<div class="text">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>
