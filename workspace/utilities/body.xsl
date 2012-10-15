<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/nav.xsl" />
<xsl:import href="../utilities/scripts.xsl" />

<xsl:template name="body">
  <body class="home page page-id-2 page-template page-template-default">
    <header role="banner" class="group">
      <a href="{$root}/" id="logo">
        Pears <em>are common patterns of markup &amp; style</em>
      </a>
    </header>
    <div class="wrap group">
      <div class="main" role="main">
        <div id="container">
          <div id="content" role="main">
            <xsl:apply-templates />
          </div>
        </div>
        <xsl:apply-templates select="$nav/data/nav" mode="nav" />
      </div>
    </div>
    <div id="pears-footer">
      <p>Pears is handcrafted in Salem, Massachusetts by <a href="http://simplebits.com">SimpleBits</a>.</p>
      <p class="cc">This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License</a>.</p>
      <p><a href="http://simplebits.com" id="sb"><img src="{$workspace}/assets/images/sb-black.png" /></a></p>
    </div>
    <xsl:call-template name="scripts" />
  </body>
</xsl:template>

</xsl:stylesheet>