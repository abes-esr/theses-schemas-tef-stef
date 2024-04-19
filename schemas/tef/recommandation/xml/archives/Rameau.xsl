<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:tef="http://www.abes.fr/abes/documents/tef" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:mads="http://www.loc.gov/mads/" xmlns="http://www.loc.gov/MARC21/slim" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="mads tef">
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/tef:thesisRecord">
		<record xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/MARC21/slim http://www.loc.gov/standards/marcxml/schema/MARC21slim.xsd">
			<xsl:element name="leader">
				<xsl:variable name="type" select="tef:dc.type"/>
				<xsl:variable name="leader06">
					<xsl:choose>
						<xsl:when test="$type='collection'">p</xsl:when>
						<xsl:when test="$type='dataset'">m</xsl:when>
						<xsl:when test="$type='event'">r</xsl:when>
						<xsl:when test="$type='image'">k</xsl:when>
						<xsl:when test="$type='interactive resource'">m</xsl:when>
						<xsl:when test="$type='service'">m</xsl:when>
						<xsl:when test="$type='software'">m</xsl:when>
						<xsl:when test="$type='sound'">i</xsl:when>
						<xsl:when test="$type='text'">a</xsl:when>
						<xsl:otherwise>a</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:variable name="leader07">
					<xsl:choose>
						<xsl:when test="$type='collection'">c</xsl:when>
						<xsl:otherwise>m</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:value-of select="concat('      ',$leader06,$leader07,'         3u     ')"/>
			</xsl:element>
			<xsl:variable name="titre">
				<xsl:value-of select="tef:dc.title/tef:mainTitle"/>
			</xsl:variable>
			<xsl:variable name="sous-titre">
				<xsl:value-of select="substring-after($titre, ' : ')"/>
			</xsl:variable>
			<!-- 029 029 029 Numero national de these (tef:NNT) -->
			<datafield tag="029" ind1=" " ind2=" ">
				<subfield code="b">
					<xsl:value-of select="tef:thesisID/tef:NNT"/>
				</subfield>
			</datafield>
			<!-- 200 200 200 -->
			<datafield tag="200" ind1=" " ind2=" ">
				<subfield code="a">
					<xsl:value-of select="substring-before($titre, ' :')"/>
				</subfield>
				<xsl:for-each select="tokenize($sous-titre, ' : ')">
					<subfield code="e">
						<xsl:value-of select="."/>
					</subfield>
				</xsl:for-each>
				<subfield code="f">
					<xsl:for-each select="tef:dc.creator[1]/tef:name">
						<xsl:variable name="auteur200">
							<xsl:value-of select="."/>
						</xsl:variable>
						<xsl:value-of select="substring-after($auteur200, ', ')"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="substring-before($auteur200, ', ')"/>
					</xsl:for-each>
					<xsl:for-each select="tef:dc.creator[position()&gt;1]/tef:name">
						<xsl:variable name="auteur200Plus">
							<xsl:value-of select="."/>
						</xsl:variable>
						<xsl:text>, </xsl:text>
						<xsl:value-of select="substring-after($auteur200Plus, ', ')"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="substring-before($auteur200Plus, ', ')"/>
					</xsl:for-each>
				</subfield>
				<subfield code="g">
					<xsl:for-each select="tef:dc.contributor/tef:marc.thesisAdvisor[1]/tef:name">
						<xsl:variable name="dir200">
							<xsl:value-of select="."/>
						</xsl:variable>
						<xsl:value-of select="substring-after($dir200, ', ')"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="substring-before($dir200, ', ')"/>
					</xsl:for-each>
					<xsl:for-each select="tef:dc.contributor/tef:marc.thesisAdvisor[position()&gt;1]/tef:name">
						<xsl:variable name="dir200Plus">
							<xsl:value-of select="."/>
						</xsl:variable>
						<xsl:text>, </xsl:text>
						<xsl:value-of select="substring-after($dir200Plus, ', ')"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="substring-before($dir200Plus, ', ')"/>
					</xsl:for-each>
				</subfield>
			</datafield>
			<!-- 210 210 210 -->
			<datafield tag="210" ind1=" " ind2=" ">
				<xsl:choose>
					<xsl:when test="tef:dc.publisher">
						<xsl:for-each select="tef:dc.publisher">
							<subfield code="a">
								<xsl:value-of select="tef:place"/>
							</subfield>
							<subfield code="c">
								<xsl:value-of select="tef:name"/>
							</subfield>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<subfield code="a">
							<xsl:text>S.l.</xsl:text>
						</subfield>
						<subfield code="c">
							<xsl:value-of select="tef:thesis.degree/tef:thesis.degree.grantor/tef:name"/>
						</subfield>
					</xsl:otherwise>
				</xsl:choose>
				<subfield code="d">
					<xsl:variable name="date">
						<xsl:value-of select="tef:dc.date/tef:dcterms.dateAccepted"/>
					</xsl:variable>
					<xsl:value-of select="substring($date, 1, 4)"/>
				</subfield>
			</datafield>
			<!-- 314 314 314 Jury -->
			<xsl:if test="tef:dc.contributor/tef:marc.opponent">
				<datafield tag="314" ind1=" " ind2=" ">
					<subfield code="a">
						<xsl:text>Membres du jury : </xsl:text>
						<xsl:for-each select="tef:dc.contributor/tef:marc.opponent[1]/tef:name">
							<xsl:variable name="opponent">
								<xsl:value-of select="."/>
							</xsl:variable>
							<xsl:value-of select="substring-after($opponent, ', ')"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="substring-before($opponent, ', ')"/>
						</xsl:for-each>
						<xsl:for-each select="tef:dc.contributor/tef:marc.opponent[position()&gt;1]/tef:name">
							<xsl:variable name="opponentPlus">
								<xsl:value-of select="."/>
							</xsl:variable>
							<xsl:text>, </xsl:text>
							<xsl:value-of select="substring-after($opponentPlus, ', ')"/>
							<xsl:text> </xsl:text>
							<xsl:value-of select="substring-before($opponentPlus, ', ')"/>
						</xsl:for-each>
					</subfield>
				</datafield>
			</xsl:if>
			<!-- 314 314 314 Ecole doctorale -->
			<xsl:if test="tef:dc.contributor/tef:ecoleDoctorale">
				<datafield tag="314" ind1=" " ind2=" ">
					<subfield code="a">
						<xsl:text>Ecole(s) Doctorale(s) : </xsl:text>
						<xsl:for-each select="tef:dc.contributor/tef:ecoleDoctorale[1]/tef:name">
							<xsl:value-of select="."/>
						</xsl:for-each>
						<xsl:for-each select="tef:dc.contributor/tef:ecoleDoctorale[position()&gt;1]/tef:name">
							<xsl:variable name="opponentPlus">
								<xsl:value-of select="."/>
							</xsl:variable>
							<xsl:text>, </xsl:text>
							<xsl:value-of select="."/>
						</xsl:for-each>
					</subfield>
				</datafield>
			</xsl:if>
			<!-- 314 314 314 Ecole doctorale-->
			<xsl:if test="tef:dc.contributor/tef:marc.researcher">
				<datafield tag="314" ind1=" " ind2=" ">
					<subfield code="a">
						<xsl:text>Unité(s) de recherche : </xsl:text>
						<xsl:for-each select="tef:dc.contributor/tef:marc.researcher[1]/tef:name">
							<xsl:value-of select="."/>
						</xsl:for-each>
						<xsl:for-each select="tef:dc.contributor/tef:marc.researcher[position()&gt;1]/tef:name">
							<xsl:variable name="opponentPlus">
								<xsl:value-of select="."/>
							</xsl:variable>
							<xsl:text>, </xsl:text>
							<xsl:value-of select="."/>
						</xsl:for-each>
					</subfield>
				</datafield>
			</xsl:if>
			<!-- 330 330 330 -->
			<xsl:for-each select="tef:dc.description/tef:abstractF | tef:dc.description/tef:abstractE | tef:dc.description/tef:abstractOther">
				<datafield tag="330" ind1=" " ind2=" ">
					<subfield code="a">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<!-- 359 359 359 -->
			<xsl:for-each select="tef:dc.description/tef:dcterms.tableOfContents">
				<datafield tag="359" ind1=" " ind2=" ">
					<subfield code="a">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<!-- 541 541 541 
			Attention fonction xpath 2.0 
			Attention convertir codes de langues 2 à 3 places -->
			<xsl:for-each select="//tef:dcterms.alternative">
				<xsl:variable name="titretraduit">
					<xsl:value-of select="."/>
				</xsl:variable>
				<xsl:variable name="sous-titretraduit">
					<xsl:value-of select="substring-after($titretraduit, ' : ')"/>
				</xsl:variable>
				<datafield tag="541" ind1=" " ind2=" ">
					<subfield code="a">
						<xsl:choose>
							<xsl:when test="contains($titretraduit, ' : ')">
								<xsl:value-of select="substring-before($titretraduit, ' :')"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="$titretraduit"/>
							</xsl:otherwise>
						</xsl:choose>
					</subfield>
					<xsl:if test="contains($titretraduit, ' : ')">
						<xsl:for-each select="tokenize($sous-titretraduit, ' : ')">
							<subfield code="e">
								<xsl:value-of select="."/>
							</subfield>
						</xsl:for-each>
					</xsl:if>
					<subfield code="z">
						<xsl:value-of select="@xml:lang"/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<!-- Indexation matière -->
			<!-- 610 610 610  -->
			<xsl:for-each select="tef:dc.subject/tef:keyWordF | tef:dc.subject/tef:keyWordOther">
				<datafield tag="610" ind1=" " ind2=" ">
					<subfield code="a">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<!-- Indexation matière contrôlée : 600 601 602 604 605 606 607  -->
			<xsl:for-each select="tef:dc.subject/tef:indexationCTRL">
				<xsl:choose>
					<xsl:when test="*">
						<xsl:apply-templates/>
					</xsl:when>
					<xsl:otherwise>
						<datafield tag="610" ind1=" " ind2=" ">
							<subfield code="a">
								<xsl:value-of select="."/>
							</subfield>
						</datafield>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
			<!-- 700 700 700 -->
			<xsl:variable name="auteur1">
				<xsl:value-of select="tef:dc.creator[position()&lt;2]/tef:name"/>
			</xsl:variable>
			<datafield tag="700" ind1=" " ind2=" ">
				<xsl:if test="tef:dc.creator[position()&lt;2]/tef:autoriteExterne">
					<subfield code="3">
						<xsl:value-of select="tef:dc.creator[position()&lt;2]/tef:autoriteExterne"/>
					</subfield>
				</xsl:if>
				<subfield code="a">
					<xsl:value-of select="substring-before($auteur1, ',')"/>
				</subfield>
				<subfield code="b">
					<xsl:value-of select="substring-after($auteur1, ', ')"/>
				</subfield>
				<subfield code="4">
					<xsl:text>070</xsl:text>
				</subfield>
			</datafield>
			<!-- 701 701 701 -->
			<xsl:for-each select="tef:dc.creator[position()&gt;1]">
				<xsl:variable name="auteurPlus">
					<xsl:value-of select="tef:name"/>
				</xsl:variable>
				<datafield tag="701" ind1=" " ind2=" ">
					<xsl:if test="tef:autoriteExterne">
						<subfield code="3">
							<xsl:value-of select="tef:autoriteExterne"/>
						</subfield>
					</xsl:if>
					<subfield code="a">
						<xsl:value-of select="substring-before($auteurPlus, ',')"/>
					</subfield>
					<subfield code="b">
						<xsl:value-of select="substring-after($auteurPlus, ', ')"/>
					</subfield>
					<subfield code="4">
						<xsl:text>070</xsl:text>
					</subfield>
				</datafield>
			</xsl:for-each>
			<!-- 702 702 702 -->
			<xsl:for-each select="tef:dc.contributor/tef:marc.thesisAdvisor">
				<xsl:variable name="dir702">
					<xsl:value-of select="tef:name"/>
				</xsl:variable>
				<datafield tag="702" ind1=" " ind2=" ">
					<xsl:if test="tef:autoriteExterne">
						<subfield code="3">
							<xsl:value-of select="tef:autoriteExterne"/>
						</subfield>
					</xsl:if>
					<subfield code="a">
						<xsl:value-of select="substring-before($dir702, ',')"/>
					</subfield>
					<subfield code="b">
						<xsl:value-of select="substring-after($dir702, ', ')"/>
					</subfield>
					<subfield code="4">
						<xsl:text>727</xsl:text>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:date">
				<datafield tag="260" ind1=" " ind2=" ">
					<subfield code="c">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:description">
				<datafield tag="520" ind1=" " ind2=" ">
					<subfield code="a">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:format">
				<datafield tag="856" ind1=" " ind2=" ">
					<subfield code="q">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:identifier">
				<datafield tag="024" ind1="8" ind2=" ">
					<subfield code="a">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:language">
				<datafield tag="546" ind1=" " ind2=" ">
					<subfield code="a">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:publisher">
				<datafield tag="260" ind1=" " ind2=" ">
					<subfield code="b">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:relation">
				<datafield tag="787" ind1="0" ind2=" ">
					<subfield code="n">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:rights">
				<datafield tag="540" ind1=" " ind2=" ">
					<subfield code="a">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:source">
				<datafield tag="786" ind1="0" ind2=" ">
					<subfield code="n">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:subject">
				<datafield tag="653" ind1=" " ind2=" ">
					<subfield code="a">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:title[1]">
				<datafield tag="245" ind1="0" ind2="0">
					<subfield code="a">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:title[position()>1]">
				<datafield tag="246" ind1="3" ind2="3">
					<subfield code="a">
						<xsl:value-of select="."/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<xsl:for-each select="//dc:type">
				<datafield tag="655" ind1="7" ind2=" ">
					<subfield code="a">
						<xsl:value-of select="."/>
					</subfield>
					<subfield code="2">local</subfield>
				</datafield>
			</xsl:for-each>
		</record>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauPersonne">
		<datafield tag="600" ind1="" ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
		</datafield>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauCollectivite">
		<datafield tag="601" ind1="" ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
		</datafield>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauFamille">
		<datafield tag="602" ind1="" ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
		</datafield>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauAuteurTitre">
		<datafield tag="604" ind1="" ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
		</datafield>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauTitre">
		<datafield tag="605" ind1="" ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
		</datafield>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauNomCommun">
		<datafield tag="606" ind1="" ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
		</datafield>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauNomGeographique">
		<datafield tag="607" ind1="" ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
			<subfield code="2">
			<xsl:text>Rameau</xsl:text>
		</subfield>
			<xsl:call-template name="Rameau$2"/>
		</datafield>
	</xsl:template>
	<xsl:template match="tef:elementdEntree">
		<xsl:if test="@autoriteExterne">
			<subfield code="3">
				<xsl:value-of select="@autoriteExterne"/>
			</subfield>
		</xsl:if>
		<subfield code="a">
			<xsl:value-of select="."/>
		</subfield>
	</xsl:template>
	<xsl:template match="tef:subdivision">
		<xsl:if test="@autoriteExterne">
			<subfield code="3">
				<xsl:value-of select="@autoriteExterne"/>
			</subfield>
		</xsl:if>
		<xsl:variable name="subzone">
			<xsl:if test=".[@type='autrePartieDuNom'][ancestor::tef:vedetteRameauPersonne]">b</xsl:if>
			<xsl:if test=".[@type='qualificatifsSaufDates']">j</xsl:if>
			<xsl:if test=".[@type='chiffresRomains']">j</xsl:if>
			<xsl:if test=".[@type='dates']">j</xsl:if>
			<xsl:if test=".[@type='formeDeveloppeeInitialesPrenom']">j</xsl:if>
			<xsl:if test=".[@type='adresseAffiliation']">j</xsl:if>
			<xsl:if test=".[@type='subdivisionOuNom']">j</xsl:if>
			<xsl:if test=".[@type='ajoutOuQualificatif']">j</xsl:if>
			<xsl:if test=".[@type='numeroCongresSession']">j</xsl:if>
			<xsl:if test=".[@type='lieuCongres']">j</xsl:if>
			<xsl:if test=".[@type='dateCongres']">j</xsl:if>
			<xsl:if test=".[@type='elementRejete']">j</xsl:if>
			<xsl:if test=".[@type='autrePartieDuNom'][ancestor::tef:vedetteRameauCollectivite]">ppppp</xsl:if>
			<xsl:if test=".[@type='numeroDePartie']">j</xsl:if>
			<xsl:if test=".[@type='nomDePartie']">j</xsl:if>
			<xsl:if test=".[@type='dateDePublication']">j</xsl:if>
			<xsl:if test=".[@type='sousVedetteDeForme']">j</xsl:if>
			<xsl:if test=".[@type='langue']">j</xsl:if>
			<xsl:if test=".[@type='autresInformations']">j</xsl:if>
			<xsl:if test=".[@type='versionOuDate']">j</xsl:if>
			<xsl:if test=".[@type='instrumentMusical']">j</xsl:if>
			<xsl:if test=".[@type='numeroMorceauMusique']">j</xsl:if>
			<xsl:if test=".[@type='clefMusique']">j</xsl:if>
			<xsl:if test=".[@type='arrangementMusique']">j</xsl:if>
			<xsl:if test=".[@type='subdivisionDeForme']">j</xsl:if>
			<xsl:if test=".[@type='subdivisionDeSujet']">j</xsl:if>
			<xsl:if test=".[@type='subdivisionGeographique']">y</xsl:if>
			<xsl:if test=".[@type='subdivisionChronologique']">j</xsl:if>
		</xsl:variable>
		<subfield>
			<xsl:attribute name="code"><xsl:value-of select="$subzone"/></xsl:attribute>
			<xsl:value-of select="."/>
		</subfield>
	</xsl:template>
	<xsl:template name="Rameau$2">
		<subfield code="2">
			<xsl:text>Rameau</xsl:text>
		</subfield>
	</xsl:template>
</xsl:stylesheet>
