<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="2.0"
  >

 <xsl:output
   method="text"
   encoding="iso-8859-1"
  />

 <xsl:template name="INCLUDE_JAVASCRIPT" >
  <script language="javascript" src="tef_html.js" />
 </xsl:template>

 <xsl:template name="BEGIN" >
  <xsl:param name="ID"    />
  <xsl:param name="Title" />
  <xsl:param name="Level" />
  <xsl:param name="InitialState" >?</xsl:param>

  <xsl:variable name="RED" select ="175 + $Level*10" />
  <xsl:variable name="LEVEL" select="7 - $Level" />

  <LEGEND>
   <xsl:attribute name="style" >
     background-color:rgb( 220, <xsl:value-of select="$RED"/>, 220 );
   </xsl:attribute>
   [<A>
   <xsl:attribute name="id" >link_<xsl:value-of select="$ID"/></xsl:attribute>
   <xsl:attribute name="href" >javascript:toggle( "<xsl:value-of select="$ID"/>" );</xsl:attribute>
   <xsl:attribute name="title" >Afficher/Masquer</xsl:attribute>
   <xsl:attribute name="class" >bgt</xsl:attribute>
   <xsl:attribute name="style" >text-decoration: none; color:#000000;</xsl:attribute>
   <xsl:value-of select="$InitialState"/>
   </A>]
   <FONT>
    <xsl:attribute name="size" >
     <xsl:value-of select="$LEVEL"/>
    </xsl:attribute>
    <xsl:value-of select="$Title"/>
   </FONT>
  </LEGEND>
 </xsl:template>

 <xsl:template name="END" >
  <xsl:param name="ID"    />
  <noscript>
   Pour bénéficier de la fonction masquer/afficher
  , vous devez autoriser l utilisation des scripts ( javascript )
  </noscript>
  <!-- xsl:text disable-output-escaping="yes">
   &lt;script language="javascript" >
  </xsl:text>
   toggle( "<xsl:value-of select="$ID" />" );
  <xsl:text disable-output-escaping="yes">
   &lt;/script>
  </xsl:text -->

  <script language="javascript" >
   toggle( "<xsl:value-of select="$ID" />" );
  </script>
 </xsl:template>

</xsl:stylesheet>
