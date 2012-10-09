<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
  doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
  doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
  omit-xml-declaration="yes"
  encoding="UTF-8"
  indent="yes" />

<xsl:template match="/">
  <html>
    <head>
      <title><xsl:value-of select="/data/params/website-name" /></title>
    </head>
    <body class="section">
      <h1><xsl:value-of select="/data/params/website-name" /></h1>
      <h2><xsl:value-of select="/data/about/entry/title" /></h2>
      <xsl:copy-of select="/data/about/entry/description/*" />
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
