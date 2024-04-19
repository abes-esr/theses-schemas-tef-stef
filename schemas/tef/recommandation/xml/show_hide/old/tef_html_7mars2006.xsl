<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:tef="http://www.abes.fr/abes/documents/tef" xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:tef_fichiers="http://www.abes.fr/abes/documents/tef_fichiers"
	xmlns:tef_admin="http://www.abes.fr/abes/documents/tef_admin"
	xmlns:metsRights="http://cosimo.stanford.edu/sdr/metsrights/"
	xmlns:tef_version="http://www.abes.fr/abes/documents/tef_version"
	xmlns:xlink="http://www.w3.org/TR/xlink" xmlns:mets="http://www.loc.gov/METS/" version="2.0">
	<!-- <xsl:import href="show_hide.xsl" /> -->
	<xsl:output method="html" encoding="iso-8859-1"/>
	<xsl:key name="dmdSec" match="mets:mets/mets:dmdSec/mets:mdWrap" use="@OTHERMDTYPE"/>
	<xsl:key name="amdSec_rightsMD" match="mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap"
		use="@OTHERMDTYPE"/>
	<xsl:key name="amdSec_techMD" match="mets:mets/mets:amdSec/mets:techMD/mets:mdWrap"
		use="@OTHERMDTYPE"/>
	<xsl:template match="/">
		<html>
			<head>
				<!-- s cript language="javascript" src="tef_html.js" / -->
				<xsl:call-template name="INCLUDE_JAVASCRIPT"/>
				<style type="text/css"> div { BORDER-RIGHT: #ccc 1px dashed ; BORDER-TOP: #ccc 1px dashed ;
					BORDER-LEFT: #ccc 1px dashed ; BORDER-BOTTOM: #ccc 1px dashed ; COLOR: navy } DIV {
					padding:3px; } .FS1 { background-color:rgb( 185 , 220, 220 ); padding-left: 5%; } .FS2 {
					background-color:rgb( 195 , 220, 220 ); padding-left: 5%; } .FS3 { background-color:rgb(
					205 , 220, 220 ); padding-left: 5%; } .FS4 { background-color:rgb( 215 , 220, 220 );
					padding-left: 5%; } .FS5 { background-color:rgb( 225 , 220, 220 ); padding-left: 5%; }
					.FS6 { background-color:rgb( 235 , 220, 220 ); padding-left: 5%; } .FS7 {
					background-color:rgb( 245 , 220, 220 ); padding-left: 5%; } .FS8 { background-color:rgb(
					245 , 220, 220 ); padding-left: 5%; }</style>
			</head>
			<!-- utiliser apply-templates plutôt que call template
	 , notamment pour pouvoir traiter mads differemment
 -->
			<body background="rgb(236, 231, 246)">
				<FONT size="6">exemple de notice TEF</FONT>
				<h1>
					<xsl:value-of select="//dc:title"/> - <xsl:value-of select="//tef:auteur/tef:prenom"/>
					<xsl:text> </xsl:text>
					<xsl:value-of select="//tef:auteur/tef:nom"/>
				</h1>
				<!-- sc ript language="javascript" >
	BEGIN
	 ( "MD_Descript_Thesis"
	 , "Métadonnées descriptives de la thèse"
	 , 1, "?"
	 );
 </sc ript -->
				<div class="FS1">
					<xsl:call-template name="BEGIN">
						<xsl:with-param name="ID">tef_desc_these</xsl:with-param>
						<xsl:with-param name="Title">Métadonnées descriptives de la thèse</xsl:with-param>
						<xsl:with-param name="Level">1</xsl:with-param>
					</xsl:call-template>
					<div id="tef_desc_these">
						<xsl:call-template name="tef_desc_these"/>
					</div>
					<xsl:call-template name="END">
						<xsl:with-param name="ID">tef_desc_these</xsl:with-param>
					</xsl:call-template>
				</div>
				<div class="FS1">
					<xsl:call-template name="BEGIN">
						<xsl:with-param name="ID">tef_admin_these</xsl:with-param>
						<xsl:with-param name="Title">Métadonnées administratives de la thèse</xsl:with-param>
						<xsl:with-param name="Level">1</xsl:with-param>
					</xsl:call-template>
					<div id="tef_admin_these">
						<xsl:for-each select="key( 'amdSec_techMD', 'tef_admin_these' )">
							<xsl:apply-templates/>
						</xsl:for-each>
					</div>
					<xsl:call-template name="END">
						<xsl:with-param name="ID">tef_admin_these</xsl:with-param>
					</xsl:call-template>
				</div>
				<!-- flooble Expandable Content box end  -->
				<div class="FS1">
					<xsl:call-template name="BEGIN">
						<xsl:with-param name="ID">MD_Rights</xsl:with-param>
						<xsl:with-param name="Title">Métadonnées de droits</xsl:with-param>
						<xsl:with-param name="Level">1</xsl:with-param>
					</xsl:call-template>
					<div id="MD_Rights">
						<div class="FS2">
							<xsl:call-template name="BEGIN">
								<xsl:with-param name="ID">tef_droits_etablissement_these</xsl:with-param>
								<xsl:with-param name="Title">Autorisation de l'établissement de soutenance</xsl:with-param>
								<xsl:with-param name="Level">2</xsl:with-param>
							</xsl:call-template>
							<div id="tef_droits_etablissement_these">
								<xsl:for-each select="key( 'amdSec_rightsMD', 'tef_droits_etablissement_these' )">
									<xsl:call-template name="droiff"/>
								</xsl:for-each>
							</div>
							<xsl:call-template name="END">
								<xsl:with-param name="ID">tef_droits_etablissement_these</xsl:with-param>
							</xsl:call-template>
						</div>
						<div class="FS2">
							<xsl:call-template name="BEGIN">
								<xsl:with-param name="ID">tef_droits_auteur_these</xsl:with-param>
								<xsl:with-param name="Title">Autorisation de l'auteur</xsl:with-param>
								<xsl:with-param name="Level">2</xsl:with-param>
							</xsl:call-template>
							<div id="tef_droits_auteur_these">
								<xsl:for-each select="key( 'amdSec_rightsMD', 'tef_droits_auteur_these' )">
									<xsl:call-template name="droiff"/>
								</xsl:for-each>
							</div>
							<xsl:call-template name="END">
								<xsl:with-param name="ID">tef_droits_auteur_these</xsl:with-param>
							</xsl:call-template>
						</div>
					</div>
					<xsl:call-template name="END">
						<xsl:with-param name="ID">MD_Rights</xsl:with-param>
					</xsl:call-template>
				</div>
				<br/>
				<!-- *************************************************************************
