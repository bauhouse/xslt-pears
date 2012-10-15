<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- xsl:strip-space elements="*" / -->

<!-- Default HTML Manipulation. Do not change these -->
<xsl:template match="*" mode="html">
	<xsl:element name="{name()}">
		<xsl:apply-templates select="* | @* | text()" mode="html"/>
	</xsl:element>
</xsl:template>
<xsl:template match="@*" mode="html">
	<xsl:attribute name="{name()}">
		<xsl:value-of select="."/>
	</xsl:attribute>
</xsl:template>

<!-- Format Relative URLs -->
<xsl:template match="@href | @src" mode="html">
	<xsl:attribute name="{name()}">
		<xsl:choose>
			<xsl:when test="starts-with(.,'/')"><xsl:value-of select="concat($root,.)" /></xsl:when>
			<xsl:otherwise><xsl:value-of select="." /></xsl:otherwise>
		</xsl:choose>
	</xsl:attribute>
</xsl:template>

</xsl:stylesheet>