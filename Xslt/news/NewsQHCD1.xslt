<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<section class="quan-he-co-dong" data-toggle="tabslet">
			<div class="filed-nav">
				<ul class="type-none tabslet-tab">
					<xsl:apply-templates select="Zone" mode="Tab"></xsl:apply-templates>
				</ul>
			</div>

			<xsl:apply-templates select="Zone[1]" mode="Zone1"></xsl:apply-templates>

			<xsl:apply-templates select="Zone[2]" mode="Zone2"></xsl:apply-templates>

			<xsl:apply-templates select="Zone[3]" mode="Zone3"></xsl:apply-templates>

			<xsl:apply-templates select="Zone[4]" mode="Zone4"></xsl:apply-templates>

			<xsl:apply-templates select="Zone[5]" mode="Zone5"></xsl:apply-templates>

		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="Tab">
		<li>
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class=" ">
				<xsl:attribute name="href">
					<xsl:text disable-output-escaping="yes">#tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone1">
		<div class="wrap-report tabslet-content active" id="tab-1">
			<div class="container">
				<h2 class="title-small main"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
				<div class="row">
					<div class="col-xl-4">
						<div class="wrap-select">
							<select class="select-qh select-ajax" name="loai">
								<xsl:apply-templates select="Zone" mode="Zone-Option"></xsl:apply-templates>
							</select>
							<div class="icon-select">
								<div class="icon"></div>
							</div>
						</div>
					</div>
					<div class="col-xl-8">
						<div class="ajaxresponse">
							<div class="row ajaxresponsewrap">
								<xsl:apply-templates select="Zone[1]/News" mode="Zone-News"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone-Option">
		<option>
			<xsl:attribute name="value">
				<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</option>
	</xsl:template>
	<xsl:template match="News" mode="Zone-News">
		<div class="col-xl-6">
			<div class="box-item">
				<div class="wrap-left">
					<div class="date"><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of><span><xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of> - <xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></span></div>
					<div class="text"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
				</div>
				<a class="pdf" href="" download="">
					<xsl:attribute name="href">
						<xsl:value-of select="FileUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<img src="/Data/Sites/1/skins/default/img/icon/pdf_down.png" alt=""/>
				</a>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2">
		<div class="wrap-report tabslet-content" id="tab-2" style="display: none;">
			<div class="modal-quan-he-cd" >
				<div class="container">
					<xsl:apply-templates select="News" mode="Zone2-News1"></xsl:apply-templates>
					
					<!-- <div class="title-main"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
					<div class="mota border-b"><xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of></div>
					<xsl:apply-templates select="Zone[1]" mode="Zone2-Zone1"></xsl:apply-templates>
					<div class="line"></div>
					<xsl:apply-templates select="Zone[2]" mode="Zone2-Zone2"></xsl:apply-templates>
					<div class="line"></div>
					<xsl:apply-templates select="Zone[3]" mode="Zone2-Zone3"></xsl:apply-templates> -->
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone2-News1">
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2-Zone1">
		<div class="title-small center">
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="mota">
			<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
		</div>
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
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2-Zone2">
		<div class="title-small"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
		<div class="mota"><xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of></div>
		<div class="wrap-pdf">
			<div class="row">
				<xsl:apply-templates select="News" mode="Zone2-Zone2-News"></xsl:apply-templates>
				
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone2-Zone2-News">
		<div class="col-lg-6">
			<div class="box-item">
				<div class="wrap-left">
					<div class="date"><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of><span><xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of> - <xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></span></div>
					<div class="text"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
				</div>
				<a class="pdf" href="" download="">
					<xsl:attribute name="href">
						<xsl:value-of select="FileUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img src="/Data/Sites/1/skins/default/img/icon/pdf_down.png" alt=""/>
				</a>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone2-Zone3">
		<div class="title-small"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
		<div class="mota"><xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of></div>
		<div class="wrap-pdf">
			<div class="row">
				<xsl:apply-templates select="News" mode="Zone2-News"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="Zone2-News">
		<div class="col-lg-6">
			<div class="box-item">
				<div class="wrap-left">
					<div class="date"><xsl:value-of select="CreatedDD" disable-output-escaping="yes"></xsl:value-of><span><xsl:value-of select="CreatedMM" disable-output-escaping="yes"></xsl:value-of> - <xsl:value-of select="CreatedYYYY" disable-output-escaping="yes"></xsl:value-of></span></div>
					<div class="text"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></div>
				</div>
				<a class="pdf" href="" download="">
					<xsl:attribute name="href">
						<xsl:value-of select="FileUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img src="/Data/Sites/1/skins/default/img/icon/pdf_down.png" alt=""/>
				</a>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone3">
		<div class="wrap-report tabslet-content" id="tab-3" style="display: none;">
			<div class="container">
				<h2 class="title-small main"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
				<div class="row">
					<div class="col-xl-4">
						<div class="wrap-select">
							<select class="select-qh select-ajax" name="loai">
								<xsl:apply-templates select="Zone" mode="Zone-Option"></xsl:apply-templates>
							</select>
							<div class="icon-select">
								<div class="icon"></div>
							</div>
						</div>
					</div>
					<div class="col-xl-8">
						<div class="ajaxresponse">
							<div class="row ajaxresponsewrap">
								<xsl:apply-templates select="Zone[1]/News" mode="Zone-News"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone4">
		<div class="wrap-report tabslet-content" id="tab-4" style="display: none;">
			<div class="container">
				<h2 class="title-small main"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
				<xsl:apply-templates select="Zone" mode="Zone4-ZoneTitle"></xsl:apply-templates>
				
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone4-ZoneTitle">
		<div class="wrap-main-select">
			<div class="row">
				<div class="col-xl-4">
					<div class="wrap-select">
						<select class="select-qh select-ajax" name="loai">
							<xsl:apply-templates select="Zone" mode="Zone-Option"></xsl:apply-templates>
						</select>
						<div class="icon-select">
							<div class="icon"></div>
						</div>
					</div>
				</div>
				<div class="col-xl-8">
					<div class="title-small-2"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></div>
					<div class="ajaxresponse">
						<div class="row ajaxresponsewrap">
							<xsl:apply-templates select="Zone[1]/News" mode="Zone-News"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Zone5">
		<div class="quan-he-co-dong-2 wrap-report tabslet-content" setBackground="/Data/Sites/1/skins/default/img/qhcd/qhcd.png" id="tab-5" style="display: none;">
			<div class="container">
				<h2 class="title-small main"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
				<div class="main-box" setBackground="/Data/Sites/1/skins/default/img/qhcd/bg-main-qhcd2.png">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
