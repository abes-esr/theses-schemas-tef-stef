﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:sru="http://www.loc.gov/zing/srw/"
	xmlns:user="http://mycompany.com/mynamespace" xmlns:marc="http://www.loc.gov/MARC21/slim"
	xmlns:zs="http://www.loc.gov/zing/srw/"  xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:rss="http://purl.org/rss/1.0/"
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
			<body bgColor="#ffffcc">
				<div class="bandeauSudoc">
					<h1>SUDOC expérimental</h1> 
				</div>
			<xsl:variable name="image">
						<xsl:text>http://images-eu.amazon.com/images/P/</xsl:text>
						<xsl:value-of select="$isbn"/>
						<xsl:text>.08.LZZZZZZZ.jpg</xsl:text>
					</xsl:variable>
			<xsl:variable name="GO">
					<xsl:text>http://www.abes.fr/abes/google.aspx?Rbccns=</xsl:text>
					<xsl:for-each select="//marc:datafield[@tag='930']">
						<xsl:value-of select="marc:subfield[@code='b']"/>
						<xsl:text>;</xsl:text>
					</xsl:for-each>
				</xsl:variable>
			<xsl:variable name="GS">
					<xsl:text>http://scholar.google.com/scholar?q="</xsl:text>
					<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
					<xsl:text>" author:</xsl:text>
					<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='f']"/>
				</xsl:variable>
			<xsl:variable name="GR">
					<xsl:text>http://www.google.com/search?q=review "</xsl:text>
					<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
					<xsl:text>" </xsl:text>
					<xsl:value-of select="translate(translate(translate(//marc:datafield[@tag='010']/marc:subfield[@code='a'],'-', ''), '-', ''), '-', '')"/>
				</xsl:variable>
			<xsl:variable name="xi">
					<!--<xsl:value-of select="translate(translate(translate(//marc:datafield[@tag='010']/marc:subfield[@code='a'], '-', ''), '-', ''), '-', '')"/>-->
					<xsl:text>http://www.abes.fr/abes/Sudoc.aspx?index=dc.work&amp;query=</xsl:text>
					<xsl:value-of
						select="translate(translate(translate(//marc:datafield[@tag='010']/marc:subfield[@code='a'],
						'-', ''), '-', ''), '-', '')"/>
					<xsl:text>&amp;stylesheet=</xsl:text>
				</xsl:variable>
			<xsl:variable name="tr">
							<xsl:text>http://www.abes.fr/abes/proxy.aspx?url=http://api.technorati.com/search?key=de8631f2e521482f9a4bd63585c0d3b2QQQQquery=</xsl:text>
							<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
							<xsl:text>QQQQtoto=dsfsgfsfgg </xsl:text>
							<!--<xsl:value-of select="$isbn"/> -->
			</xsl:variable>
				<xsl:variable name="oaiurl">
					<xsl:text>http://www.abes.fr/abes/proxy.aspx?url=http://www.portail-sudoc.abes.fr/OaisterProxy/?operation=searchRetrieveQQQQversion=1.1QQQQquery=any=</xsl:text>
					<xsl:value-of
						select="translate(translate(translate(translate(//marc:datafield[@tag='200']/marc:subfield[@code='a'], 'é', 'e'),
						'è', 'e'), 'à', 'a'), 'ô', 'o')"/>
					<xsl:text>QQQQstartRecord=1QQQQmaximumRecords=10QQQQrecordPacking=xmlQQQQtoto=dsfsgfsfgg </xsl:text>
					<!--<xsl:value-of select="$isbn"/> -->
				</xsl:variable>
			<table style="background-color: #ffffcc;" border="1">
				<tr>
					<td style="height: 300px; width: 300px;">
					<DIV style="width: 300px; height: 300px;overflow: auto">
						<h1> Rebond FRBR (via xISBN d'OCLC)</h1>
						<h2><a href="{$xi}"> Autres éditions</a> :</h2>
						<p style="font-size: 15px;">
						<xsl:for-each select="user:document(string($xi))//sru:record">
							<xsl:variable name="urled"
								select="concat('http://www.abes.fr/abes/Sudoc.aspx?operation=searchRetrieve&amp;version=1.1&amp;Submit1=Rechercher&amp;index=dc.ppn&amp;query=',
								.//marc:controlfield[@tag='001'],
								'&amp;startRecord=1&amp;maximumRecords=20&amp;recordPacking=xml&amp;stylesheet=http://www.abes.fr/abes/documents/tef/po/droite2.xsl')"></xsl:variable>
						<li style="font-size: 15px;">
							<a href="{$urled}">
							<xsl:value-of select=".//marc:datafield[@tag='200']/marc:subfield[@code='g']"/>
							<xsl:text>,  </xsl:text>
							<xsl:value-of select=".//marc:datafield[@tag='210']/marc:subfield[@code='c']"/>
							<xsl:text> (  </xsl:text>
							<xsl:value-of select=".//marc:datafield[@tag='210']/marc:subfield[@code='a']"/>
							<xsl:text> ),  </xsl:text>
							<xsl:value-of select=".//marc:datafield[@tag='210']/marc:subfield[@code='d']"/></a>
							<br></br>
							<xsl:value-of select=".//marc:datafield[@tag='215']/marc:subfield[@code='a']"/>
								<xsl:text>  </xsl:text>
							<xsl:value-of select=".//marc:datafield[@tag='320']/marc:subfield[@code='a']"/>
								<br></br>
								<xsl:text> (PPN =  </xsl:text>
								<xsl:value-of select=".//marc:controlfield[@tag='001']"/>
								<xsl:text>) (ISBN : </xsl:text>
								<xsl:value-of select=".//marc:datafield[@tag='010']"/>
								<xsl:text>)</xsl:text>
							</li>
						</xsl:for-each>
						</p>
					</DIV>
					</td>
					<td style="height: 300px; width: 300px;">
							<img WIDTH="230" HEIGHT="300"  
								src="{$image}"
								alt="{//marc:datafield[@tag='200']/marc:subfield[@code='a']}"/>
					</td>
					
					<td style="height: 400px; width: 300px;">
					<DIV style="width: 400px; height: 300px;overflow: auto">
						<h1 style="font-size: 20px;"> Rebonds Blogs (via Technorati)</h1>
						<p style="font-size: 15px;">
						
						<a href="{$tr}">Cette ressource est commentée par </a>
						<xsl:value-of select="user:document(string($tr))//querycount"/>
						<a href="{$tr}"> autres ressources</a>
						<xsl:for-each select="user:document(string($tr))//item">
							<li style="font-size: 15px;">
								<a style="font-size: 15px;" href="{permalink}" target="new">
									<xsl:value-of select="title"/>
								</a>
							</li>
						</xsl:for-each>
						</p>
					</DIV>
					</td>
					<td style="height: 300px; width: 300px;">
					</td>
				</tr>
				<tr>
				
					<td style="height: 300px; width: 300px;">
						<DIV style="width: 300px; height: 300px;overflow: auto">
							<xsl:choose>
			
							
							
							<xsl:when test=" //marc:record/marc:datafield[@tag = '011']  and
						//marc:record/marc:datafield[@tag = '200']/marc:subfield[@code = 'a'] =  'Europace' ">
							<p>Contenu du dernier numéro <a href="http://www.abes.fr/abes/documents/tef/po/current.xml"><img src="http://www.abes.fr/abes/documents/tef/po/feed-icon-16x16.gif" alt="icone Syndication"></img></a></p>
							<ul>
								<xsl:variable name="urlrss">http://www.abes.fr/abes/documents/tef/po/current.xml</xsl:variable>
								<xsl:for-each select="user:document(string($urlrss))//rss:item">
									<xsl:variable name="doi">
										<xsl:value-of select="substring-after(dc:identifier, 'info:doi/')"/>
									</xsl:variable>
									
									<li>
										<a href="{concat('http://dx.doi.org/', $doi)}" target="new">
											<xsl:value-of select="dc:title"/>
										</a>
										
										<xsl:text> (</xsl:text>
										<xsl:value-of select="dc:creator"/>
										<xsl:text>)</xsl:text>
									</li>
									
								</xsl:for-each>
							</ul>
							</xsl:when>
							<xsl:otherwise>
								<h1 style="font-size: 20px;"> Rebonds OAIster (via le Portail Sudoc)</h1>
								<p style="font-size: 15px;">
									
									<a href="{$oaiurl}">Rebond vers </a>
									<xsl:choose>
										<xsl:when test="user:document(string($oaiurl))//zs:numberOfRecords &gt; 1">
											<xsl:value-of select="number(user:document(string($oaiurl))//zs:numberOfRecords) - 1"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="user:document(string($oaiurl))//zs:numberOfRecords"/>
										</xsl:otherwise>
									</xsl:choose>
			
									<a href="{$oaiurl}"> autres ressources</a>
									<xsl:for-each select="user:document(string($oaiurl))//dc:dc">
										<li style="font-size: 15px;">
											<a style="font-size: 15px;" href="{dc:identifier/URL}" target="new">
												<xsl:value-of select="dc:title/K"/>
											</a>
										</li>
									</xsl:for-each>
								</p>
							</xsl:otherwise>
							</xsl:choose>
						</DIV>
					</td>
					
					<td  style="height: 300px; width: 300px;" bgcolor="#cccccc">
					<DIV style="width: 300px; height: 300px;overflow: auto">
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
									<strong>Subjects: </strong>
									<xsl:for-each select="//marc:datafield[@tag='606']">
										<xsl:value-of select="marc:subfield[@code='a']"/> .
									</xsl:for-each>
									 </li>
							</ul>
					</DIV>
					</td>
					
					<td style="height: 400px; width: 400px;">
					<IFRAME width="400" height="400" src="{$GO}"/>
					</td>
				</tr>
				</table>
				<table style="background-color: #ffffcc;" border="1">
				<tr>
					<td style="height: 500px; width: 600px;">
					<h1>Rebond Google Scholar</h1>
					<IFRAME width="600" height="500" src="{$GS}"/>
					</td>
					
					<td style="height: 500px; width: 600px;">
					<h1>Rebond Google Review</h1>
					<IFRAME width="600" height="500" src="{$GR}"/>
					</td>
					
				</tr>
			</table>
				
				
				
				
				
				
				
				
				
				
				<!--<div>
					<h1>Rebond OAIster auteur proxy</h1>
					<xsl:variable name="oai">
						<xsl:text>http://www.abes.fr/abes/proxy.aspx?url=http://www.portail-sudoc.abes.fr/OaisterProxy/?operation=searchRetrieve&amp;version=1.1&amp;query=</xsl:text>
						<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
						<xsl:text>&amp;startRecord=1&amp;maximumRecords=10&amp;recordPacking=xml</xsl:text>
						<xsl:text>QQQQtoto=dsfsgfsfgg </xsl:text>
						
					</xsl:variable>
					<a href="{$oai}">Cette ressource est commentée par </a>
					<xsl:value-of select="user:document(string($oai))//*"/>
					<a href="{$oai}"> autres ressources</a>
					<xsl:for-each select="user:document(string($oai))//*">
						<p>
							<a href="{nearestpermalink}">
								<xsl:value-of select="title"/>
							</a>
						</p>
					</xsl:for-each>
				</div>
				<div>
					<h1>Rebond OAIster auteur direct</h1>
					<xsl:variable name="oai2">
						<xsl:text>http://www.abes.fr/abes/proxy.aspx/?url=http://www.portail-sudoc.abes.fr/OaisterProxy?operation=searchRetrieveQQQQversion=1.1QQQQquery=</xsl:text>
						<xsl:value-of select="//marc:datafield[@tag='200']/marc:subfield[@code='a']"/>
						<xsl:text>QQQQstartRecord=1QQQQmaximumRecords=10QQQQrecordPacking=xml</xsl:text>
						
						
					</xsl:variable>
					<a href="{$oai2}">Cette ressource est commentée par </a>
					<xsl:value-of select="user:document(string($oai2))//zs:numberOfRecords"/>
					<a href="{$oai2}"> autres ressources</a>
					<xsl:for-each select="user:document(string($oai2))//*">
						<p>
							<a href="{nearestpermalink}">
								<xsl:value-of select="title"/>
							</a>
						</p>
					</xsl:for-each>
				</div>-->
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
