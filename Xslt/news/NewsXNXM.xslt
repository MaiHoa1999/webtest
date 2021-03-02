<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <section class="block-product-news">
            <div class="container-fuild">
                <div class="gallery-product-detail-slide">
                    <div class="swiper-container gallery-top-product">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="Zone" mode="ZoneBigSlide"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="wrap-gallery-thumb">
                        <div class="swiper-container gallery-thumbs-product">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="Zone" mode="ZoneBigTitle"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone" mode="ZoneBigSlide">
        <div class="swiper-slide">
            <div class="wrap-text-left">
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
                <div class="wrap-slide-product container">
                    <div class="row">
                        <div class="col-xl-4">
                            <div class="wrap-text-main">
                                <div class="title-main">
                                    <xsl:value-of select="SecondImageUrl" disable-output-escaping="yes"></xsl:value-of>
                                </div>
                                <div class="mota">
                                    <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8">
                            <div class="wrap-slide">
                                <div class="swiper-container product-slide-m">
                                    <div class="swiper-wrapper">
                                        <xsl:apply-templates select="News"></xsl:apply-templates>
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="ZoneBigTitle">
        <div class="swiper-slide">
            <div class="wrapper">
                <div class="bg-slide-service">
                    <div class="title-slide">
                        <xsl:value-of select="SecondImageUrl" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide">
            <div class="wrap-product-main">
                <div class="img">
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
                        <img class="lazyload ">
                            <xsl:attribute name="data-src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="title-sp">
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
                        <!-- <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of> -->
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        <strong>
                            <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                        </strong>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
