<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<div class="row">
			<div class="col-xl-3">
				<div class="home-4-slide-big">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="Zone" mode="ZoneBig"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-9">
				<div class="box-wrap box-slide">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="Zone" mode="ZoneChild"></xsl:apply-templates>
							<xsl:apply-templates select="Zone[1]" mode="ZoneChild1"></xsl:apply-templates>
						</div>
					</div>
					<div class="wrap-count-slide">
						<div class="wrap-button">
							<div class="button-prev"><img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-prev.png" alt=""/></div>
							<div class="button-next"><img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-next.png" alt=""/></div>
						</div>
						<div class="line"></div>
						<div class="count">01</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneBig">
		<div class="swiper-slide">
			<xsl:attribute name="id">
				<xsl:text disable-output-escaping="yes">slide-</xsl:text>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<div class="box-wrap box-text-left">
				<div class="section-title line-top"><xsl:value-of select="SecondImageUrl" disable-output-escaping="yes"></xsl:value-of></div>
				<div class="mota">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<a class="view-detail" href="">
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
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneChild">
		<xsl:if test="position()&gt;1">
			<div class="swiper-slide">
				<xsl:if test="position()=1">
					<xsl:attribute name="backgroundSection">
						<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="id">
					<xsl:text disable-output-escaping="yes">slide-</xsl:text>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<div class="box-img zoom-img">
					<!-- <a class=" ">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute> -->
						<img class=" lazyload">
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					<!-- </a> -->
					<div class="title">
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
							<xsl:value-of select="SecondImageUrl" disable-output-escaping="yes"></xsl:value-of>
						</a>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="ZoneChild1">
		<div class="swiper-slide">
			<xsl:if test="position()=1">
				<xsl:attribute name="backgroundSection">
					<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text disable-output-escaping="yes">slide-</xsl:text>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<div class="box-img zoom-img">
				<!-- <a class=" ">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute> -->
					<img class=" lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				<!-- </a> -->
				<div class="title">
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
						<xsl:value-of select="SecondImageUrl" disable-output-escaping="yes"></xsl:value-of>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
