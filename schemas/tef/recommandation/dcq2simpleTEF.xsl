<?xml version="1.0" encoding="UTF-8"?>
<!-- 	
			Scénario : Exporter du TEF simple à partir d'un outil local de gestion des thèses

Cet  XSLT permet de convertir une notice de thèse enregistrée dans un outil local
 (métadonnées DC enrichies de champs locaux) en notice TEF valide.
 
Il ne s'agit que d'un exemple, car il repose sur des hypothèses qui seront avérées dans certains établissements, 
 et non dans d'autres. Il est impossible d'anticiper tous les cas.
	
Il s'agit de traiter un cas simple mais fréquent : la thèse n'a qu'une seule version (complète), qui 
 n'existe que sous une seule édition (PDF). Cette édition PDF correspond à un seul fichier PDF. Il	n'y a
 pas de ressources externes.

. 18-05-2006
 -->
<xsl:stylesheet xmlns:tef="http://www.abes.fr/abes/documents/tef"
	xmlns:local="http://www.local.univ.fr/theses" xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dcterms="http://purl.org/dc/terms/"
	xmlns:mets="http://www.loc.gov/METS/"
	xmlns:metsRights="http://cosimo.stanford.edu/sdr/metsrights/"
	xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
	<xsl:template match="/local:theseDescription">
		<mets:mets xsi:schemaLocation="http://www.loc.gov/METS/  tef_schemas.xsd">
	<!-- Création du bloc de md desciptives de la thèse -->
			<mets:dmdSec ID="{generate-id()}_desc_these">
				<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_desc_these">
					<mets:xmlData>
						<tef:thesisRecord>
							<xsl:copy-of select="dc:title"/>
							<xsl:copy-of select="dcterms:alternative"/>
							<xsl:copy-of select="dc:subject"/>
							<xsl:copy-of select="dcterms:abstract"/>
							<xsl:copy-of select="dc:type"/>
							<dc:type>Electronic Thesis or Dissertation</dc:type>
							<xsl:copy-of select="dc:language"/>
						</tef:thesisRecord>
					</mets:xmlData>
				</mets:mdWrap>
			</mets:dmdSec>
	<!-- Pas de md descriptives de la version, car il s'agit d'une version complète -->
	<!-- Création du bloc de md descriptives de l'édition -->
			<mets:dmdSec ID="{generate-id()}_desc_ed">
				<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_desc_edition">
					<mets:xmlData>
						<tef:edition>
							<xsl:copy-of select="dcterms:medium"/>
							<xsl:copy-of select="dcterms:extent"/>
							<xsl:copy-of select="dc:identifier[@xsi:type='dcterms:URI']"/>
							<xsl:copy-of select="dc:publisher"/>
							<xsl:copy-of select="dcterms:issued"/>
						</tef:edition>
					</mets:xmlData>
				</mets:mdWrap>
			</mets:dmdSec>
	<!-- Création du bloc de md administratives de la thèse -->
			<mets:amdSec>
				<mets:techMD ID="{generate-id()}_admin">
					<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_admin_these">
						<mets:xmlData>
							<tef:thesisAdmin>
								<tef:auteur>
									<tef:nom>
										<xsl:value-of select="substring-before(dc:creator, ',')"/>
									</tef:nom>
									<tef:prenom>
										<xsl:value-of select="substring-after(dc:creator, ', ')"/>
									</tef:prenom>
									<tef:dateNaissance>
										<xsl:value-of select="local:dateNaissance"/>
									</tef:dateNaissance>
									<tef:nationalite scheme="ISO-3166-1">
										<xsl:value-of select="local:nationalite"/>
									</tef:nationalite>
								</tef:auteur>
			<!-- 	Dans notre hypothèse, l'établissement n'a pas dédié un champ spécifique à l'identifiant
				"numéro national de thèse". 
				Par contre, on peut le repérer car il contient en son centre le code de l'établissement (ici ISAL) et le traiter en conséquence. -->
								<dc:identifier xsi:type="tef:NNT">
									<xsl:value-of select="dc:identifier[contains(text(), 'ISA')]"/>
								</dc:identifier>
								<xsl:copy-of select="dcterms:dateAccepted"/>
								<tef:thesis.degree>
									<tef:thesis.degree.discipline xml:lang="fr">
										<xsl:value-of select="local:discipline"/>
									</tef:thesis.degree.discipline>
									<tef:thesis.degree.grantor>
										<tef:nom>
											<xsl:value-of select="local:etablissementSoutenance"/>
										</tef:nom>
										<tef:autoriteExterne autoriteSource="Sudoc">
											<xsl:value-of
												select="local:etablissementSoutenance/@autoriteSudoc"
											/>
										</tef:autoriteExterne>
									</tef:thesis.degree.grantor>
									<tef:thesis.degree.level>Doctorat</tef:thesis.degree.level>
								</tef:thesis.degree>
								<tef:theseSurTravaux>non</tef:theseSurTravaux>
	<!-- 	On suppose ici que le système ne gère pas les thèses pour lesquelles le jury aurait émis un avis de diffusion défavorable. -->
								<tef:avisJury>oui</tef:avisJury>
								<tef:directeurThese>
									<tef:nom>
										<xsl:value-of select="substring-before(local:directeurThese,
											',')"/>
									</tef:nom>
									<tef:prenom>
										<xsl:value-of select="substring-after(local:directeurThese,
											', ')"/>
									</tef:prenom>
									<tef:autoriteExterne autoriteSource="Sudoc">
										<xsl:value-of
											select="local:etablissementSoutenance/@autoriteSudoc"/>
									</tef:autoriteExterne>
								</tef:directeurThese>
								<xsl:for-each select="oai">
									<tef:oaiSetSpec>
										<xsl:value-of select="."/>
									</tef:oaiSetSpec>
								</xsl:for-each>
							</tef:thesisAdmin>
						</mets:xmlData>
					</mets:mdWrap>
				</mets:techMD>
				<mets:techMD ID="{generate-id()}_file">
					<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_tech_fichier">
						<mets:xmlData>
							<tef:meta_fichier>
								<tef:encodage>
									<xsl:value-of select="local:fichier/local:encodage"/>
								</tef:encodage>
								<tef:formatFichier>
									<xsl:value-of select="local:fichier/local:formatFichier"/>
								</tef:formatFichier>
								<tef:taille>
									<xsl:value-of select="local:fichier/local:taille"/>
								</tef:taille>
							</tef:meta_fichier>
						</mets:xmlData>
					</mets:mdWrap>
				</mets:techMD>
	<!-- 	Ce bloc explicite les actions qu'autorise le chef d'établissement. -->
				<mets:rightsMD ID="{generate-id()}_etab">
					<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_droits_etablissement_these">
						<mets:xmlData>
							<metsRights:RightsDeclarationMD>
								<xsl:choose>
									<xsl:when test="local:autorisationEtablissement = 'ok'">
										<metsRights:Context CONTEXTCLASS="GENERAL PUBLIC">
											<metsRights:Permissions COPY="true" DISCOVER="true"
												DISPLAY="true" DUPLICATE="true" PRINT="true"
												MODIFY="false"/>
											<xsl:if test="local:confidentialite">
												<metsRights:Constraints CONSTRAINTTYPE="TIME">
												<metsRights:ConstraintDescription>restriction
												<xsl:value-of select="local:confidentialite/local:debut"/>
												<xsl:text> </xsl:text>
												<xsl:value-of select="local:confidentialite/local:fin"/>
												</metsRights:ConstraintDescription>
												</metsRights:Constraints>
											</xsl:if>
										</metsRights:Context>
									</xsl:when>
									<xsl:otherwise>
				<!-- Si l'établissement s'oppose à la diffusion -->
										<metsRights:Context CONTEXTCLASS="GENERAL PUBLIC">
											<metsRights:Permissions COPY="false" DISCOVER="true"
												DISPLAY="false" DUPLICATE="false" PRINT="false"
												MODIFY="false"/>
										</metsRights:Context>
									</xsl:otherwise>
								</xsl:choose>
							</metsRights:RightsDeclarationMD>
						</mets:xmlData>
					</mets:mdWrap>
				</mets:rightsMD>
	<!-- 	Ce bloc explicite les actions qu'autorise l'auteur. -->
				<mets:rightsMD ID="{generate-id()}_auteur">
					<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_droits_auteur_these">
						<mets:xmlData>
							<metsRights:RightsDeclarationMD>
								<metsRights:Context CONTEXTCLASS="GENERAL PUBLIC">
									<xsl:call-template name="autorisation_auteur"/>
								</metsRights:Context>
							</metsRights:RightsDeclarationMD>
						</mets:xmlData>
					</mets:mdWrap>
				</mets:rightsMD>
	<!-- Ce bloc fait la synthèse entre les autorisations de l'établissement et celles de l'auteur.
	De ce calcul découle le statut juridique du document thèse, en particulier le fait de savoir s'il est diffusable ou non sur Internet..-->
				<mets:rightsMD ID="{generate-id()}_copyright">
					<mets:mdWrap MDTYPE="OTHER" OTHERMDTYPE="tef_droits_version">
						<mets:xmlData>
							<metsRights:RightsDeclarationMD>
								<metsRights:Context CONTEXTCLASS="GENERAL PUBLIC">
									<xsl:choose>
										<xsl:when test="local:autorisationEtablissement = 'ok'">
									<!-- si l'établissement dit "ok", alors tout ce qui compte est l'autorisation de l'auteur
										et la période de confidentialité éventuelle-->
											<xsl:call-template name="autorisation_auteur"/>
											<xsl:if test="local:confidentialite">
												<metsRights:Constraints CONSTRAINTTYPE="TIME">
													<metsRights:ConstraintDescription>
														<xsl:text>restriction </xsl:text>
														<xsl:value-of select="local:confidentialite/local:debut"/>
														<xsl:text> </xsl:text>
														<xsl:value-of	select="local:confidentialite/local:fin"/>
													</metsRights:ConstraintDescription>
												</metsRights:Constraints>
											</xsl:if>
										</xsl:when>
										<xsl:otherwise>
											<!-- si l'établissement dit "non", alors peu importe l'autorisation de l'auteur -->
												<metsRights:Permissions COPY="false" DISCOVER="true"
												DISPLAY="false" DUPLICATE="false" PRINT="false"
												MODIFY="false"/>
										</xsl:otherwise>
									</xsl:choose>
								</metsRights:Context>
							</metsRights:RightsDeclarationMD>
						</mets:xmlData>
					</mets:mdWrap>
				</mets:rightsMD>
			</mets:amdSec>
			<xsl:variable name="url">
				<xsl:value-of select="dc:identifier[not(contains(text(), 'ISA'))]"/>
			</xsl:variable>
			<mets:fileSec>
				<mets:fileGrp ID="{generate-id()}_filegrp" USE="archive_et_diffusion">
					<mets:file ID="FID2" ADMID="{generate-id()}_file" MIMETYPE="pdf">
						<mets:FLocat LOCTYPE="URL" xlink:href="{$url}"/>
					</mets:file>
				</mets:fileGrp>
			</mets:fileSec>
			<xsl:variable name="id">
				<xsl:value-of select="@id"/>
			</xsl:variable>
			<!-- 
		Génération de la carte de structure METS.
	
	Il existe une THESE, une VERSION_COMPLETE et une EDITION.
	Chacune de ces entités TEF est associée à un URI. Dans ce scénario, chaque URI est généré en partant de l'identifiant local de la thèse. 
	L'identifiant local est inclus dans un URI géré par l'abes au sein du scheme URI info: (http://info-uri.info/registry/docs/misc/faq.html).
	Ainsi, l'identifiant local d'une thèse devient un identifiant global, unique à l'échelle du Web, un URI.
	Ce n'est qu'un scénario possible, à titre d'illustration !! La recommandation TEF ne se prononce pas sur la manière d'assigner un URI aux entités TEF. 
	Ce choix relève de l'implémentation de la norme. Dans l'absolu, il serait possible d'utiliser l'identifiant pérenne (dc:identifier xsi:type="tef:nationalThesisPID") 
	que l'abes assignera à chaque thèse, mais cet identifiant pérenne s'appuie sur le numéro national de thèse qui est connu tardivement, après la soutenance. 
	Or, on peut vouloir échanger du TEF avant la soutenance (du TEF incomplet, certes...).
	
	info:fides/STAR/ISAL/{$id} est l'URI de la thèse
	info:fides/STAR/ISAL/{$id}/vc est l'URI de la la version complète (vc)
	info:fides/STAR/ISAL/{$id}/vc/ed1 est l'URI d'une édition (ed1)
				
	info: est le schème URI (au même titre que urn, http...).
	fides est, dans cet exemple fictif, l'espace de noms de l'abes au sein de info.
	STAR est un sous-ensemble de l'espace fides (utilisable pour les échanges avec STAR).
	ISAL est le sous-ensemble de info:fides/STAR réservé à l'INSA de Lyon.
	{$id} contiendra l'id local de la thèse (valeur de l'attribut id, à la racine de la notice DC de départ)
