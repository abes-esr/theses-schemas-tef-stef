<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output encoding="utf-8"/>
<xsl:template match="/">
<frameset rows="8%,92%">
    <frame  name="haut" src="http://www.abes.fr/abes/sudoc.aspx?stylesheet=http://www.abes.fr/abes/documents/tef/po/haut.xsl"  />
		<frameset cols="50%,50%">
			<frame name="bas" />
			<frame  name="droite"  />
		</frameset>
	</frameset>
</xsl:template>

</xsl:stylesheet>