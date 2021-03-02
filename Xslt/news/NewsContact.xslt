<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<section class="lien-he-2" setBackground="/Data/Sites/1/skins/default/img/lien-he/bg-cham-lh.png">
			<div class="container-16">
				<div class="row">
					<div class="col-xl-3">
						<div class="title-small"><xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of></div>
					</div>
					<div class="col-xl-9">
						<div class="wrap-right">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="News"></xsl:apply-templates>
									
									
								</div>
							</div>
							<div class="row">
								<div class="col-xl-4 col-lg-5"></div>
								<div class="col-xl-8 col-lg-7">
									<div class="wrap-button">
										<div class="button-prev"><img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-black-prev.png" alt=""/></div>
										<div class="button-next"><img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-next-black.png" alt=""/></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="wrap-hotline">
				<div class="circle">
					<img class=" lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="wrap-text">
					<div class="section-title main no-line"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
					<div class="title-small">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
