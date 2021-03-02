<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<xsl:apply-templates select="Zone[1]" mode="Zone1"></xsl:apply-templates>
		<section class="about-us-2">
			<div class="container">
				<h2 class="title-small">
					<xsl:value-of select="Zone[2]/Title" disable-output-escaping="yes"></xsl:value-of>
				</h2>
			</div>
			<div class="wrap-slide">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="Zone[2]/News" mode="Zone2-News"></xsl:apply-templates>
					</div>
				</div>
				<div class="wrap-button">
					<div class="button-prev-1">
						<img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-prev.png" alt=""/>
					</div>
					<div class="button-next-1">
						<img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-next.png" alt=""/>
					</div>
				</div>
			</div>
		</section>
		<section class="about-us-3" setBackground="/Data/Sites/1/skins/default/img/about/bg-about-3.png">
			<div class="container">
				<h2 class="title-small">
					<xsl:value-of select="Zone[3]/Title" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<div class="wrap-content">
					<div class="row">
						<div class="col-xl-8 col-lg-6">
							<div class="row">
								<xsl:apply-templates select="Zone[3]/News" mode="Zone3-News"></xsl:apply-templates>
							</div>
						</div>
						<div class="col-xl-4 col-lg-6">
							<div class="circle" data-fancybox="" data-src="#qhcd-2">
								<p >
									<xsl:value-of select="Zone[3]/Zone/Title" disable-output-escaping="yes"></xsl:value-of>
								</p>
								<div class="modal-quan-he-cd" id="qhcd-2" style="display: none;">
									<div class="container">
										<xsl:value-of select="Zone[3]/Zone/News/EditLink" disable-output-escaping="yes"></xsl:value-of>
										<xsl:value-of select="Zone[3]/Zone/News/FullContent" disable-output-escaping="yes"></xsl:value-of>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="about-us-4" setBackground="/Data/Sites/1/skins/default/img/bg-about-4.png">
			<div class="container">
				<h2 class="title-small white">
					<xsl:value-of select="Zone[4]/Title" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<div class="wrap-content-1">
					<xsl:apply-templates select="Zone[4]/News[1]" mode="Zone4-News1"></xsl:apply-templates>
				</div>
				<div class="wrap-content-2">
					<xsl:apply-templates select="Zone[4]/News[position()&gt;1]" mode="Zone4-News2"></xsl:apply-templates>
				</div>
			</div>
		</section>
		<section class="about-us-5">
			<xsl:apply-templates select="Zone[5]/News" mode="Zone5-News"></xsl:apply-templates>
		</section>
		<section class="about-us-6" setBackground="/Data/Sites/1/skins/default/img/about/bg-ab-5.png">
			<div class="container">
				<h2 class="title-small">
					<xsl:value-of select="Zone[6]/Title" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<div class="row">
					<div class="col-lg-2"></div>
					<div class="col-lg-10">
						<xsl:apply-templates select="Zone[6]/News" mode="Zone6-News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone1">
		<section class="about-us-1" setBackground="/Data/Sites/1/skins/default/img/about/bg-about.png">
			<div class="container">
				<h2 class="title-small">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<xsl:apply-templates select="News" mode="Zone1-News"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="Zone1-News">
		<div class="wrap-content">
			<div class="row">
				<div class="col-xl-8">
					<div class="img">
						<img class="lazyload ">
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="col-xl-4">
					<div class="content">
						<div class="title">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="mota">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone2-News">
		<div class="swiper-slide">
			<a class="post-item" href="javascript:;" data-fancybox="">
				<xsl:attribute name="data-src">
					<xsl:text disable-output-escaping="yes">#data-ab-</xsl:text>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<div class="img">
					<img class="lazyload ">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="text">
					<div class="date">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="sub-title">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</a>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			<div class="modal-about-slide">
				<xsl:attribute name="id">
					<xsl:text disable-output-escaping="yes">data-ab-</xsl:text>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="NewsImages" mode="Zone2-News-NewsImage"></xsl:apply-templates>
					</div>
				</div>
				<div class="swiper-pagination"></div>
				<div class="button">
					<div class="button-prev">
						<img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-prev.png" alt=""/>
					</div>
					<div class="button-next">
						<img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-next.png" alt=""/>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Zone2-News-NewsImage">
		<div class="swiper-slide">
			<div class="img">
				<img class="">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone3-News">
		<div class="col-xl-6">
			<div class="wrap-box">
				<img src="/Data/Sites/1/skins/default/img/icon/nhaydoi@2x.png" alt=""/>
				<div class="mota">
					<div class="title">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="content">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone4-News1">
		<div class="circle">
			<img class="lazyload ">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
		<div class="text">
			<img data-src="/Data/Sites/1/skins/default/img/icon/nhay_trang.png" alt="" class="lazyload"/>
			<div class="content">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				<i>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</i>
				<i>
					<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
				</i>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone4-News2">
		<div class="item-content">
			<div class="circle">
				<img class="lazyload ">
					<xsl:attribute name="data-src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<div class="text">
				<img data-src="/Data/Sites/1/skins/default/img/icon/nhay_trang.png" alt="" class="lazyload"/>
				<div class="content">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					<i>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</i>
					<i>
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</i>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone5-News">
		<a class="img" data-fancybox="">
			<xsl:attribute name="href">
				<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<img class="lazyload">
				<xsl:attribute name="data-src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</a>
		<img class="button-play lazyload" data-src="/Data/Sites/1/skins/default/img/icon/play-button.png" alt=""/>
	</xsl:template>
	<xsl:template match="News" mode="Zone6-News">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<xsl:apply-templates select="NewsImages" mode="Zone6-News-NewsImages"></xsl:apply-templates>
			</div>
		</div>
		<div class="wrap-button-text">
			<div class="text">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="button">
				<div class="button-prev">
					<img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-black-prev.png" alt=""/>
				</div>
				<div class="button-next">
					<img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-next-black.png" alt=""/>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Zone6-News-NewsImages">
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
