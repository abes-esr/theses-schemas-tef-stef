<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:sru="http://www.loc.gov/zing/srw/"
	xmlns:user="http://mycompany.com/mynamespace" xmlns:marc="http://www.loc.gov/MARC21/slim"
	version="1.0">
	<msxsl:script language="JavaScript" implements-prefix="user"><![CDATA[
	var xmlhttp;
	function init()
	{
	//document.setProperty("AllowDocumentFunction",true)
	return "";
	}
	function document(url)
	{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			
			xmlhttp.open("GET",url,false);
			xmlhttp.send(null);
			
			return xmlhttp.responseXML;
			
			
	}
	]]></msxsl:script>
	<xsl:output encoding="utf-8"/>
	<xsl:template match="/">
		<html>
			<xsl:variable name="isbn">
				<xsl:value-of
					select="translate(translate(translate(//marc:datafield[@tag='010']/marc:subfield[@code='a'],'-', ''), '-', ''), '-', '')"/>
			</xsl:variable>
			<head>
				<title>Sodoc3</title>
				<link rel="stylesheet" href="http://www.abes.fr/abes/documents/tef/po/sudoc2.css" type="text/css" />
			</head>
			<body bgColor="lightgrey">
				<div class="bandeauSudoc">
					<h1>SUDOC expérimental</h1> 
				</div>
				<div class="biblio">
					
					<xsl:variable name="image">
						<xsl:text>http://images-eu.amazon.com/images/P/</xsl:text>
						<xsl:value-of select="$isbn"/>
						<xsl:text>.08.LZZZZZZZ.jpg</xsl:text>
					</xsl:variable>
				<table cellspacing="0">
					<tr>
						<td class="illustration">
							<img
								src="{$image}"
								alt="{//marc:datafield[@tag='200']/marc:subfield[@code='a']}"/>
						</td>
						<td class="info">
							<h1 class="title">
								<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
							</h1>
							<xsl:for-each select="//marc:datafield[@tag='200']/marc:subfield[@code='f']">
								<p class="author">
									<strong>
										<xsl:value-of select="."/>
									</strong>
								</p>
							</xsl:for-each>
							<xsl:for-each select="//marc:datafield[@tag='200']/marc:subfield[@code='g']">
								<p class="authorg">
									<strong>
										<xsl:value-of select="."/>
									</strong>
								</p>
							</xsl:for-each>
							<ul class="detailed">
								<li class="publisher">
									<strong> Editeur : </strong><xsl:value-of select="//marc:datafield[@tag='210']/marc:subfield[@code='c']"/> (<xsl:value-of select="//marc:datafield[@tag='210']/marc:subfield[@code='d']"></xsl:value-of>)</li>
								<li class="isbn">
									<strong> ISBN : </strong><xsl:value-of
										select="translate(translate(translate(//marc:datafield[@tag='010']/marc:subfield[@code='a'],'-', ''), '-', ''), '-', '')"/></li>
								<li class="oclc">
									<strong> PPN : </strong><xsl:value-of select="//marc:controlfield[@tag='001']"/></li>
							</ul>
							<ul class="subjects">
								<li>
									<strong>Subjects: </strong>Ethnology -- Congresses. -- Papua New Guinea</li>
							</ul>
						</td>
						<td class="bookmark"/>
					</tr>
				</table>
				</div>
				<xsl:variable name="GO">
					<xsl:text>http://www.abes.fr/abes/google.aspx?Rbccns=</xsl:text>
					<xsl:for-each select="//marc:datafield[@tag='930']">
						<xsl:value-of select="marc:subfield[@code='b']"/>
						<xsl:text>;</xsl:text>
					</xsl:for-each>
				</xsl:variable>
				<IFRAME width="780" height="580" src="{$GO}"/>
				<h1>Rebond Google Scholar</h1>
				<xsl:variable name="GS">
					<xsl:text>http://scholar.google.com/scholar?q=</xsl:text>
					<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
					<xsl:text> author:</xsl:text>
					<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='f']"/>
				</xsl:variable>
				<IFRAME width="800" height="400" src="{$GS}"/>
				<h1>Rebond Google Review</h1>
				<xsl:variable name="GR">
					<xsl:text>http://www.google.com/search?q=review </xsl:text>
					<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
					<xsl:text> </xsl:text>
					<xsl:value-of select="//marc:controlfield[@tag='001']"/>
				</xsl:variable>
				<IFRAME width="800" height="400" src="{$GR}"/>
				<h1>Rebond xISBN</h1>
				<xsl:variable name="xi">
					<!--<xsl:value-of select="translate(translate(translate(//marc:datafield[@tag='010']/marc:subfield[@code='a'], '-', ''), '-', ''), '-', '')"/>-->
					<xsl:text>http://www.abes.fr/abes/Sudoc.aspx?index=dc.work&amp;query=</xsl:text>
					<xsl:value-of
						select="translate(translate(translate(//marc:datafield[@tag='010']/marc:subfield[@code='a'],
						'-', ''), '-', ''), '-', '')"/>
					<xsl:text>&amp;stylesheet=</xsl:text>
				</xsl:variable>
				
				<div>
					<xsl:for-each select="user:document(string($xi))//sru:record">
						
						<xsl:value-of select="//marc:datafield[@tag='215']"/>
						<!--<xsl:variable name="textloc">
						<xsl:value-of select="user:document(string($loc))/*"></xsl:value-of>
					</xsl:variable>
						<p>a
							<xsl:value-of select="$textloc//marc:datafield[@tag='250']"/>
							<xsl:text>  </xsl:text>
							<xsl:value-of select="$textloc//marc:datafield[@tag='260']"/>
							<xsl:text>  </xsl:text>
							<xsl:value-of select="$textloc//marc:datafield[@tag='300']"/>
						</p>-->
					</xsl:for-each>
				</div>
				<div>
					<h1>Rebond Technorati</h1>
					<xsl:variable name="tr">
						<xsl:text>http://www.abes.fr/abes/proxy.aspx?url=http://api.technorati.com/search?key=de8631f2e521482f9a4bd63585c0d3b2QQQQquery=</xsl:text>
						<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
						<xsl:text>QQQQtoto=dsfsgfsfgg </xsl:text>
						<!--<xsl:value-of select="$isbn"/> -->
					</xsl:variable>
					<a href="{$tr}">Cette ressource est commentée par </a>
					<xsl:value-of select="user:document(string($tr))//querycount"/>
					<a href="{$tr}"> autres ressources</a>
					<xsl:for-each select="user:document(string($tr))//item">
						<p>
							<a href="{nearestpermalink}">
								<xsl:value-of select="title"/>
							</a>
						</p>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
