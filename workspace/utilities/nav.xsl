<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="data/nav" mode="nav">
  <nav id="nav" class="group">
    <a href="#" id="nav-toggle">hide</a>
    <xsl:apply-templates select="category" mode="nav" />
  </nav>
</xsl:template>

<xsl:template match="category" mode="nav">
  <h2><a href="#"><xsl:value-of select="@value" /></a></h2>
  <ul>
    <xsl:apply-templates select="entry" mode="nav">
      <xsl:with-param name="category-handle" select="@link-handle" />
    </xsl:apply-templates>
  </ul>
</xsl:template>

<xsl:template match="entry" mode="nav">
  <xsl:param name="category-handle" />
  <li><a href="{$root}/{$category-handle}/{title/@handle}/"><xsl:value-of select="title" /></a></li>
</xsl:template>

</xsl:stylesheet>
