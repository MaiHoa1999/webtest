<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <div class="tuyen-dung-2">
            <div class="container">
                <h2 class="section-title no-line">
                    <xsl:value-of select="Zone[1]/Title" disable-output-escaping="yes"></xsl:value-of>
                </h2>
                <div class="wrap-post">
                    <div class="row no-gutters">
                        <div class="col-lg-4">
                            <xsl:apply-templates select="Zone[1]/News[1]" mode="Zone1-News1"></xsl:apply-templates>
                        </div>
                        <div class="col-lg-8">
                            <div class="row no-gutters">
                                <xsl:apply-templates select="Zone[1]/News[position()&gt;1]" mode="Zone1-News2"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tuyen-dung-3" setBackground="/Data/Sites/1/skins/default/img/tuyen-dung/td-bg-2.png">
            <div class="container">
                <h2 class="title-td">
                    <xsl:value-of select="Zone[2]/Description" disable-output-escaping="yes"></xsl:value-of>
                </h2>
                <div class="wrap-table">
                    <table>
                        <thead>
                            <tr>
                                <th><xsl:value-of select="/ZoneList/NoText" disable-output-escaping="yes"></xsl:value-of></th>
                                <th class="t-2"><xsl:value-of select="/ZoneList/VacancyText" disable-output-escaping="yes"></xsl:value-of></th>
                                <th><xsl:value-of select="/ZoneList/EndDateText" disable-output-escaping="yes"></xsl:value-of></th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:apply-templates select="Zone[2]/News" mode="Zone2-News"></xsl:apply-templates>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone1-News1">
        <a class="box-big" href="">
            <xsl:attribute name="href">
                <!-- <xsl:value-of select="Url"></xsl:value-of> -->
                <xsl:text disable-output-escaping="yes">javascript:void(0)</xsl:text>
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
            </div>
            <div class="wrap-text">
                <div class="number">
                    <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="mota">
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </a>
        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
    </xsl:template>
    <xsl:template match="News" mode="Zone1-News2">
        <div class="col-md-6">
            <a class="box-small" href="">
                <xsl:attribute name="href">
                    <!-- <xsl:value-of select="Url"></xsl:value-of> -->
                    <xsl:text disable-output-escaping="yes">javascript:void(0)</xsl:text>
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
                </div>
                <div class="wrap-text">
                    <div class="number">
                        <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="mota">
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
            </a>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone2-News">
        <tr>
            <td class="stt">
                <xsl:if test="position()&lt;10">
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:if>
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </td>
            <td class="t-2">
                <a class="title" href="javascript:;" data-fancybox="" data-src="#content-1">
                    <xsl:attribute name="data-src">
                        <xsl:text disable-output-escaping="yes">#content-</xsl:text>
                        <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
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
                <div class="modal-tuyen-dung">
                    <xsl:attribute name="id">
                        <xsl:text disable-output-escaping="yes">content-</xsl:text>
                        <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                    <div class="title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="wrap-content">
                        <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
            </td>
            <td class="date">
                <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
