<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone/News"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="News">
        <div class="section-title backInDown">
            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <div class="des fadeInTopLeft">
            <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <div class="wrap-img backInUp">
            <xsl:apply-templates select="NewsImages"></xsl:apply-templates>
        </div>
        <div class="des text-2 fadeInTopRight">
            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <div class="view-more fadeInTopRight">
            <a class="icon-link" href="">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <em class="material-icons">arrow_forward</em>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="NewsImages">
        <div class="img-small zoom-img">
            <xsl:if test="position()=2">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">img-big zoom-img</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <img class=" lazyload">
                <xsl:attribute name="data-src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
</xsl:stylesheet>
