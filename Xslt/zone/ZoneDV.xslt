<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="block-service">
			<div class="container-fuild">
				<div class="gallery-service-slide">
					<div class="swiper-container gallery-top">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="Zone" mode="ZoneTop"></xsl:apply-templates>
						</div>
					</div>
					<div class="wrap-gallery-thumb">
						<div class="swiper-container gallery-thumbs-product">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="Zone" mode="ZoneThumbs"></xsl:apply-templates>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneTop">
		<div class="swiper-slide">
			<div class="img-top">
				<img class=" lazyload">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<div class="head-title">
				<div class="title"><xsl:value-of select="SecondImageUrl" disable-output-escaping="yes"></xsl:value-of></div>
				<div class="caption"><xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of></div>
				<div class="btn-view-more">
					<a class=" ">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						Xem thêm
						<img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-next.png" alt=""/>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneThumbs">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="bg-slide-service">
					<div class="title-slide"><xsl:value-of select="SecondImageUrl" disable-output-escaping="yes"></xsl:value-of></div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
