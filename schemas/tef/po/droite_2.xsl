<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" 
	xmlns:sru="http://www.loc.gov/zing/srw/" xmlns:marc="http://www.loc.gov/MARC21/slim" version="1.0">

	<xsl:output encoding="utf-8"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Sodoc3</title>
			</head>
			<body bgColor="lightgrey">
				<h1>
					titre : <xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
				</h1>
				<h1>
					ppn : <xsl:value-of select="//marc:controlfield[@tag='001']"/>
				</h1>
				<h1>
					isbn : <xsl:value-of select="//marc:datafield[@tag='010']/marc:subfield[@code='a']"/>
				</h1>
				<div>
					<h1>Rebond Google Scholar</h1>
					<xsl:variable name="GS">
						<xsl:text>http://scholar.google.com/scholar?q=</xsl:text>
						<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
						<xsl:text> author:</xsl:text>
						<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='f']"/>
					</xsl:variable>
					<a href="{$GS}">Cette ressource est citée par d'autres...</a>
				</div>
				<div>
					<h1>Rebond Google Review</h1>
					<xsl:variable name="GR">
						<xsl:text>http://www.google.com/search?q=review </xsl:text>
						<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="//marc:controlfield[@tag='001']"/>
					</xsl:variable>
					<a href="{$GR}">Cette ressource est commentée par d'autres...</a>
				</div>
				<div>
					<h1>Rebond xISBN</h1>
					<xsl:variable name="xi">
						<xsl:text>http://labs.oclc.org/xisbn/</xsl:text>
						<xsl:value-of select="translate(translate(translate(//marc:datafield[@tag='010']/marc:subfield[@code='a'], '-', ''), '-', ''), '-', '')"/>
					</xsl:variable>
					<xsl:variable name="loc1">http://www.abes.fr/abes/sudoc.aspx?operation=searchRetrieve&amp;version=1.1&amp;Submit1=Rechercher&amp;index=dc.isbn&amp;query=</xsl:variable>
					<xsl:variable name="loc2">&amp;startRecord=1&amp;maximumRecords=20&amp;recordPacking=xml</xsl:variable>
					<a href="{$xi}">Il existe d'autres éditions de cet ouvrage :</a>
					<xsl:for-each select="document($xi)//isbn">
						<xsl:variable name="loc">
							<xsl:value-of select="$loc1"/>
							<xsl:value-of select="."/>
							<xsl:value-of select="$loc2"/>
						</xsl:variable>
						<p>a
							<xsl:value-of select="document($loc)//marc:datafield[@tag='250']"/>
							<xsl:text>  </xsl:text>
							<xsl:value-of select="document($loc)//marc:datafield[@tag='260']"/>
							<xsl:text>  </xsl:text>
							<xsl:value-of select="document($loc)//marc:datafield[@tag='300']"/>
						</p>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
