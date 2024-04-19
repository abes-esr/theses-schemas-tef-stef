<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:sru="http://www.loc.gov/zing/srw/" xmlns:marc="http://www.loc.gov/MARC21/slim" version="1.0">
	<xsl:output encoding="utf-8"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Sodoc3</title>
			</head>
			<body bgColor="lightgrey">
				<TABLE id="Table1" cellSpacing="1" cellPadding="1" border="1">
					<xsl:for-each select="//marc:record">
						<TR>
							<TD style="WIDTH: 20%">
								<xsl:value-of select="marc:datafield[@tag='200']/marc:subfield[@code='f']"/>
							</TD>
							<TD style="WIDTH: 80%" bgColor="lightsteelblue">
								<a>
									<xsl:attribute name="href"
											>http://www.abes.fr/abes/google.aspx?Rbccns=<xsl:for-each
											select="marc:datafield[@tag='930']">
											<xsl:value-of select="marc:subfield[@code='b']"
											/>;</xsl:for-each>&amp;Editeur=<xsl:value-of
											select="marc:datafield[@tag='200']/marc:subfield[@code='e']"
											/>&amp;Auteur=<xsl:value-of
											select="marc:datafield[@tag='200']/marc:subfield[@code='f']"
											/>&amp;Titre=<xsl:value-of
											select="marc:datafield[@tag='200']/marc:subfield[@code='a']"
											/>&amp;Isbn=<xsl:value-of
											select="marc:datafield[@tag='010']/marc:subfield[@code='a']"/>
									</xsl:attribute>
									<xsl:attribute name="target">droite</xsl:attribute>
									<xsl:value-of select="marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
								</a>
							</TD>
						</TR>
					</xsl:for-each>
				</TABLE>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