****************************** VERSIONS ***************************************
*******************************************************************************
-->
				<div class="FS1">
					<xsl:call-template name="BEGIN">
						<xsl:with-param name="ID">versions</xsl:with-param>
						<xsl:with-param name="Title">Versions de la thèse</xsl:with-param>
						<xsl:with-param name="Level">1</xsl:with-param>
					</xsl:call-template>
					<div id="versions">
						<xsl:for-each
							select="/mets:mets/mets:structMap/mets:div/mets:div[@TYPE='VERSION_COMPLETE' or
							@TYPE='VERSION_INCOMPLETE']">
							<xsl:variable name="Num_Version">
								<xsl:value-of select="position()"/>
							</xsl:variable>
							<div class="FS2">
								<xsl:call-template name="BEGIN">
									<xsl:with-param name="ID">version<xsl:value-of select="$Num_Version"/>
									</xsl:with-param>
									<xsl:with-param name="Title">
										<xsl:value-of select="@TYPE"/>
									</xsl:with-param>
									<xsl:with-param name="Level">2</xsl:with-param>
								</xsl:call-template>
								<div>
									<xsl:attribute name="id">version<xsl:value-of select="$Num_Version"/>
									</xsl:attribute>
									<xsl:variable name="admid" select="@ADMID"/>
									<xsl:variable name="dmid" select="@DMDID"/>
									<xsl:for-each select="/mets:mets/mets:amdSec/*">
										<xsl:variable name="mdid" select="@ID"/>
										<xsl:if test="contains($admid, $mdid)">
											<div class="FS3">
												<xsl:call-template name="BEGIN">
													<xsl:with-param name="ID">MD_gestion_<xsl:value-of select="$Num_Version"/>
													</xsl:with-param>
													<xsl:with-param name="Title">Métadonnées de droits : statut juridique de
														cette version</xsl:with-param>
													<xsl:with-param name="Level">3</xsl:with-param>
												</xsl:call-template>
												<div>
													<xsl:attribute name="id">MD_gestion_<xsl:value-of select="$Num_Version"/>
													</xsl:attribute>
													<p>
														<xsl:call-template name="droiff"/>
													</p>
												</div>
												<xsl:call-template name="END">
													<xsl:with-param name="ID">MD_gestion_<xsl:value-of select="$Num_Version"/>
													</xsl:with-param>
												</xsl:call-template>
											</div>
										</xsl:if>
									</xsl:for-each>
									<xsl:for-each select="/mets:mets/mets:dmdSec">
										<xsl:variable name="mdid" select="@ID"/>
										<xsl:if test="contains($dmid, $mdid)">
											<div class="FS3">
												<xsl:call-template name="BEGIN">
													<xsl:with-param name="ID">MD_descriptives_<xsl:value-of
															select="$Num_Version"/>
													</xsl:with-param>
													<xsl:with-param name="Title">Métadonnées descriptives : contenu de cette
														version</xsl:with-param>
													<xsl:with-param name="Level">3</xsl:with-param>
												</xsl:call-template>
												<div>
													<xsl:attribute name="id">MD_descriptives_<xsl:value-of
															select="$Num_Version"/>
													</xsl:attribute>
													<xsl:apply-templates/>
												</div>
												<xsl:call-template name="END">
													<xsl:with-param name="ID">MD_descriptives_<xsl:value-of
															select="$Num_Version"/>
													</xsl:with-param>
												</xsl:call-template>
											</div>
										</xsl:if>
									</xsl:for-each>
									<br/>
									<!-- <div class="FS8" > -->
									<xsl:for-each select="mets:div">
										<xsl:variable name="Num_Edition">
											<xsl:value-of select="position()"/>
										</xsl:variable>
										<xsl:variable name="Num_V_E">
											<xsl:value-of select="$Num_Version"/>_<xsl:value-of select="$Num_Edition"/>
										</xsl:variable>
										<xsl:variable name="fid" select="mets:fptr/@FILEID"/>
										<div class="FS4">
											<xsl:call-template name="BEGIN">
												<xsl:with-param name="ID">MD_Edition_<xsl:value-of select="$Num_V_E"/>
												</xsl:with-param>
												<xsl:with-param name="Title">Edition <xsl:value-of
														select="/mets:mets/mets:fileSec/mets:fileGrp[@ID=$fid]/@USE"/>
												</xsl:with-param>
												<xsl:with-param name="Level">4</xsl:with-param>
												<xsl:with-param name="Padding">0%</xsl:with-param>
											</xsl:call-template>
											<div class="FS4">
												<xsl:attribute name="id">MD_Edition_<xsl:value-of select="$Num_V_E"/>
												</xsl:attribute>
												<xsl:attribute name="style">padding-left: 5%;</xsl:attribute>
												<xsl:variable name="edid" select="@DMDID"/>
												<xsl:for-each
													select="/mets:mets/*[@ID=$edid]/mets:mdWrap/mets:xmlData/tef:edition">
													<p>
														<xsl:apply-templates/>
													</p>
												</xsl:for-each>
												<br/>
												<xsl:if test="/mets:mets/mets:fileSec/mets:fileGrp[@ID=$fid][@USE='archive'
													or @USE='archive_et_diffusion']">
													<h4>
														<xsl:text>Métadonnées de fichiers :</xsl:text>
													</h4>
													<div id="aaaaaa" style="padding-left: 5%;">
														<xsl:for-each
															select="/mets:mets/mets:fileSec/mets:fileGrp[@USE='archive' or
															@USE='archive_et_diffusion'][@ID=$fid]/mets:file">
															<xsl:variable name="metaFileID" select="@ADMID"/>
															<xsl:variable name="Num_Fichier">
																<xsl:value-of select="position()"/>
															</xsl:variable>
															<xsl:variable name="Num_V_E_F">
																<xsl:value-of select="$Num_Version"/>_<xsl:value-of
																	select="$Num_Edition"/>_<xsl:value-of select="$Num_Fichier"/>
															</xsl:variable>
															<xsl:for-each
																select="//mets:techMD[@ID=$metaFileID]/mets:mdWrap/mets:xmlData/tef:meta_fichier">
																<xsl:call-template name="BEGIN">
																	<xsl:with-param name="ID">MD_Fichier_<xsl:value-of
																			select="$Num_V_E_F"/>
																	</xsl:with-param>
																	<xsl:with-param name="Title">Fichier </xsl:with-param>
																	<xsl:with-param name="Level">5</xsl:with-param>
																	<xsl:with-param name="Padding">5%</xsl:with-param>
																</xsl:call-template>
																<div>
																	<xsl:attribute name="id">MD_Fichier_<xsl:value-of
																			select="$Num_V_E_F"/>
																	</xsl:attribute>
																	<xsl:apply-templates/>
																</div>
																<xsl:call-template name="END">
																	<xsl:with-param name="ID">MD_Fichier_<xsl:value-of
																			select="$Num_V_E_F"/>
																	</xsl:with-param>
																</xsl:call-template>
															</xsl:for-each>
														</xsl:for-each>
													</div>
												</xsl:if>
											</div>
											<xsl:call-template name="END">
												<xsl:with-param name="ID">MD_Edition_<xsl:value-of select="$Num_V_E"/>
												</xsl:with-param>
											</xsl:call-template>
										</div>
									</xsl:for-each>
									<!-- </div> -->
								</div>
								<xsl:call-template name="END">
									<xsl:with-param name="ID">version<xsl:value-of select="$Num_Version"/>
									</xsl:with-param>
								</xsl:call-template>
							</div>
							<BR/>
						</xsl:for-each>
					</div>
					<xsl:call-template name="END">
						<xsl:with-param name="ID">versions</xsl:with-param>
					</xsl:call-template>
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template name="metaff2">
		<xsl:variable name="avecTXT" select=".//*[text()]"/>
		<xsl:for-each select="$avecTXT">
			<p>
				<i>
					<xsl:value-of select="name()"/>
				</i>
				<xsl:text> :    </xsl:text>
				<B>
					<xsl:value-of select="."/>
				</B>
			</p>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="droiff">
		<xsl:for-each select=".//metsRights:RightsDeclaration">
			<p>
				<xsl:value-of select="."/>
			</p>
		</xsl:for-each>
		<xsl:for-each select=".//metsRights:Context">
			<p>
				<xsl:choose>
					<xsl:when test="@CONTEXTCLASS!='OTHER'">
						<b>
							<xsl:value-of select="@CONTEXTCLASS"/>
						</b>
						<xsl:if test="@CONTEXTCLASS = 'GENERAL PUBLIC'">
							<xsl:text> (Lecteurs Internet)</xsl:text>
						</xsl:if>
						<xsl:if test="@CONTEXTCLASS = 'ACADEMIC USER'">
							<xsl:text> (Lecteurs Intranet)</xsl:text>
						</xsl:if>
					</xsl:when>
					<xsl:otherwise>
						<b>
							<xsl:value-of select="@OTHERCONTEXTTYPE"/>
						</b>
					</xsl:otherwise>
				</xsl:choose> autorisé à effectuer les opérations suivantes ? <xsl:for-each
					select="metsRights:Permissions/@*">
					<i>
						<li>
							<xsl:value-of select="name()"/> : <xsl:value-of select="."/>
						</li>
					</i>
				</xsl:for-each>
				<i>
					<xsl:if test="not(metsRights:Permissions/@PRINT)">
						<li>PRINT : false</li>
					</xsl:if>
					<xsl:if test="not(metsRights:Permissions/@DELETE)">
						<li>DELETE : false</li>
					</xsl:if>
					<xsl:if test="not(metsRights:Permissions/@COPY)">
						<li>COPY : false</li>
					</xsl:if>
					<xsl:if test="not(metsRights:Permissions/@DISCOVER)">
						<li>DISCOVER : false</li>
					</xsl:if>
					<xsl:if test="not(metsRights:Permissions/@DISPLAY)">
						<li>DISPLAY : false</li>
					</xsl:if>
					<xsl:if test="not(metsRights:Permissions/@MODIFY)">
						<li>MODIFY : false</li>
					</xsl:if>
					<xsl:if test="not(metsRights:Permissions/@DUPLICATE)">
						<li>DUPLICATE : false</li>
					</xsl:if>
				</i>
			</p>
			<xsl:if test=".//metsRights:Constraints/@CONSTRAINTTYPE">
				<p> Type de contrainte : <xsl:value-of select=".//metsRights:Constraints/@CONSTRAINTTYPE"/>
					: <xsl:value-of select=".//metsRights:Constraints/metsRights:ConstraintDescription"/>
				</p>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="*[not(./*)]">
		<p>
			<i>
				<xsl:value-of select="name()"/>
				<xsl:for-each select="@*"> (<xsl:value-of select="."/>) </xsl:for-each>
			</i>
			<xsl:text> :    </xsl:text>
			<B>
				<xsl:value-of select="."/>
			</B>
		</p>
	</xsl:template>
	<xsl:template match="tef:sujetRameau">
		<p>
			<i>
				<xsl:value-of select="name()"/>
			</i>
			<xsl:text> :    </xsl:text>
			<B>
				<xsl:value-of select=".//tef:elementdEntree"/>
				<xsl:text> (</xsl:text>
				<xsl:value-of select=".//tef:elementdEntree/@autoriteSource"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select=".//tef:elementdEntree/@autoriteExterne"/>
				<xsl:text>)</xsl:text>
				<xsl:for-each select=".//tef:subdivision">
					<xsl:text> -- </xsl:text>
					<xsl:value-of select="."/>
					<xsl:text> (</xsl:text>
					<xsl:value-of select="@autoriteSource"/>
					<xsl:text> </xsl:text>
					<xsl:value-of select="@autoriteExterne"/>
					<xsl:text>)</xsl:text>
				</xsl:for-each>
			</B>
		</p>
	</xsl:template>
	<xsl:template match="tef:thesis.degree">
		<p>
			<i>
				<xsl:value-of select="name()"/>
			</i>
			<xsl:text> :    </xsl:text>
			<ul>
				<xsl:apply-templates/>
			</ul>
		</p>
	</xsl:template>
	<xsl:template match="tef:autoriteInterne" priority="1">
		<xsl:variable name="idMads">
			<xsl:value-of select="."/>
		</xsl:variable>
		<p>
			<i>
				<xsl:value-of select="name()"/>
			</i>
			<xsl:text> :    </xsl:text>
			<xsl:for-each select="//tef:MADSAuthority[@authorityID = $idMads]">
				<ul>
					<xsl:apply-templates/>
				</ul>
			</xsl:for-each>
		</p>
	</xsl:template>
	<xsl:template match="tef:ressourceID" priority="1">
		<xsl:variable name="idRext">
			<xsl:value-of select="."/>
		</xsl:variable>
		<p>
			<xsl:for-each select="/mets:mets/mets:structMap//mets:div[ancestor-or-self::mets:div/@ID =
				$idRext]">
				<xsl:variable name="idRextMD">
					<xsl:value-of select="@DMDID"/>
				</xsl:variable>
				<xsl:variable name="idRextMDDroits">
					<xsl:value-of select="@ADMID"/>
				</xsl:variable>
				<ul>
					<xsl:if test="not(@TYPE = 'RESSOURCES_EXTERNES')">
						<hr style="color: rgb(220, 215, 220);"/>
						<p>
							<xsl:value-of select="@TYPE"/>
						</p>
					</xsl:if>
					<xsl:for-each select="/mets:mets/mets:dmdSec[@ID =
						$idRextMD]//tef:ressourceExterneDescription">
						<ul>
							<xsl:apply-templates/>
						</ul>
					</xsl:for-each>
					<xsl:for-each select="/mets:mets/mets:amdSec/mets:rightsMD[@ID = $idRextMDDroits]">
						<ul>
							<xsl:call-template name="droiff"/>
						</ul>
					</xsl:for-each>
				</ul>
			</xsl:for-each>
		</p>
	</xsl:template>
	<xsl:template match="tef:auteur | tef:directeurThese | tef:presidentJury | tef:membreJury |
		tef:rapporteur | tef:ecoleDoctorale | tef:partenaireRecherche | tef:thesis.degree.grantor |
		tef:editeur | tef:manque">
		<p>
			<i>
				<xsl:value-of select="name()"/>
			</i>
			<xsl:text> :    </xsl:text>
			<ul>
				<xsl:apply-templates/>
			</ul>
		</p>
	</xsl:template>
	<xsl:template name="metaff">
		<xsl:variable name="ici" select="./*"/>
		<xsl:for-each select="$ici">
			<p>
				<xsl:choose>
					<xsl:when test="$ici=text()">
						<i>
							<xsl:value-of select="name()"/>
							<xsl:for-each select="@*"> (<xsl:value-of select="."/>) </xsl:for-each>
						</i>
						<xsl:text> :    </xsl:text>
						<B>
							<xsl:value-of select="."/>
						</B>
					</xsl:when>
					<xsl:otherwise>
						<xsl:call-template name="metaff"/>
					</xsl:otherwise>
				</xsl:choose>
			</p>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="tef_desc_these">
		<xsl:for-each select="key( 'dmdSec', 'tef_desc_these' )">
			<xsl:apply-templates/>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="INCLUDE_JAVASCRIPT">
		<script language="javascript" src="tef_html.js"/>
	</xsl:template>
	<xsl:template name="BEGIN">
		<xsl:param name="ID"/>
		<xsl:param name="Title"/>
		<xsl:param name="Level"/>
		<xsl:param name="Padding"/>
		<xsl:param name="InitialState">?</xsl:param>
		<xsl:variable name="RED" select="175 + $Level*10"/>
		<xsl:variable name="LEVEL" select="7 - $Level"/>
		<div>
			<xsl:attribute name="style"> background-color:rgb( 220, <xsl:value-of select="$RED"/>, 220
				);padding-left: <xsl:value-of select="$Padding"/>; </xsl:attribute> [<A>
				<xsl:attribute name="id">link_<xsl:value-of select="$ID"/>
				</xsl:attribute>
				<xsl:attribute name="href">javascript:toggle( "<xsl:value-of select="$ID"/>" );</xsl:attribute>
				<xsl:attribute name="title">Afficher/Masquer</xsl:attribute>
				<xsl:attribute name="class">bgt</xsl:attribute>
				<xsl:attribute name="style">text-decoration: none; color:#000000;</xsl:attribute>
				<xsl:value-of select="$InitialState"/>
			</A>] <FONT>
				<xsl:attribute name="size">
					<xsl:value-of select="$LEVEL"/>
				</xsl:attribute>
				<xsl:value-of select="$Title"/>
			</FONT>
		</div>
	</xsl:template>
	<xsl:template name="END">
		<xsl:param name="ID"/>
		<noscript> Pour bénéficier de la fonction masquer/afficher , vous devez autoriser l utilisation
			des scripts ( javascript ) </noscript>
		<!-- xsl:text disable-output-escaping="yes">
	 &lt;script language="javascript" >
	</xsl:text>
	 toggle( "<xsl:value-of select="$ID" />" );
	<xsl:text disable-output-escaping="yes">
	 &lt;/script>
	</xsl:text -->
		<script language="javascript"> toggle( "<xsl:value-of select="$ID"/>" ); </script>
	</xsl:template>
</xsl:stylesheet>
