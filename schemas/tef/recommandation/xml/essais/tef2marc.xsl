<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:tef="http://www.abes.fr/abes/documents/tef" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:mads="http://www.loc.gov/mads/" xmlns="http://www.loc.gov/MARC21/slim" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="mads tef">
	<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
	<!-- attention, si différentes valeurs pour attribut @complet de edition, il faut créer différentes notices -->
	<xsl:template match="/tef:thesisRecord">
		<record xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/MARC21/slim http://www.loc.gov/standards/marcxml/schema/MARC21slim.xsd">
			<xsl:element name="leader">
				<!-- marcxml exige 4500 à la fin, ce qu'interdit unimarc.
					ESSAYER OUTIL PORTUGAIS  !!!!!!!!!!!!!!!!!!!!!!!!!!!!! 
-->
				<xsl:variable name="type" select="tef:dc.type"/>
				<xsl:variable name="leader06">a</xsl:variable>
				<xsl:variable name="leader07">m</xsl:variable>
				<xsl:value-of select="concat('00000c',$leader06,$leader07,'0022000000004500')"/>
			</xsl:element>
			<xsl:variable name="titre">
				<xsl:value-of select="tef:dc.title/tef:mainTitle"/>
			</xsl:variable>
			<xsl:variable name="sous-titre">
				<xsl:value-of select="substring-after($titre, ' : ')"/>
			</xsl:variable>
			<!-- 001 001 001 Numero de notice -->
			<controlfield tag="001">
				<xsl:value-of select="@recordID"/>
			</controlfield>
			<!-- 029 029 029 Numero national de these (tef:NNT) -->
			<datafield tag="029" ind1=" " ind2=" ">
				<subfield code="b">
					<xsl:value-of select="tef:thesisID/tef:NNT"/>
				</subfield>
			</datafield>
			<!-- 035 035 035 Numero de notice d'origine, avant import -->
			<datafield tag="035" ind1=" " ind2=" ">
				<subfield code="a">
					<xsl:text>(</xsl:text>
					<xsl:value-of select="tef:recordInfo/tef:recordOrigin/@institution"/>
					<xsl:text>)</xsl:text>
					<xsl:value-of select="tef:recordInfo/tef:recordOrigin/@recordID"/>
				</subfield>
			</datafield>
			<!-- 100 100 100 attention à l'encodage : comment prévoir UTF-8 ? -->
			<datafield tag="100" ind1=" " ind2=" ">
				<xsl:variable name="recordCreation" select="tef:recordInfo/tef:recordCreation/@creationDate"/>
				<xsl:variable name="recordCreationNormal" select="translate($recordCreation, '-', '')"/>
				<xsl:variable name="date">
					<xsl:value-of select="//tef:dc.date/tef:dcterms.dateAccepted"/>
				</xsl:variable>
				<xsl:variable name="thesisDate" select="substring($date, 1, 4)"/>
				<xsl:variable name="dateCode">d</xsl:variable>
				<xsl:variable name="target">k  </xsl:variable>
				<xsl:variable name="govPublication">y</xsl:variable>
				<xsl:variable name="modifiedCode">0</xsl:variable>
				<xsl:variable name="catLanguage">fre</xsl:variable>
				<xsl:variable name="translitCode">y</xsl:variable>
				<xsl:variable name="charSet">0103</xsl:variable>
				<xsl:variable name="addCharSet">05</xsl:variable>
				<xsl:variable name="scriptTitle">ba</xsl:variable>
				<subfield code="a">
					<xsl:value-of select="concat(translate($recordCreation, '-', ''), $dateCode, $thesisDate, '    ', $target, $govPublication, $modifiedCode, $catLanguage, $translitCode, $charSet, $addCharSet, $scriptTitle)"/>
				</subfield>
			</datafield>
			<!-- 101 101 101 éventuellement répétable en cas de cotutelle internationale -->
			<datafield tag="101" ind1=" " ind2=" ">
				<subfield code="a">
					<xsl:value-of select="tef:dc.language"/>
				</subfield>
			</datafield>
			<!-- 102 102 102 -->
			<datafield tag="102" ind1=" " ind2=" ">
				<subfield code="a">
					<xsl:text>FR</xsl:text>
				</subfield>
			</datafield>
			<!-- 106 106 106 -->
			<datafield tag="106" ind1=" " ind2=" ">
				<subfield code="a">
					<xsl:text>s</xsl:text>
				</subfield>
			</datafield>
			<!-- 135 135 135 correspondance non établie dans la recommandation pour la position 0-->
			<datafield tag="135" ind1=" " ind2=" ">
				<xsl:variable name="pos0">d</xsl:variable>
				<xsl:variable name="pos1">r</xsl:variable>
				<subfield code="a">
					<xsl:value-of select="$pos0"></xsl:value-of>
					<xsl:value-of select="$pos1"></xsl:value-of>
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
					<xsl:when test="//tef:dc.publisher">
						<xsl:for-each select="//tef:dc.publisher">
							<subfield code="a">
								<xsl:value-of select="tef:place"/>
							</subfield>
							<subfield code="c">
								<xsl:value-of select="tef:name"/>
							</subfield>
						</xsl:for-each>
					</xsl:when>
					<xsl:otherwise>
						<xsl:for-each select="//tef:thesis.degree.grantor">
							<subfield code="a">
								<xsl:text>S. l.</xsl:text>
							</subfield>
							<subfield code="c">
								<xsl:value-of select="tef:name"/>
							</subfield>
						</xsl:for-each>
					</xsl:otherwise>
				</xsl:choose>
				<subfield code="d">
					<xsl:variable name="date">
						<xsl:value-of select="//tef:dc.date/tef:dcterms.dateAccepted"/>
					</xsl:variable>
					<xsl:value-of select="substring($date, 1, 4)"/>
				</subfield>
			</datafield>
			<!-- 230 230 230 compléter la parenthèses avec le nombre de fichiers et la taille)-->
			<datafield tag="230" ind1=" " ind2=" ">
				<subfield code="a">
					<xsl:text>Données informatiques</xsl:text>
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
			<!-- 328 328 328 Note de thèse structurée -->
			<xsl:for-each select="//tef:thesis.degree.grantor">
				<datafield tag="328" ind1=" " ind2="0">
					<subfield code="b">
						<xsl:value-of select="//tef:thesis.degree.level"/>
					</subfield>
					<subfield code="c">
						<xsl:value-of select="//tef:thesis.degree.discipline"/>
					</subfield>
					<subfield code="d">
						<xsl:variable name="date">
							<xsl:value-of select="//tef:dc.date/tef:dcterms.dateAccepted"/>
						</xsl:variable>
						<xsl:value-of select="substring($date, 1, 4)"/>
					</subfield>
					<subfield code="e">
						<xsl:value-of select="./tef:name"/>
					</subfield>
				</datafield>
			</xsl:for-each>
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
			<xsl:for-each select="tef:dc.subject/tef:keyWordF | tef:dc.subject/tef:keyWordOther | tef:dc.coverage/*">
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
			<!-- 801 801 801 -->
			<datafield tag="801" ind1=" " ind2="0">
				<subfield code="b">
					<xsl:value-of select="tef:recordInfo/tef:recordCreation/@institution"/>
				</subfield>
				<xsl:variable name="recordCreation" select="tef:recordInfo/tef:recordCreation/@creationDate"/>
				<subfield code="c">
					<xsl:value-of select="translate($recordCreation, '-', '')"/>
				</subfield>
			</datafield>
			<xsl:if test="tef:recordInfo/tef:recordOrigin">
				<datafield tag="801" ind1=" " ind2="3">
					<subfield code="b">
						<xsl:value-of select="tef:recordInfo/tef:recordOrigin/@institution"/>
					</subfield>
					<xsl:variable name="recordImport" select="tef:recordInfo/tef:recordOrigin/@importDate"/>
					<subfield code="c">
						<xsl:value-of select="translate($recordImport, '-', '')"/>
					</subfield>
				</datafield>
			</xsl:if>
			<xsl:for-each select="tef:recordInfo/tef:recordModification">
				<datafield tag="801" ind1=" " ind2="2">
					<subfield code="b">
						<xsl:value-of select="@institution"/>
					</subfield>
					<xsl:variable name="recordModification" select="@modificationDate"/>
					<subfield code="c">
						<xsl:value-of select="translate($recordModification, '-', '')"/>
					</subfield>
				</datafield>
			</xsl:for-each>
			<!-- 856 856 856 -->
			<xsl:for-each select="tef:editionsGroupe/tef:edition">
				<datafield tag="856" ind1=" " ind2=" ">
					<subfield code="q">
						<xsl:value-of select="tef:dcterms.medium"/>
					</subfield>
					<subfield code="s">
						<xsl:variable name="taille">
							<xsl:value-of select="tef:dcterms.extent"/>
						</xsl:variable>
						<xsl:value-of select="substring-before($taille, ' : ')"/>
						<xsl:choose>
							<xsl:when test="substring-before($taille, ' : ')='1'">
								<xsl:text> fichier : </xsl:text>
							</xsl:when>
							<xsl:otherwise>
								<xsl:text> fichiers : </xsl:text>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:value-of select="substring-after($taille, ' : ')"/>
					</subfield>
					<xsl:for-each select="tef:URI">
						<subfield code="u">
							<xsl:value-of select="."/>
						</subfield>
					</xsl:for-each>
					<xsl:if test="//tef:thesisID/tef:nationalThesisPID">
						<subfield code="u">
							<xsl:value-of select="//tef:thesisID/tef:nationalThesisPID"/>
						</subfield>
					</xsl:if>
				</datafield>
			</xsl:for-each>
			<!-- Eventuellement					
					<xsl:for-each select="tef:otherEditionID ">
						<subfield code="f">
							<xsl:value-of select="."/>
						</subfield>
					</xsl:for-each>
				
				</xsl:for-each>	-->
		</record>
	</xsl:template>
	<!-- Templates pour Rameau -->
	<xsl:template match="//tef:vedetteRameauPersonne">
		<datafield tag="600" ind1=" " ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
			<xsl:call-template name="Rameau$2"/>
		</datafield>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauCollectivite">
		<datafield tag="601" ind1=" " ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
			<xsl:call-template name="Rameau$2"/>
		</datafield>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauFamille">
		<datafield tag="602" ind1=" " ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
			<xsl:call-template name="Rameau$2"/>
		</datafield>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauAuteurTitre">
		<datafield tag="604" ind1=" " ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
			<xsl:call-template name="Rameau$2"/>
		</datafield>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauTitre">
		<datafield tag="605" ind1=" " ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
			<xsl:call-template name="Rameau$2"/>
		</datafield>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauNomCommun">
		<datafield tag="606" ind1=" " ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
			<xsl:call-template name="Rameau$2"/>
		</datafield>
	</xsl:template>
	<xsl:template match="//tef:vedetteRameauNomGeographique">
		<datafield tag="607" ind1=" " ind2=" ">
			<xsl:apply-templates select="tef:elementdEntree"/>
			<xsl:apply-templates select="tef:subdivision"/>
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
			<xsl:if test=".[@type='qualificatifsSaufDates']">c</xsl:if>
			<xsl:if test=".[@type='chiffresRomains']">d</xsl:if>
			<xsl:if test=".[@type='dates']">f</xsl:if>
			<xsl:if test=".[@type='formeDeveloppeeInitialesPrenom']">g</xsl:if>
			<xsl:if test=".[@type='adresseAffiliation']">p</xsl:if>
			<xsl:if test=".[@type='subdivisionOuNom']">b</xsl:if>
			<xsl:if test=".[@type='ajoutOuQualificatif']">c</xsl:if>
			<xsl:if test=".[@type='numeroCongresSession']">d</xsl:if>
			<xsl:if test=".[@type='lieuCongres']">e</xsl:if>
			<xsl:if test=".[@type='dateCongres']">f</xsl:if>
			<xsl:if test=".[@type='elementRejete']">g</xsl:if>
			<xsl:if test=".[@type='autrePartieDuNom'][ancestor::tef:vedetteRameauCollectivite]">h</xsl:if>
			<xsl:if test=".[@type='numeroDePartie']">h</xsl:if>
			<xsl:if test=".[@type='nomDePartie']">i</xsl:if>
			<xsl:if test=".[@type='dateDePublication']">k</xsl:if>
			<xsl:if test=".[@type='sousVedetteDeForme']">l</xsl:if>
			<xsl:if test=".[@type='langue']">m</xsl:if>
			<xsl:if test=".[@type='autresInformations']">n</xsl:if>
			<xsl:if test=".[@type='versionOuDate']">q</xsl:if>
			<xsl:if test=".[@type='instrumentMusical']">r</xsl:if>
			<xsl:if test=".[@type='numeroMorceauMusique']">s</xsl:if>
			<xsl:if test=".[@type='clefMusique']">u</xsl:if>
			<xsl:if test=".[@type='arrangementMusique']">w</xsl:if>
			<xsl:if test=".[@type='subdivisionDeForme']">j</xsl:if>
			<xsl:if test=".[@type='subdivisionDeSujet']">x</xsl:if>
			<xsl:if test=".[@type='subdivisionGeographique']">y</xsl:if>
			<xsl:if test=".[@type='subdivisionChronologique']">z</xsl:if>
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
