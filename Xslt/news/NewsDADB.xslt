<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/NewsList">
		<xsl:apply-templates select="News"></xsl:apply-templates>
		
	</xsl:template>
	<xsl:template match="News">
		<section class="block-project" setBackground="/Data/Sites/1/skins/default/img/project/bg-cheo.png">
			<div class="container">
				<div class="row">
					<div class="col-lg-5">
						<div class="left-project">
							<div class="title">
								<h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
							</div>
							<div class="title">
								<p><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></p>
							</div>
							<div class="content-project">
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
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
										<xsl:value-of select="/NewsList/ViewMoreText" disable-output-escaping="yes"></xsl:value-of>
										<img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-next.png" alt=""/>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-7">
						<div class="right-project">
							<div class="card_img">
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
									<img class=" lazyload">
										<xsl:attribute name="data-src">
											<xsl:value-of select="ImageUrl"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="alt">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>
									</img>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
</xsl:stylesheet>
