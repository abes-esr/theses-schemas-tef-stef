<?xml version="1.0" encoding="UTF-8"?>
<!--   ABES - creation le avril 2013
Exemple de conversion d'un logicield de gestion des doctorants vers TEF/STEF.
Le point de départ : informations formatées selon un nommage des champs proposé par l'abes.
Le point d'arrivée : métadonnées incomplètes, qui respectent le noyau TEF/STEF imposé à l'entrée de STEP et STAR
 -->
<!--
!!! ATTENTION : dans le foramt tabule pour les éléments répétables : répéter à l'identique l'entête de la colonne ou des colonnes (si l'élément est structuré, par exemple : nom | prenom | ppn)
<dc:subject> : MOT_CLE 
<tef:directeurThese> : NOM_DIRECTEUR | PRENOM_DIRECTEUR | PPN_DIRECTEUR
<tef:membreJury> : NOM_MEMBRE_JURY | PRENOM_MEMBRE_JURY 
<tef:rapporteur> : NOM_RAPPORTEUR | PRENOM_NOM_RAPPORTEUR
<tef:partenaireRecherche type="equipeRecherche"> : LIBELLE_EQUIPE_RECHERCHE | CODE_EQUIPE_RECHERCHE | PPN_EQUIPE_RECHERCHE
<tef:partenaireRecherche type="laboratoire"> : LIBELLE_LABORATOIRE | CODE_LABORATOIRE | PPN_LABORATOIRE
<tef:partenaireRecherche type="entreprise"> : LIBELLE_ENTREPRISE	| PPN_ENTREPRISE
<tef:oaiSetSpec> :DOMAINE
-->
<xsl:stylesheet xmlns:suj="http://www.theses.fr/namespace/sujets" xmlns:tef="http://www.abes.fr/abes/documents/tef" xmlns:local="http://www.local.univ.fr/theses" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:mets="http://www.loc.gov/METS/" xmlns:metsRights="http://cosimo.stanford.edu/sdr/metsrights/" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<!-- Paramètres fixés -->
	<xsl:param name="etablissement">FOR3</xsl:param>
	<xsl:param name="nom_etablissement">Libellé de l'établissement</xsl:param>
	<xsl:param name="autoriteSudoc_etabSoutenance">12345678</xsl:param>
	<xsl:param name="UAI_etabSoutenance">UAI_123456</xsl:param>
	<!-- Paramètres par défaut, éventuellement à modifier dans l'interface STAR -->
	<xsl:param name="langue_titre_defaut">fr</xsl:param>
	<xsl:param name="langue_resume_defaut">fr</xsl:param>
	<xsl:param name="langue_mot-cle_defaut">fr</xsl:param>
	<xsl:param name="langue_de_these">fr</xsl:param>
	<xsl:template match="/">
		<xsl:apply-templates select="//THESE"/>
	</xsl:template>
	<!-- Thèse -->
	<xsl:template match="THESE">
		<!-- dans le cas ou EXPORTIZER est utilisé, remplacer "THESE" par "R1"  -->
		<!-- -->
	<xsl:result-document href="out/{$etablissement}_{CODE_ETUDIANT}.xml">
		<!-- -->
		<mets:mets xsi:schemaLocation="http://www.loc.gov/METS/ http://www.abes.fr/abes/documents/stef/stef_schemas.xsd" ID="{$etablissement}_{CODE_ETUDIANT}" OBJID="{CODE_ETUDIANT}">
			<!-- Création du bloc de md desciptives de la thèse -->
			<mets:dmdSec ID="{$etablissement}.IMPORT.DESCRIPTION_BIBLIOGRAPHIQUE">
				<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_desc_these">
					<mets:xmlData>
						<tef:thesisRecord>
							<dc:title xml:lang="{$langue_titre_defaut}">
								<xsl:value-of select="TITRE"/>
							</dc:title>
							<xsl:for-each select="MOT_CLE">
								<dc:subject xml:lang="{$langue_mot-cle_defaut}">
									<xsl:value-of select="text()"/>
								</dc:subject>
							</xsl:for-each>
							<dcterms:abstract xml:lang="{$langue_resume_defaut}">
								<xsl:value-of select="RESUME"/>
							</dcterms:abstract>
							<dc:type xsi:type="dcterms:DCMIType">Text</dc:type>
							<dc:type>Electronic Thesis or Dissertation</dc:type>
							<dc:language xsi:type="dcterms:RFC3066">
								<xsl:value-of select="$langue_de_these"/>
							</dc:language>
						</tef:thesisRecord>
					</mets:xmlData>
				</mets:mdWrap>
			</mets:dmdSec>
			<!-- Cas 1 : md descriptives de la version complète d'archivage-->
			<mets:dmdSec ID="{$etablissement}.IMPORT.VERSION_COMPLETE.DESCRIPTION.EDITION_ARCHIVAGE">
				<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_desc_edition">
					<mets:xmlData>
						<tef:edition>
							<dc:identifier xsi:type="dcterms:URI"/>
						</tef:edition>
					</mets:xmlData>
				</mets:mdWrap>
			</mets:dmdSec>
			<!-- Pas de md descriptives de l'édition -->
			<!-- Création du bloc de md administratives de la thèse -->
			<mets:amdSec>
				<mets:techMD ID="{$etablissement}.IMPORT.ADMINISTRATION">
					<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_admin_these">
						<mets:xmlData>
							<tef:thesisAdmin>
								<!-- tef:auteur -->
								<tef:auteur>
									<xsl:choose>
										<xsl:when test="NOM_USUEL_ETUDIANT/text()!= ''">
											<tef:nom>
												<xsl:value-of select="NOM_USUEL_ETUDIANT"/>
											</tef:nom>
											<tef:prenom>
												<xsl:value-of select="PRENOM_ETUDIANT"/>
											</tef:prenom>
											<xsl:if test="NOM_NAISSANCE_ETUDIANT/text()!=''">
												<tef:nomDeNaissance>
													<xsl:value-of select="NOM_NAISSANCE_ETUDIANT"/>
												</tef:nomDeNaissance>
											</xsl:if>
										</xsl:when>
										<xsl:otherwise>
											<tef:nom>
												<xsl:value-of select="NOM_NAISSANCE_ETUDIANT"/>
											</tef:nom>
											<tef:prenom>
												<xsl:value-of select="PRENOM_ETUDIANT"/>
											</tef:prenom>
										</xsl:otherwise>
									</xsl:choose>
											<xsl:if test="DATE_NAISSANCE_ETUDIANT!=''">
									<tef:dateNaissance>
										<xsl:call-template name="reformater_date">
											<xsl:with-param name="date" select="DATE_NAISSANCE_ETUDIANT"/>
										</xsl:call-template>
									</tef:dateNaissance></xsl:if>
									<xsl:if test="NATIONALITE_ETUDIANT!=''">
									<tef:nationalite scheme="ISO-3166-1">
										<xsl:value-of select="NATIONALITE_ETUDIANT"/>
									</tef:nationalite></xsl:if>
									<suj:adresseDoctorant>
										<xsl:value-of select="ADRESSE_ETUDIANT"/>
									</suj:adresseDoctorant>
									<suj:codePostalDoctorant>
										<xsl:value-of select="CODE_POSTAL_ETUDIANT"/>
									</suj:codePostalDoctorant>
									<suj:villeAdresseDoctorant>
										<xsl:value-of select="VILLE_ETUDIANT"/>
									</suj:villeAdresseDoctorant>
									<suj:paysAdresseDoctorant>
										<xsl:value-of select="PAYS_ETUDIANT"/>
									</suj:paysAdresseDoctorant>
									<suj:telephoneDoctorant>
										<xsl:value-of select="TELEPHONE_ETUDIANT"/>
									</suj:telephoneDoctorant>
										<xsl:if test="MAIL_PERSONNEL_ETUDIANT!=''">
									<tef:autoriteExterne autoriteSource="mailPerso">
										<xsl:value-of select="MAIL_PERSONNEL_ETUDIANT"/>
									</tef:autoriteExterne></xsl:if>
											<xsl:if test="MAIL_INSTITUTIONNEL_ETUDIANT!=''">
									<tef:autoriteExterne autoriteSource="mailPro">
										<xsl:value-of select="MAIL_INSTITUTIONNEL_ETUDIANT"/>
									</tef:autoriteExterne></xsl:if>
										<xsl:if test="CODE_ETUDIANT!=''">
																		<tef:autoriteExterne autoriteSource="CODE_ETUDIANT">
										<xsl:value-of select="CODE_ETUDIANT"/>
									</tef:autoriteExterne></xsl:if>	<xsl:if test="CODE_INE!=''">
									<tef:autoriteExterne autoriteSource="INE">
										<xsl:value-of select="CODE_INE"/>
									</tef:autoriteExterne></xsl:if>
								</tef:auteur>
								<!-- Soutenance -->
								<xsl:if test="DATE_SOUTENANCE!=''">
								<dcterms:dateAccepted xsi:type="dcterms:W3CDTF">
									<xsl:call-template name="reformater_date">
										<xsl:with-param name="date" select="DATE_SOUTENANCE"/>
									</xsl:call-template>
								</dcterms:dateAccepted></xsl:if>
								<tef:thesis.degree>
									<tef:thesis.degree.discipline xml:lang="fr">
										<xsl:value-of select="DISCIPLINE"/>
									</tef:thesis.degree.discipline>
									<!--Etablissement de soutenance-->
									<tef:thesis.degree.grantor>
										<tef:nom>
											<xsl:value-of select="$nom_etablissement"/>
										</tef:nom>	
										<tef:autoriteExterne autoriteSource="UAI">
											<xsl:value-of select="$UAI_etabSoutenance"/>
										</tef:autoriteExterne>
										<tef:autoriteExterne autoriteSource="Sudoc">
											<xsl:value-of select="$autoriteSudoc_etabSoutenance"/>
										</tef:autoriteExterne>
									</tef:thesis.degree.grantor>
									<!--Etablissement de cotutelle-->
									<xsl:if test="LIBELLE_ETAB_COTUTELLE!=''">
									<tef:thesis.degree.grantor>
										<tef:nom>
											<xsl:value-of select="LIBELLE_ETAB_COTUTELLE"/>
										</tef:nom>
									</tef:thesis.degree.grantor></xsl:if>
									<tef:thesis.degree.level>Doctorat</tef:thesis.degree.level>
									<!-- STEP facultatif : date de 1ère inscription en doctorat -->
									<xsl:if test="DATE_INSCRIPTION_DOCTORAT_1_ANNEE!=''">
										<suj:datePremiereInscriptionDoctorat>
											<xsl:call-template name="reformater_date">
												<xsl:with-param name="date" select="DATE_INSCRIPTION_DOCTORAT_1_ANNEE"/>
											</xsl:call-template>
										</suj:datePremiereInscriptionDoctorat>
									</xsl:if>
									<!-- STEP facultatif  : date de première inscription dans l'établissement (peut-être la même ou antérieure à la date de 1ère inscription en doctorat)-->
									<xsl:if test="DATE_INSCRIPTION_ETAB!=''">
										<suj:dateInscriptionEtab>
											<xsl:call-template name="reformater_date">
												<xsl:with-param name="date" select="DATE_INSCRIPTION_ETAB"/>
											</xsl:call-template>
										</suj:dateInscriptionEtab>
									</xsl:if>
									<!-- STEP facultatif  : contract doctoral : oui / non-->
									<xsl:choose>
									
									<xsl:when test="CONTRAT_DOCTORAL/text()!=''">
										<suj:contratDoctoral>
											<xsl:value-of select="text()"/>
										</suj:contratDoctoral>
									</xsl:when>
									<xsl:otherwise>	<suj:contratDoctoral>non</suj:contratDoctoral></xsl:otherwise></xsl:choose>
								</tef:thesis.degree>
								<xsl:choose>
									<xsl:when test="THESE_TRAVAUX!=''">	<tef:theseSurTravaux>
									<xsl:value-of select="THESE_TRAVAUX"/>
								</tef:theseSurTravaux></xsl:when>
									<xsl:otherwise>	<tef:theseSurTravaux>non						
								</tef:theseSurTravaux></xsl:otherwise>
								</xsl:choose>							
								<tef:avisJury>oui</tef:avisJury>
								<!-- Directeur(s)-->
								<xsl:for-each select="NOM_DIRECTEUR">
								<xsl:if test="text()!=''">
									<tef:directeurThese>
										<tef:nom>
											<xsl:value-of select="text()"/>
										</tef:nom>
										<tef:prenom>
											<xsl:value-of select="following-sibling::PRENOM_DIRECTEUR[1]"/>
										</tef:prenom>
														<xsl:if test="following-sibling::PPN_DIRECTEUR[1]!=''">
										<tef:autoriteExterne autoriteSource="Sudoc">
											<xsl:value-of select="following-sibling::PPN_DIRECTEUR[1]"/>
										</tef:autoriteExterne></xsl:if>
									</tef:directeurThese></xsl:if>
								</xsl:for-each>
								<!-- Président jury-->
								<xsl:if test="NOM_PRESIDENT_JURY!=''"><tef:presidentJury>
									<tef:nom>
										<xsl:value-of select="NOM_PRESIDENT_JURY"/>
									</tef:nom>
									<tef:prenom>
										<xsl:value-of select="PRENOM_PRESIDENT_JURY"/>
									</tef:prenom>
								</tef:presidentJury></xsl:if>
							<!-- Membre(s) jury-->	<xsl:for-each select="NOM_MEMBRE_JURY">			<xsl:if test="text()!=''">
									
									<tef:membreJury>
										<tef:nom>
											<xsl:value-of select="text()"/>
										</tef:nom>
										<tef:prenom>
											<xsl:value-of select="following-sibling::PRENOM_MEMBRE_JURY[1]"/>
										</tef:prenom>
									</tef:membreJury></xsl:if>
								</xsl:for-each>
								<!-- Rapporteur(s)-->
								<xsl:for-each select="NOM_RAPPORTEUR">
												<xsl:if test="text()!=''"><tef:rapporteur>
										<tef:nom>
											<xsl:value-of select="text()"/>
										</tef:nom>
										<tef:prenom>
											<xsl:value-of select="following-sibling::PRENOM_RAPPORTEUR[1]"/>
										</tef:prenom>
									</tef:rapporteur></xsl:if>
								</xsl:for-each>
								<!-- Ecoles doctorales -->
								<tef:ecoleDoctorale>
									<tef:nom>
										<xsl:value-of select="LIBELLE_ECOLE_DOCTORALE"/>
									</tef:nom>
									<xsl:if test="CODE_ECOLE_DOCTORALE/text()!=''">
										<tef:autoriteExterne autoriteSource="AFDUR">
											<xsl:value-of select="CODE_ECOLE_DOCTORALE"/>
										</tef:autoriteExterne>
									</xsl:if>
									<xsl:if test="PPN_ECOLE_DOCTORALE/text()!=''">
										<tef:autoriteExterne autoriteSource="Sudoc">
											<xsl:value-of select="PPN_ECOLE_DOCTORALE"/>
										</tef:autoriteExterne>
									</xsl:if>
								</tef:ecoleDoctorale>
								<!--Partenaire(s) de recherche-->
								<!-- Equipes de recherche -->
								<xsl:for-each select="LIBELLE_EQUIPE_RECHERCHE">
									<xsl:if test="text()!=''">
									<tef:partenaireRecherche type="equipeRecherche">
										<tef:nom>
											<xsl:value-of select="text()"/>
										</tef:nom>
										<xsl:if test="following-sibling::CODE_EQUIPE_RECHERCHE[1]/text()!=''">
											<tef:autoriteExterne autoriteSource="AFDUR">
												<xsl:value-of select="following-sibling::CODE_EQUIPE_RECHERCHE[1]"/>
											</tef:autoriteExterne>
										</xsl:if>
										<xsl:if test="following-sibling::PPN_EQUIPE_RECHERCHE[1]/text()!=''">
											<tef:autoriteExterne autoriteSource="AFDUR">
												<xsl:value-of select="following-sibling::PPN_EQUIPE_RECHERCHE[1]"/>
											</tef:autoriteExterne>
										</xsl:if>
									</tef:partenaireRecherche></xsl:if>
								</xsl:for-each>
								<xsl:for-each select="LIBELLE_LABORATOIRE">
										<xsl:if test="text()!=''">
									<tef:partenaireRecherche type="laboratoire">
										<tef:nom>
											<xsl:value-of select="text()"/>
										</tef:nom>
										<xsl:if test="following-sibling::CODE_LABORATOIRE[1]/text()!=''">
											<tef:autoriteExterne autoriteSource="AFDUR">
												<xsl:value-of select="following-sibling::CODE_LABORATOIRE"/>
											</tef:autoriteExterne>
										</xsl:if>
										<xsl:if test="following-sibling::PPN_LABORATOIRE[1]/text()!=''">
											<tef:autoriteExterne autoriteSource="Sudoc">
												<xsl:value-of select="following-sibling::PPN_LABORATOIRE[1]"/>
											</tef:autoriteExterne>
										</xsl:if>
									</tef:partenaireRecherche></xsl:if>
								</xsl:for-each>
								<xsl:for-each select="LIBELLE_ENTREPRISE">
									<xsl:if test="text()!=''">
									<tef:partenaireRecherche type="entreprise">
										<tef:nom>
											<xsl:value-of select="text()"/>
										</tef:nom>
										<xsl:if test="following-sibling::PPN_ENTREPRISE[1]/text()!=''">
											<tef:autoriteExterne autoriteSource="Sudoc">
												<xsl:value-of select="following-sibling::PPN_ENTREPRISE[1]"/>
											</tef:autoriteExterne>
										</xsl:if>
									</tef:partenaireRecherche></xsl:if>
								</xsl:for-each>
								<xsl:for-each select="DOMAINE">
							<xsl:if test="text()!=''">		<tef:oaiSetSpec>
										<xsl:value-of select="text()"/>
									</tef:oaiSetSpec></xsl:if>
								</xsl:for-each>
							</tef:thesisAdmin>
						</mets:xmlData>
					</mets:mdWrap>
				</mets:techMD>
				<!--Déclaration des droits-->
				<!--Déclaration de l'autorisation du chef d'établissement-->
				<mets:rightsMD ID="{$etablissement}.IMPORT.DROITS_UNIVERSITE">
					<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_droits_etablissement_these">
						<mets:xmlData>
							<metsRights:RightsDeclarationMD RIGHTSCATEGORY="CONTRACTUAL">
								<!-- Autorisations sur internet-->
								<metsRights:Context CONTEXTCLASS="GENERAL PUBLIC">
									<metsRights:Permissions DISPLAY="true" DUPLICATE="true" PRINT="true" COPY="true" MODIFY="false" DELETE="false"/>
									<xsl:if test="DATE_FIN_CONFIDENTIALITE/text()!=''">
										<!--déclaration d'une confidentialité de la date de soutenance à la date de fin de confidentialité-->
										<metsRights:Constraints CONSTRAINTTYPE="TIME">
											<metsRights:ConstraintDescription>
												<xsl:text>confidentialité </xsl:text>
												<xsl:call-template name="reformater_date">
													<xsl:with-param name="date" select="DATE_SOUTENANCE"/>
												</xsl:call-template>
												<xsl:text> </xsl:text>
												<xsl:call-template name="reformater_date">
													<xsl:with-param name="date" select="DATE_FIN_CONFIDENTIALITE"/>
												</xsl:call-template>
											</metsRights:ConstraintDescription>
										</metsRights:Constraints>
									</xsl:if>
								</metsRights:Context>
							</metsRights:RightsDeclarationMD>
							<!-- Autorisations sur intranet-->
							<metsRights:Context CONTEXTCLASS="INSTITUTIONAL AFFILIATE">
								<metsRights:Permissions DISPLAY="true" DUPLICATE="true" PRINT="true" COPY="true" MODIFY="false" DELETE="false"/>
								<xsl:if test="DATE_FIN_CONFIDENTIALITE/text()!=''">
									<!--déclaration d'une confidentialité de la date de soutenance à la date de fin de confidentialité-->
									<metsRights:Constraints CONSTRAINTTYPE="TIME">
										<metsRights:ConstraintDescription>
											<xsl:text>confidentialité </xsl:text>
											<xsl:call-template name="reformater_date">
												<xsl:with-param name="date" select="DATE_SOUTENANCE"/>
											</xsl:call-template>
											<xsl:text> </xsl:text>
											<xsl:call-template name="reformater_date">
												<xsl:with-param name="date" select="DATE_FIN_CONFIDENTIALITE"/>
											</xsl:call-template>
										</metsRights:ConstraintDescription>
									</metsRights:Constraints>
								</xsl:if>
							</metsRights:Context>
						</mets:xmlData>
					</mets:mdWrap>
				</mets:rightsMD>
				<!--Déclaration de l'autorisation de l'auteur-->
				<mets:rightsMD ID="{$etablissement}.IMPORT.DROITS_DOCTORANT">
					<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_droits_auteur_these">
						<mets:xmlData>
							<metsRights:RightsDeclarationMD RIGHTSCATEGORY="CONTRACTUAL">
								<!-- Autorisations sur internet-->
								<metsRights:Context CONTEXTCLASS="GENERAL PUBLIC">
									<metsRights:Permissions DISPLAY="true" DUPLICATE="true" PRINT="true" COPY="true" MODIFY="false" DELETE="false"/>
									<xsl:if test="DATE_FIN_EMBARGO/text()!=''">
										<!--déclaration d'un embargo de la date de soutenance à la date de fin d'embargo-->
										<metsRights:Constraints CONSTRAINTTYPE="TIME">
											<metsRights:ConstraintDescription>
												<xsl:call-template name="reformater_date">
													<xsl:with-param name="date" select="DATE_SOUTENANCE"/>
												</xsl:call-template>
												<xsl:text> </xsl:text>
												<xsl:call-template name="reformater_date">
													<xsl:with-param name="date" select="DATE_FIN_EMBARGO"/>
												</xsl:call-template>
											</metsRights:ConstraintDescription>
										</metsRights:Constraints>
									</xsl:if>
								</metsRights:Context>
								<!-- Autorisations sur intranet-->
								<metsRights:Context CONTEXTCLASS="INSTITUTIONAL AFFILIATE">
									<metsRights:Permissions DISPLAY="true" DUPLICATE="true" PRINT="true" COPY="true" MODIFY="false" DELETE="false"/>
								</metsRights:Context>
							</metsRights:RightsDeclarationMD>
						</mets:xmlData>
					</mets:mdWrap>
				</mets:rightsMD>
				<!--Droits consolidés pour la version complète d'archivage-->
				<mets:rightsMD ID="{$etablissement}.IMPORT.VERSION_COMPLETE.DROITS">
					<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_droits_version">
						<mets:xmlData>
							<metsRights:RightsDeclarationMD RIGHTSCATEGORY="CONTRACTUAL">
								<!-- Autorisations sur internet-->
								<metsRights:Context CONTEXTCLASS="GENERAL PUBLIC">
									<metsRights:Permissions DISPLAY="true" DUPLICATE="true" PRINT="true" COPY="true" MODIFY="false" DELETE="false"/>
									<xsl:choose>
										<xsl:when test="DATE_FIN_CONFIDENTIALITE/text() &gt;= DATE_FIN_EMBARGO/text()">
											<!--droits calculés : confidentialité de la date de soutenance à la date de fin de confidentialité-->
											<metsRights:Constraints CONSTRAINTTYPE="TIME">
												<metsRights:ConstraintDescription>
													<xsl:text>confidentialité </xsl:text>
													<xsl:call-template name="reformater_date">
														<xsl:with-param name="date" select="DATE_SOUTENANCE"/>
													</xsl:call-template>
													<xsl:text> </xsl:text>
													<xsl:call-template name="reformater_date">
														<xsl:with-param name="date" select="DATE_FIN_CONFIDENTIALITE"/>
													</xsl:call-template>
												</metsRights:ConstraintDescription>
											</metsRights:Constraints>
										</xsl:when>
										<xsl:when test="DATE_FIN_CONFIDENTIALITE/text() &lt; DATE_FIN_EMBARGO/text()">
											<!--droits calculés : confidentialité de la date de soutenance à la date de fin de confidentialité-->
											<metsRights:Constraints CONSTRAINTTYPE="TIME">
												<metsRights:ConstraintDescription>
													<xsl:text>confidentialité </xsl:text>
													<xsl:call-template name="reformater_date">
														<xsl:with-param name="date" select="DATE_SOUTENANCE"/>
													</xsl:call-template>
													<xsl:text> </xsl:text>
													<xsl:call-template name="reformater_date">
														<xsl:with-param name="date" select="DATE_FIN_EMBARGO"/>
													</xsl:call-template>
												</metsRights:ConstraintDescription>
											</metsRights:Constraints>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</metsRights:Context>
								<!-- Autorisations sur intranet-->
								<metsRights:Context CONTEXTCLASS="INSTITUTIONAL AFFILIATE">
									<metsRights:Permissions DISPLAY="true" DUPLICATE="true" PRINT="true" COPY="true" MODIFY="false" DELETE="false"/>
									<xsl:if test="DATE_FIN_CONFIDENTIALITE/text()!=''">
										<!--droits calculés : confidentialité de la date de soutenance à la date de fin de confidentialité-->
										<metsRights:Constraints CONSTRAINTTYPE="TIME">
											<metsRights:ConstraintDescription>
												<xsl:text>confidentialité </xsl:text>
												<xsl:call-template name="reformater_date">
													<xsl:with-param name="date" select="DATE_SOUTENANCE"/>
												</xsl:call-template>
												<xsl:text> </xsl:text>
												<xsl:call-template name="reformater_date">
													<xsl:with-param name="date" select="DATE_FIN_CONFIDENTIALITE"/>
												</xsl:call-template>
											</metsRights:ConstraintDescription>
										</metsRights:Constraints>
									</xsl:if>
								</metsRights:Context>
							</metsRights:RightsDeclarationMD>
						</mets:xmlData>
					</mets:mdWrap>
				</mets:rightsMD>
			</mets:amdSec>
			<!-- Génération de la carte de structure METS.
 Il existe une THESE, une VERSION_COMPLETE et une EDITION.
Chacune de ces entités TEF est associée à un URI. Dans ce scénario, chaque URI est généré en partant de l'identifiant local de la thèse. -->
			<mets:structMap TYPE="logical">
				<!--CONTENTIDS : identifiant local de la thèse (c'est à dire identiant dans l'application qui envoie l'import).
    Le login du doctorant sera <code établissement_CONTENTIDS> (exemple : ABES_CONTENTIDS)-->
				<mets:div TYPE="THESE" CONTENTIDS="{$etablissement}_{CODE_ETUDIANT}" DMDID="{$etablissement}.IMPORT.DESCRIPTION_BIBLIOGRAPHIQUE" ADMID="{$etablissement}.IMPORT.ADMINISTRATION {$etablissement}.IMPORT.DROITS_UNIVERSITE {$etablissement}.IMPORT.DROITS_DOCTORANT">
					<mets:div TYPE="VERSION_COMPLETE" CONTENTIDS="{$etablissement}_{CODE_ETUDIANT}.{$etablissement}.IMPORT.VERSION_COMPLETE" ADMID="{$etablissement}.IMPORT.VERSION_COMPLETE.DROITS">
						<mets:div TYPE="EDITION" CONTENTIDS="{$etablissement}_{CODE_ETUDIANT}.{$etablissement}.IMPORT.VERSION_COMPLETE.EDITION_ARCHIVAGE" DMDID="{$etablissement}.IMPORT.VERSION_COMPLETE.DESCRIPTION.EDITION_ARCHIVAGE"/>
					</mets:div>
				</mets:div>
			</mets:structMap>
		</mets:mets>
		</xsl:result-document>
	</xsl:template>
	<!-- Manipulation des dates -->
	<xsl:template name="reformater_date">
		<xsl:param name="date"/>
		<xsl:value-of select="substring($date, 7, 4)"/>
		<xsl:text>-</xsl:text>
		<xsl:value-of select="substring($date, 4, 2)"/>
		<xsl:text>-</xsl:text>
		<xsl:value-of select="substring($date, 1, 2)"/>
	</xsl:template>
</xsl:stylesheet>
