<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsDetail">
		<section class="post-detail section-post" setBackground="/Data/Sites/1/skins/default/img/bg-chamnho.png">
			<div class="container">
				<div class="row">
					<div class="col-lg-10">
						<div class="wrap-header">
							<div class="date"><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of><span><xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of> - <xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></span></div>
							<div class="text">
								<div class="cate"><xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of></div>
								<h2 class="title"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
							</div>
						</div>
						<div class="wrap-content">
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
							<!-- <div class="tac-gia">tác giả/</div> -->
						</div>
					</div>
				</div>
				<div class="wrap-post-related">
					<div class="title-small">
						<xsl:value-of select="NewsRelatedText" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="wrap-post">
						<div class="row">
							<div class="col-lg-11">
								<div class="row">
									<xsl:apply-templates select="NewsOther"></xsl:apply-templates>
									
								</div>
								<a class="xem-them" href="#">
									<xsl:value-of select="ViewMoreText" disable-output-escaping="yes"></xsl:value-of>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="col-lg-6">
			<a class="wrap-post-list-sm" href="">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<div class="img zoom-img">
					<img class="lazyload ">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>

					<div class="date"><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of><span><xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>-<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></span></div>
				</div>
				<div class="wrap-text">
					<p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
				</div></a><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
	</xsl:template>
</xsl:stylesheet>
