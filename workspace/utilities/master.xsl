<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/head.xsl" />
<xsl:import href="../utilities/body.xsl" />

<xsl:output method="xml"
  doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
  doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
  omit-xml-declaration="yes"
  encoding="UTF-8"
  indent="no" />

<xsl:param name="website-name" select="/data/params/website-name" />
<xsl:param name="page-title" select="/data/params/page-title" />
<xsl:param name="root" select="/data/params/root" />
<xsl:param name="workspace" select="concat($root, '/workspace')" />
<xsl:param name="root-page" select="/data/params/root-page" />
<xsl:param name="current-page" select="/data/params/current-page" />
<xsl:param name="parent-path" select="/data/params/parent-path" />

<xsl:variable name="nav" select="document('../data/nav.xml')" />

<xsl:template match="/">
  <html lang="en">
    <xsl:call-template name="head" />
    <xsl:call-template name="body" />
  </html>
</xsl:template>

</xsl:stylesheet>