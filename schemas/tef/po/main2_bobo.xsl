<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="utf-8"/>
	<xsl:template match="/">
		<frameset rows="10%,90%">
			<frame name="haut2"
				src="http://www.abes.fr/abes/sudoc.aspx?stylesheet=http://www.abes.fr/abes/documents/tef/po/haut2.xsl"/>
			<frameset cols="20%,80%">
				<frame name="bas2"/>
				<frame name="droite2"/>
			</frameset>
		</frameset>
	</xsl:template>
</xsl:stylesheet>
