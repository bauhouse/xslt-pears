<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="head">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
    
    <xsl:call-template name="title" />
    
    <xsl:comment>hide css from IE6 but load for everyone else</xsl:comment>
    <xsl:comment><![CDATA[[if gte IE 7]><!]]></xsl:comment>
      <link rel="stylesheet/less" media="screen, projection" href="{$workspace}/assets/css/screen.less" />
    <xsl:comment><![CDATA[<![endif]]]></xsl:comment>
    
    <link rel="shortcut icon" href="favicon.png" /> 
    
    <xsl:comment>enable HTML5 elements in IE7+8</xsl:comment>
    <xsl:comment><![CDATA[[if lt IE 9]><!]]></xsl:comment>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <xsl:comment><![CDATA[<![endif]]]></xsl:comment>
    
    <script type="text/javascript" src="{$workspace}/assets/js/less.js"></script>
    <script type="text/javascript" src="http://use.typekit.com/kpo7dtm.js"></script>
    <script type="text/javascript">try{Typekit.load();}catch(e){}</script>
  </head>
</xsl:template>

<xsl:template name="title">
  <title><xsl:value-of select="$website-name" /></title>
</xsl:template>

</xsl:stylesheet>