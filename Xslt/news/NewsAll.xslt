<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<div class="wrap-post-list">
			<div class="filed-nav">
				<ul class="type-none tabslet-tab">
					<xsl:apply-templates select="Zone" mode="Tab"></xsl:apply-templates>
				</ul>
			</div>
			<xsl:apply-templates select="Zone[1]" mode="Zone1"></xsl:apply-templates>
			<xsl:apply-templates select="Zone[2]" mode="Zone2"></xsl:apply-templates>
			<div class="post-list-3 tabslet-content" id="tab-3">
				<div class="container">
					<div class="row">
						<div class="col-xl-3">
							<h2 class="title-small">
								<xsl:value-of select="Zone[3]/Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
						<div class="col-xl-9">
							<xsl:apply-templates select="Zone[3]/News[1]" mode="Zone3-News1"></xsl:apply-templates>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="Zone[3]/News[position()&gt;1]" mode="Zone3-News2"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="post-list-3 tabslet-content" setBackground="/Data/Sites/1/skins/default/img/tin-tuc/bg-tt-3.png" id="tab-4">
				<div class="container">
					<div class="row">
						<div class="col-xl-3">
							<h2 class="title-small">
								<xsl:value-of select="Zone[4]/Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
						<div class="col-xl-9">
							<xsl:apply-templates select="Zone[4]/News[1]" mode="Zone4-News1"></xsl:apply-templates>
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="Zone[4]/News[position()&gt;1]" mode="Zone4-News2"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="post-list-4 tabslet-content" id="tab-5">
				<div class="container">
					<h2 class="title-small">
						<xsl:value-of select="Zone[5]/Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<div class="wrap-row">
						<xsl:apply-templates select="Zone[5]/News" mode="Zone5-News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Tab">
		<li>
			<xsl:if test="IsActive = 'true'">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class=" ">
				<xsl:attribute name="data-scroll">
					<xsl:text disable-output-escaping="yes">tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone1">
		<div class="post-list" setBackground="/Data/Sites/1/skins/default/img/h5-bg.png">
			<div class="wrap-post tabslet-content active" id="tab-1">
				<div class="container">
					<div class="row">
						<div class="col-xl-3">
							<h2 class="title-small">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
						<div class="col-xl-9">
							<div class="home-5" setBackground="/Data/Sites/1/skins/default/img/h5-bg.png">
								<xsl:apply-templates select="News[1]" mode="Zone1-News1"></xsl:apply-templates>
								<div class="wrap-small">
									<div class="swiper-container">
										<div class="swiper-wrapper">
											<xsl:apply-templates select="News[position()&gt;1]" mode="Zone1-News2"></xsl:apply-templates>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone1-News1">
		<div class="wrap-big">
			<div class="img zoom-img">
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
			<div class="wrap-text">
				<div class="date">
					<xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>
					<span>
						<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>-
						<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of>
					</span>
				</div>
				<div class="wrap-left">
					<a class=" title-link">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</a>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
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
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone1-News2">
		<div class="swiper-slide">
			<a class="box-post-small" href="">
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
					<img class=" lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
					<div class="date">
						<xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>
						<span>
							<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>-
							<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of>
						</span>
					</div>
				</div>
				<div class="wrap-title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
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
			</a>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2">
		<div class="post-list-2 tabslet-content" id="tab-2">
			<div class="container">
				<div class="row">
					<div class="col-xl-3">
						<h2 class="title-small white">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
					</div>
					<div class="col-xl-9">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="News" mode="Zone2-News"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone2-News">
		<div class="swiper-slide">
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
					<img class=" lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
					<div class="date">
						<xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>
						<span>
							<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>-
							<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of>
						</span>
					</div>
				</div>
				<div class="wrap-text">
					<p>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</a>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone3-News1">
		<div class="row">
			<div class="col-lg-12">
				<a class="wrap-post-list-big" href="">
					<xsl:attribute name="data-fancybox">
						<xsl:text disable-output-escaping="yes">images-</xsl:text>
						<xsl:value-of select="NewsId" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="href">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<div class="img zoom-img">
						<img class=" lazyload">
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
						<div class="date">
							<xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>
							<span>
								<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>-
								<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of>
							</span>
						</div>
					</div>
					<div class="wrap-text">
						<p>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</div>
				</a>
				<div class="hidden-image">
					<xsl:apply-templates select="NewsImages[position()&gt;1]"></xsl:apply-templates>
				</div>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone3-News2">
		<div class="swiper-slide">
			<a class="wrap-post-list-sm" href="">
				<xsl:attribute name="data-fancybox">
					<xsl:text disable-output-escaping="yes">images-</xsl:text>
					<xsl:value-of select="NewsId" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<div class="img zoom-img">
					<img class=" lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
					<div class="date">
						<xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>
						<span>
							<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>-
							<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of>
						</span>
					</div>
				</div>
				<div class="wrap-text">
					<p>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</a>
			<div class="hidden-image">
				<xsl:apply-templates select="NewsImages[position()&gt;1]"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone4-News1">
		<div class="row">
			<div class="col-lg-12">
				<a class="wrap-post-list-big" href="javascript:;" data-fancybox="">
					<xsl:attribute name="href">
						<xsl:value-of select="SubTitle"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<div class="img zoom-img">
						<img class=" lazyload">
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
						<div class="date">
							<xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>
							<span>
								<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>-
								<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of>
							</span>
						</div>
					</div>
					<div class="wrap-text">
						<p>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</div>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone4-News2">
		<div class="swiper-slide">
			<a class="wrap-post-list-sm" href="javascript:;" data-fancybox="">
				<xsl:attribute name="href">
					<xsl:value-of select="SubTitle"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<div class="img zoom-img">
					<img class=" lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
					<div class="date">
						<xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of>
						<span>
							<xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of>-
							<xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of>
						</span>
					</div>
				</div>
				<div class="wrap-text">
					<p>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</a>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone5-News">
		<div class="box-item">
			<div class="img">
				<a class="zoom-img" href="" download="">
					<xsl:attribute name="href">
						<xsl:value-of select="FileUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
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
			<div class="wrap-text">
				<a class="title" href="" download="">
					<xsl:attribute name="href">
						<xsl:value-of select="FileUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					<br/>
					<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<a class="btn-download" download="">
					<xsl:attribute name="href">
						<xsl:value-of select="FileUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="/ZoneList/DownloadText" disable-output-escaping="yes"></xsl:value-of>
					<em class="material-icons">south</em>
				</a>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-fancybox">
				<xsl:text disable-output-escaping="yes">images-</xsl:text>
				<xsl:value-of select="../NewsId" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</a>
	</xsl:template>
</xsl:stylesheet>
