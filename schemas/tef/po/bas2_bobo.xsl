<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:sru="http://www.loc.gov/zing/srw/" xmlns:marc="http://www.loc.gov/MARC21/slim" version="1.0">
	<xsl:output encoding="utf-8"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Sodoc3</title>
				<script language="JavaScript">
			
				function loadframe()
					{
					var url=window.location.href;
					var url2=url.replace('bas2.xsl','grouper.xsl');
					var url3=url2.replace('maximumRecords=20','maximumRecords=70');
					//alert(url3);
					 parent.frames["bas2"].location.href = url3;				
					}
					
				</script>
			</head>
			<body bgColor="#ffffcc"  onLoad="loadframe();"  scroll="no" style =" border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;">
				<TABLE id="Table1" cellSpacing="1" cellPadding="1" border="0" style ="background-color: #ffffcc;">
					<xsl:for-each select="//marc:record">
						<TR>
							<TD style="WIDTH: 5%">
								<img src="http://www.abes.fr/abes2006/images/siteWeb/booko.gif" style="width: 15px" />
							</TD>
							<TD style="WIDTH: 15%;font-size: 15px;">
								<xsl:value-of select="marc:datafield[@tag='200']/marc:subfield[@code='f']"/>
							</TD>
							<TD style="WIDTH: 80%;font-size: 15px;" bgColor="lightsteelblue">
								<a>
									<xsl:attribute name="href">
										<xsl:text>http://www.abes.fr/abes/Sudoc.aspx?operation=searchRetrieve&amp;version=1.1&amp;Submit1=Rechercher&amp;index=dc.ppn&amp;query=</xsl:text>
										<xsl:value-of select="marc:controlfield[@tag='001']"/>
										<xsl:text>&amp;startRecord=1&amp;maximumRecords=20&amp;recordPacking=xml&amp;stylesheet=http://www.abes.fr/abes/documents/tef/po/droite2.xsl</xsl:text>
									</xsl:attribute>
									<xsl:attribute name="target">_blank</xsl:attribute>
									<xsl:value-of select="marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
								</a>
								<xsl:text> (</xsl:text>
								<xsl:value-of select="marc:datafield[@tag='210']/marc:subfield[@code='d']"/>
								<xsl:text>)</xsl:text>
							</TD>
						</TR>
					</xsl:for-each>
				</TABLE>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
