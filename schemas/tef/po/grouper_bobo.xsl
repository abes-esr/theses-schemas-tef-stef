<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:srw="http://www.loc.gov/zing/srw/" xmlns:cql="http://www.loc.gov/zing/cql/xcql/" xmlns:marc="http://www.loc.gov/MARC21/slim"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions"
	xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:key name="records-by-date" match="//marc:record" use="marc:datafield[@tag =
		'210']/marc:subfield[@code	= 'd']" />
	<xsl:key name="records-by-auteur" match="//marc:record" use="marc:datafield[@tag =
		'700']/marc:subfield[@code	= 'a']" />
	<xsl:variable name="requeteOrigine">
		<xsl:text>http://www.abes.fr/abes/Sudoc.aspx?operation=searchRetrieve&amp;version=1.1&amp;Submit1=Rechercher&amp;index=</xsl:text>
		<xsl:value-of
			select="/srw:searchRetrieveResponse/srw:echoedSearchRetrieveRequest/srw:xQuery/cql:searchClause/cql:index"></xsl:value-of>
		<xsl:text>&amp;query=</xsl:text>
		<xsl:value-of
			select="/srw:searchRetrieveResponse/srw:echoedSearchRetrieveRequest/srw:xQuery/cql:searchClause/cql:term"/>
		
	</xsl:variable>
	<xsl:variable name="filtreAuteur">
		<xsl:text>&amp;index1=dc.author</xsl:text>
		<xsl:text>&amp;query1=</xsl:text>
		<!--<xsl:value-of select="marc:datafield[@tag = '700']/marc:subfield[@code	= 'a']"/>-->
	</xsl:variable>
	<xsl:variable name="finrequete">
		<xsl:text>&amp;startRecord=1&amp;maximumRecords=20&amp;recordPacking=xml&amp;stylesheet=http://www.abes.fr/abes/documents/tef/po/bas2.xsl</xsl:text>
	</xsl:variable>
	<xsl:template match="/">
		<html>
			<head></head>
			<body style="background-image: url(http://www.abes.fr/abes2006/images/siteWeb/bandeau.gif); border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" scroll="no">
				<h2 style="font-size: 20px;">Filtrer sur l'auteur</h2>
				
			
		
		
			
				
				<!--<xsl:template match="records">-->
				<xsl:for-each select="//marc:record[count(. | key('records-by-auteur', marc:datafield[@tag
					='700']/marc:subfield[@code	= 'a'])[1]) = 1]">
					<xsl:sort select="marc:datafield[@tag = '700']/marc:subfield[@code	= 'a']" />
					<xsl:if test="count(key('records-by-auteur', marc:datafield[@tag =
						'700']/marc:subfield[@code	= 'a'])) &gt; 2">
						<p  style="font-size: 15px;"><a href="{concat($requeteOrigine, $filtreAuteur, marc:datafield[@tag =
							'700']/marc:subfield[@code = 'a'], $finrequete)}" target="droite2">
							<xsl:value-of select="marc:datafield[@tag = '700']/marc:subfield[@code	= 'a']"></xsl:value-of></a>
						
						
						
					</p></xsl:if>
				</xsl:for-each>
				<!--</xsl:template>-->
			
				
		<h2 style="font-size: 20px;">Filtrer sur la date</h2>
				
		
			
			<!--<xsl:template match="records">-->
			<xsl:for-each select="//marc:record[count(. | key('records-by-date', marc:datafield[@tag ='210']/marc:subfield[@code	= 'd'])[1]) = 1]">
				<!--<xsl:sort select="marc:datafield[@tag = '101']/marc:subfield[@code	= 'a']" />-->
				<xsl:sort select="marc:datafield[@tag = '210']/marc:subfield[@code	= 'd']" />
				<xsl:if test="count(key('records-by-date', marc:datafield[@tag = '210']/marc:subfield[@code	= 'd'])) &gt; 2">
				<p style="font-size: 15px;">
					<a href="http://www.abes.fr/abes/"><xsl:value-of select="marc:datafield[@tag = '210']/marc:subfield[@code	= 'd']" /></a>
				</p>
					</xsl:if>
				</xsl:for-each>
			<!--</xsl:template>-->
		
			
			
		<!--<Langues>
			<xsl:for-each-group select="//marc:record" group-by="marc:datafield[@tag = '101']/marc:subfield[@code	= 'a']">
				<xsl:sort select="count(current-group())" order="descending"></xsl:sort>
				<groupe>
					<xsl:value-of select="current-grouping-key()"/>
					<xsl:text> : </xsl:text>
					<xsl:value-of select="count(current-group())"/>
				</groupe>
			</xsl:for-each-group>
		</Langues>
		
		<Sujets>
			<xsl:for-each-group select="//marc:record" group-by="marc:datafield[@tag = '606']/marc:subfield[@code	= 'a']">
				<xsl:sort select="count(current-group())" order="descending"></xsl:sort>
				<xsl:if test="count(current-group()) &gt; 3">
				<groupe>
					<xsl:value-of select="current-grouping-key()"/>
					<xsl:text> : </xsl:text>
					<xsl:value-of select="count(current-group())"/>
				</groupe>
				</xsl:if>
			</xsl:for-each-group>
		</Sujets>
		
		<Années>
			<xsl:for-each-group select="//marc:record" group-by="marc:datafield[@tag = '210']/marc:subfield[@code	= 'd']">
				<xsl:sort select="count(current-group())" order="descending"></xsl:sort>
				<groupe>
					<xsl:value-of select="current-grouping-key()"/>
					<xsl:text> : </xsl:text>
					<xsl:value-of select="count(current-group())"/>
				</groupe>
			</xsl:for-each-group>
		</Années>
		
		<Auteurs>
			<xsl:for-each-group select="//marc:record" group-by="marc:datafield[@tag = '700' or @tag = '701' or @tag = '710' or @tag = '711']/marc:subfield[@code	= 'a']">
				<xsl:sort select="count(current-group())" order="descending"></xsl:sort>
				<xsl:if test="count(current-group()) &gt; 2">
				<groupe>
					<xsl:value-of select="current-grouping-key()"/>
					<xsl:text> : </xsl:text>
					<xsl:value-of select="count(current-group())"/>
				</groupe>
					</xsl:if>
			</xsl:for-each-group>
		</Auteurs>-->
	
		<!--<groupes>
			<xsl:for-each-group select="//marc:datafield[@tag = '606']" group-by="marc:subfield[@code =
				'a']">
				<xsl:sort select="count(//marc:record[marc:datafield[@tag = '606']/marc:subfield[@code
					= 'a'] = current-grouping-key()])" order="descending"/>
				<groupe>
					<xsl:value-of select="current-grouping-key()"/>
					<xsl:text> : </xsl:text>
					<xsl:value-of select="count(//marc:record[marc:datafield[@tag = '606']/marc:subfield[@code
						= 'a'] = current-grouping-key()])"/>
				</groupe>
			</xsl:for-each-group>
			</groupes>-->
			</body>
		</html>
		
	</xsl:template>
	<!--<xsl:template match="/">
		<groupes>
			<xsl:for-each-group select="//marc:datafield[@tag = '606']" group-by="marc:subfield[@code =
				'a']">
				<xsl:sort select="count(current-group())"/>
				<xsl:variable name="cle" select="marc:subfield[@code = 'a']"/>
				<groupe>
					<xsl:value-of select="$cle"/>
					<xsl:text> : </xsl:text>
					<xsl:value-of select="count(//marc:record[marc:datafield[@tag = '606']/marc:subfield[@code
						= 'a'] = $cle])"/>
				</groupe>
			</xsl:for-each-group>
		</groupes>
	</xsl:template>-->
</xsl:stylesheet>
