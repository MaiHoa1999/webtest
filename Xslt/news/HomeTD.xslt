<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="wrap-h6-1 animation-top">
            <div class="container">
                <div class="section-title black">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="des">
                    <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <xsl:apply-templates select="News[1]" mode="NewsBig"></xsl:apply-templates>
            </div>
        </div>
        <div class="wrap-doitac animation-top">
            <div class="container">
                <div class="wrap-slide">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="News[position()&gt;1]" mode="NewsChild"></xsl:apply-templates>
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
    </xsl:template>
    <xsl:template match="News" mode="NewsBig">
        <div class="wrap-text">
            <div class="title">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="mota">
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="view-more">
                <a class="icon-link black" href="">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <img class="lazyload" data-src="/Data/Sites/1/skins/default/img/icon/icon-arrow-black.png" alt=""/>
                </a>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="NewsChild">
        <div class="swiper-slide">
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
                    <img class="lazyload">
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
    </xsl:template>
</xsl:stylesheet>