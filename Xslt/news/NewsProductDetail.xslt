<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsDetail">
		<section class="sp-banner">
			<xsl:attribute name="setBackground">
				<xsl:value-of select="NewsImages[2]/ImageUrl" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="wrap-product-main">
					<div class="row">
						<div class="col-xl-4">
							<div class="wrap-text">
								<div class="title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
								<div class="title-sp"><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></div>
							</div>
						</div>
						<div class="col-xl-8">
							<!-- <div class="wrap-product">
								<xsl:apply-templates select="NewsImages[2]"></xsl:apply-templates>
								<div class="box-ke"></div>
							</div> -->
						</div>
					</div>
				</div>
				<div class="line"></div>
			</div>
		</section>
		<section class="content-san-pham product-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-10">
						<div class="main-content">
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- <section id="pagebanner" class="banner-project-detail">
			<xsl:apply-templates select="NewsImages[2]"></xsl:apply-templates>
			
		</section>
		<section class="product-detail">
			<div class="container">
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</section> -->
	</xsl:template>
	<xsl:template match="NewsImages">
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
	</xsl:template>
</xsl:stylesheet>
