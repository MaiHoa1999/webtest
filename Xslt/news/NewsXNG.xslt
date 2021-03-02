<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<xsl:apply-templates select="Zone[1]/News" mode="News1"></xsl:apply-templates>
		<xsl:apply-templates select="Zone[2]/News" mode="News2"></xsl:apply-templates>
		<xsl:apply-templates select="Zone[3]" mode="Zone3"></xsl:apply-templates>
		<!-- <xsl:apply-templates select="Zone[3]/News" mode="News3"></xsl:apply-templates> -->
		
		
	</xsl:template>
	<xsl:template match="News" mode="News1">
		<section class="lab-main-1" setBackground="/Data/Sites/1/skins/default/img/lab/layer-cat-lab-1.png">
			<div class="container">
				<div class="section-title text-left black no-line"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
				<div class="img">
					<img class=" lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="wrap-text-1">
					<div class="row">
						<div class="col-lg-5">
							<div class="wrap-text-left">
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
						<div class="col-lg-7">
							<div class="wrap-text-right">
								<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="News2">
		<section class="lab-main-2" setBackground="/Data/Sites/1/skins/default/img/lab-2.png">
			<div class="wrap-main-2">
				<div class="box-blur-main">
					<div class="wrap-text">
						<div class="title-main-line"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
						<div class="mota">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
				<div class="wrap-slide">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="NewsImages" mode="NewsImages2"></xsl:apply-templates>
							
						</div>
						<div class="swiper-pagination"></div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsImages" mode="NewsImages2">
		<div class="swiper-slide">
			<div class="img">
				<img class=" lazyload">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone3">
		<section class="lab-main-3" setBackground="/Data/Sites/1/skins/default/img/lab/bg-lab-3.png">
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:apply-templates select="News" mode="News3"></xsl:apply-templates>
			
		</section>
	</xsl:template>
	<xsl:template match="News" mode="News3">
		<div class="container">
			<div class="title-main-line"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
			<div class="row">
				<div class="col-xl-10">
					<div class="wrap-gallery">
						<div class="box-white"></div>
						<div class="wrap-slide">
							<div class="swiper-container gallery-top">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="NewsImages" mode="NewsImages3"></xsl:apply-templates>
								</div>
							</div>
							<div class="swiper-container gallery-thumbs">
								<div class="swiper-wrapper">
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="NewsImages3">
		<div class="swiper-slide">
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
		</div>
	</xsl:template>
</xsl:stylesheet>
