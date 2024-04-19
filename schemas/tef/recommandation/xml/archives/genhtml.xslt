<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:n1="http://www.abes.fr/abes/documents/tef" xmlns:mads="http://www.loc.gov/mads/" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:template match="/">
        <html>
            <head>
                <title />
            </head>
            <body>
                <xsl:for-each select="n1:thesisRecord">
                    <input style="height:22px; " value="">
                        <xsl:attribute name="value"><xsl:value-of select="." /></xsl:attribute>
                    </input>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
