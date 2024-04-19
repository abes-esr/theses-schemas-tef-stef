<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<data>
			<xsl:for-each select="//unitdate">
				<event>
					<xsl:for-each select="tokenize(., '-')[1]">
						<xsl:attribute name="start"><xsl:value-of select="."/></xsl:attribute>
					</xsl:for-each>
					<xsl:for-each select="tokenize(., '-')[2]">
						<xsl:attribute name="end"><xsl:value-of select="."/></xsl:attribute>
					</xsl:for-each>
					<xsl:attribute name="title"><xsl:value-of select="."/><xsl:text> // </xsl:text><xsl:value-of select="ancestor::did[1]/unittitle//text()"/></xsl:attribute>
					<xsl:value-of select="ancestor::c01/did/unittitle//text()"/>
					<xsl:text> -- </xsl:text>
					<xsl:value-of select="ancestor::did[1]/unittitle//text()"/>
				</event>
			</xsl:for-each>
		</data>
	</xsl:template>
</xsl:stylesheet>
<!-- Source:
        http://en.wikipedia.org/wiki/Monet
        http://www.accents-n-art.com/artists/claude-monet-biography.html
    
    <event start="Nov 14 1840 00:00:00 GMT"
        title="Birth"
        image="monet.png"
        link="http://en.wikipedia.org/wiki/Monet"
        >
        Claude Monet, also known as Oscar-Claude Monet or Claude Oscar Monet
        was born to Adolphe and Louise-Justine Monet of 45 Rue Laffitte, 
        in the 9th arrondissement of Paris. 
        &lt;p&gt;
            He was christened as Oscar-Claude at the church of 
            Notre-Dame-de-Lorette. His father wanted him to go into the family 
            (grocery store) business, but Claude Monet wanted to become an artist. 
            His mother was a singer, both parents were second-generation Parisians.
        &lt;/p&gt;
        </event>-->
