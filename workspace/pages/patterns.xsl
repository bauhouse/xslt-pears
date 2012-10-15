<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:param name="title" select="data/patterns/entry/title/@handle" />
<xsl:param name="category" select="data/patterns/entry/category/item/@handle" />

<xsl:template match="data">
  <xsl:apply-templates select="patterns/entry" />
</xsl:template>

<xsl:template match="patterns/entry">
  <style id="s" type="text/css"><xsl:value-of select="css" /></style>
  <div id="pattern" class="mod group">
    <h3 class="label">Pattern</h3>
    <h4><a href="{$root}/{category/item/@handle}/{title/@handle}" title="View all posts in Lists" rel="category tag"><xsl:value-of select="category" /></a> <span class="sep"> &#8594; </span> <xsl:value-of select="title" /></h4>
    <div id="pattern-wrap" class="group"><xsl:copy-of select="html/*" /></div>
  </div>
  <div class="group">
    <div id="markup" class="mod">
      <h3 class="label">HTML</h3>
      <a href="#" class="clip" title="select code for copying">
        <img src="{$workspace}/assets/images/icon-copy.png" alt="copy" />
      </a>
      <textarea class="mod-ta"><xsl:copy-of select="html/*" /></textarea>
    </div>
    <div id="style" class="mod">
      <h3 class="label">CSS</h3>
      <a href="#" class="clip" title="select code for copying">
        <img src="{$workspace}/assets/images/icon-copy.png" alt="copy" />
      </a>
      <textarea class="mod-ta"><xsl:value-of select="css" /></textarea>
    </div>
  </div>
</xsl:template>

<xsl:template name="title">
  <title>
    <xsl:value-of select="$website-name" />
    <xsl:if test="$title"><xsl:text> / </xsl:text><xsl:value-of select="data/patterns/entry/title" /></xsl:if>
  </title>
</xsl:template>

</xsl:stylesheet>