-->
			<mets:structMap TYPE="logical">
				<mets:div TYPE="THESE" ADMID="{generate-id()}_admin {generate-id()}_etab
					{generate-id()}_auteur" DMDID="{generate-id()}_desc_these"
					CONTENTIDS="info:fides/STAR/ISAL/{$id}">
					<mets:div TYPE="VERSION_COMPLETE" ADMID="{generate-id()}_copyright"
						CONTENTIDS="info:fides/STAR/ISAL/{$id}/vc">
						<mets:div TYPE="EDITION" DMDID="{generate-id()}_desc_ed"
							CONTENTIDS="info:fides/STAR/ISAL/{$id}/vc/ed1">
							<mets:fptr FILEID="{generate-id()}_filegrp"/>
						</mets:div>
					</mets:div>
				</mets:div>
			</mets:structMap>
		</mets:mets>
	</xsl:template>
	<xsl:template name="autorisation_auteur">
		<xsl:if test="dcterms:license= 'http://creativecommons.org/licenses/by-nc-nd/2.5/'">
			<metsRights:Permissions COPY="true" DISCOVER="true" DISPLAY="true" DUPLICATE="true"
				PRINT="true" MODIFY="false"/>
		</xsl:if>
		<xsl:if test="dcterms:license= 'http://local.univ.fr/theses/contrat/anti-electro'">
			<metsRights:Permissions COPY="false" DISCOVER="true" DISPLAY="false" DUPLICATE="false"
				PRINT="false" MODIFY="false"/>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
