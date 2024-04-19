<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:tef="http://www.abes.fr/abes/documents/tef"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:tef_fichiers="http://www.abes.fr/abes/documents/tef_fichiers"
  xmlns:tef_admin="http://www.abes.fr/abes/documents/tef_admin"
  xmlns:metsRights="http://cosimo.stanford.edu/sdr/metsrights/"
  xmlns:tef_version="http://www.abes.fr/abes/documents/tef_version"
  xmlns:xlink="http://www.w3.org/TR/xlink"
  xmlns:mets="http://www.loc.gov/METS/"
  version="2.0"
  >
 <!-- <xsl:import href="show_hide.xsl" /> -->

 <xsl:output
   method="html"
   encoding="iso-8859-1"
  />

 <xsl:key
  name="dmdSec"
  match="mets:mets/mets:dmdSec/mets:mdWrap"
  use="@OTHERMDTYPE"
  />
 <xsl:key
   name="amdSec_rightsMD"
   match="mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap"
   use="@OTHERMDTYPE"
   />
  <xsl:key
   name="amdSec_techMD"
   match="mets:mets/mets:amdSec/mets:techMD/mets:mdWrap"
   use="@OTHERMDTYPE"
   />
  <xsl:template match="/">
    <html>
      <head>
  <!-- s cript language="javascript" src="tef_html.js" / -->
  <xsl:call-template name="INCLUDE_JAVASCRIPT" />

<style type="text/css" >

FIELDSET
{ BORDER-RIGHT: #ccc 1px dashed
; BORDER-TOP: #ccc 1px dashed
; BORDER-LEFT: #ccc 1px dashed
; BORDER-BOTTOM: #ccc 1px dashed
; COLOR: navy
}

DIV { padding:3px; }

.FS1 { background-color:rgb( 185 , 220,  220 ); }
.FS2 { background-color:rgb( 195 , 220,  220 ); }
.FS3 { background-color:rgb( 205 , 220,  220 ); }
.FS4 { background-color:rgb( 215 , 220,  220 ); }
.FS5 { background-color:rgb( 225 , 220,  220 ); }
.FS6 { background-color:rgb( 235 , 220,  220 ); }
.FS7 { background-color:rgb( 245 , 220,  220 ); }

</style>
</head>
<!-- utiliser apply-templates plutôt que call template
   , notamment pour pouvoir traiter mads differemment
 -->
<body>
 <FONT size="6" >THESE</FONT>
 <!-- sc ript language="javascript" >
  BEGIN
   ( "MD_Descript_Thesis"
   , "Métadonnées descriptives de la thèse"
   , 1, "?"
   );
 </sc ript -->


 <FIELDSET class="FS1">
  <xsl:call-template name="BEGIN">
   <xsl:with-param name="ID">tef_desc_these</xsl:with-param>
   <xsl:with-param name="Title" >Métadonnées descriptives de la thèse</xsl:with-param>
   <xsl:with-param name="Level" >1</xsl:with-param>
  </xsl:call-template>

  <div id="tef_desc_these" >
   <xsl:call-template name="tef_desc_these" />
  </div>
  <xsl:call-template name="END">
   <xsl:with-param name="ID">tef_desc_these</xsl:with-param>
  </xsl:call-template>
 </FIELDSET>


 <FIELDSET class="FS1">
 <xsl:call-template name="BEGIN">
  <xsl:with-param name="ID">tef_admin_these</xsl:with-param>
  <xsl:with-param name="Title" >Métadonnées administratives de la thèse</xsl:with-param>
  <xsl:with-param name="Level" >1</xsl:with-param>
 </xsl:call-template>
 <div id="tef_admin_these" >
   <xsl:for-each
    select="key( 'amdSec_techMD', 'tef_admin_these' )"
    >
    <xsl:call-template name="metaff"/>
   </xsl:for-each>
 </div>
 <xsl:call-template name="END">
  <xsl:with-param name="ID">tef_admin_these</xsl:with-param>
 </xsl:call-template>
 </FIELDSET>
        <!-- flooble Expandable Content box end  -->
        <!--<div>
          <FONT size="6" >Description de la thèse</FONT>
          <xsl:for-each
            select="/mets:mets/mets:dmdSec[1]/mets:mdWrap[1]/mets:xmlData[1]/tef_desc:thesisRecord[1]">
            <xsl:call-template name="metaff"/>
          </xsl:for-each>
        </div>
        <div>
          <FONT size="6" >Métadonnées administratives de la thèse</FONT>
          <xsl:for-each select="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap/mets:xmlData/tef_admin:dossier_these/*">
            <p>
              <xsl:value-of select="."/>
            </p>
          </xsl:for-each>
        </div>-->
 <FIELDSET class="FS1">
 <xsl:call-template name="BEGIN">
  <xsl:with-param name="ID">MD_Rights</xsl:with-param>
  <xsl:with-param name="Title" >Métadonnées de droits</xsl:with-param>
  <xsl:with-param name="Level" >1</xsl:with-param>
 </xsl:call-template>
 <div id="MD_Rights" >
  <FIELDSET class="FS2">
  <xsl:call-template name="BEGIN">
   <xsl:with-param name="ID">tef_droits_etablissement_these</xsl:with-param>
   <xsl:with-param name="Title" >Métadonnées de droits de type : université</xsl:with-param>
   <xsl:with-param name="Level" >2</xsl:with-param>
  </xsl:call-template>
   <div id="tef_droits_etablissement_these" >
    <xsl:for-each
      select="key( 'amdSec_rightsMD', 'tef_droits_etablissement_these' )"
      >
     <xsl:call-template name="droiff"/>
    </xsl:for-each>
    </div>
   <xsl:call-template name="END">
    <xsl:with-param name="ID">tef_droits_etablissement_these</xsl:with-param>
   </xsl:call-template>
   </FIELDSET>

  <FIELDSET class="FS2">
  <xsl:call-template name="BEGIN">
   <xsl:with-param name="ID">tef_droits_auteur_these</xsl:with-param>
   <xsl:with-param name="Title" >Métadonnées de droits de type : auteur</xsl:with-param>
   <xsl:with-param name="Level" >2</xsl:with-param>
  </xsl:call-template>
   <div id="tef_droits_auteur_these" >
    <xsl:for-each
      select="key( 'amdSec_rightsMD', 'tef_droits_auteur_these' )"
      >
     <xsl:call-template name="droiff"/>
    </xsl:for-each>
    </div>
   <xsl:call-template name="END">
    <xsl:with-param name="ID">tef_droits_auteur_these</xsl:with-param>
   </xsl:call-template>
   </FIELDSET>
  </div>
 <xsl:call-template name="END">
  <xsl:with-param name="ID">MD_Rights</xsl:with-param>
 </xsl:call-template>
 </FIELDSET>
 <!-- *************************************************************************
****************************** VERSIONS ***************************************
*******************************************************************************
-->
 <FIELDSET class="FS1">
 <xsl:call-template name="BEGIN">
  <xsl:with-param name="ID">versions</xsl:with-param>
  <xsl:with-param name="Title" >Versions de la thèse</xsl:with-param>
  <xsl:with-param name="Level" >1</xsl:with-param>
 </xsl:call-template>
  <div id="versions" >
   <xsl:for-each
     select="/mets:mets/mets:structMap/mets:div/mets:div[@LABEL='VERSION_COMPLETE' or @LABEL='VERSION_INCOMPLETE']"
     >
    <xsl:variable name="Num_Version"><xsl:value-of select="position()" /></xsl:variable>
      <FIELDSET class="FS2">
      <xsl:call-template name="BEGIN">
       <xsl:with-param name="ID">version<xsl:value-of select="$Num_Version" /></xsl:with-param>
       <xsl:with-param name="Title" >Version de la thèse : <xsl:value-of select="@LABEL"/></xsl:with-param>
       <xsl:with-param name="Level" >2</xsl:with-param>
      </xsl:call-template>
      <div><xsl:attribute name="id" >version<xsl:value-of select="$Num_Version" /></xsl:attribute>
      <xsl:variable name="admid" select="@ADMID"/>
      <xsl:value-of select="@ADMID"/>
      <xsl:variable name="dmid" select="@DMDID"/>
      <xsl:value-of select="@DMDID"/>

      <xsl:for-each select="/mets:mets/mets:amdSec/*">
       <xsl:variable name="mdid" select="@ID"/>
       <xsl:if test="contains($admid, $mdid)">
          <FIELDSET class="FS3">
          <xsl:call-template name="BEGIN">
           <xsl:with-param name="ID">MD_gestion_<xsl:value-of select="$Num_Version" /></xsl:with-param>
           <xsl:with-param name="Title" >Métadonnées de gestion</xsl:with-param>
           <xsl:with-param name="Level" >3</xsl:with-param>
          </xsl:call-template>
          <div><xsl:attribute name="id" >MD_gestion_<xsl:value-of select="$Num_Version" /></xsl:attribute>
          <p>
           <xsl:call-template name="droiff"/>
          </p>
          </div>
         <xsl:call-template name="END">
          <xsl:with-param name="ID">MD_gestion_<xsl:value-of select="$Num_Version" /></xsl:with-param>
         </xsl:call-template>
         </FIELDSET>
       </xsl:if>
      </xsl:for-each>
      <br/>
      <xsl:for-each select="/mets:mets/mets:dmdSec">
       <xsl:variable name="mdid" select="@ID"/>
       <xsl:if test="contains($dmid, $mdid)">
          <FIELDSET class="FS3">
          <xsl:call-template name="BEGIN">
           <xsl:with-param name="ID">MD_descriptives_<xsl:value-of select="$Num_Version" /></xsl:with-param>
           <xsl:with-param name="Title" >Métadonnées descriptives</xsl:with-param>
           <xsl:with-param name="Level" >3</xsl:with-param>
          </xsl:call-template>
         <div><xsl:attribute name="id" >MD_descriptives_<xsl:value-of select="$Num_Version" /></xsl:attribute>
          <xsl:call-template name="metaff"/>
         </div>
         <xsl:call-template name="END">
          <xsl:with-param name="ID">MD_descriptives_<xsl:value-of select="$Num_Version" /></xsl:with-param>
         </xsl:call-template>
         </FIELDSET>
       </xsl:if>
      </xsl:for-each>

      <FIELDSET style="background: #EEEEEE;" >
       <LEGEND>
        <FONT size="5" >Editions de cette version</FONT>
       </LEGEND>
       <xsl:for-each select="mets:div">
        <xsl:variable name="Num_Edition"><xsl:value-of select="position()" /></xsl:variable>
        <xsl:variable name="Num_V_E"><xsl:value-of select="$Num_Version" />_<xsl:value-of select="$Num_Edition" /></xsl:variable>
         <FIELDSET class="FS4">
         <xsl:call-template name="BEGIN">
           <xsl:with-param name="ID">MD_Edition_<xsl:value-of select="$Num_V_E" /></xsl:with-param>
           <xsl:with-param name="Title" >Edition de type :<xsl:value-of select="@LABEL"/></xsl:with-param>
           <xsl:with-param name="Level" >4</xsl:with-param>
          </xsl:call-template>
         <div><xsl:attribute name="id" >MD_Edition_<xsl:value-of select="$Num_V_E" /></xsl:attribute>
                <xsl:variable name="edid" select="@DMDID"/>
                <xsl:value-of select="/mets:mets/*[@ID=$edid]"/>
                <xsl:variable name="fid" select="mets:fptr/@FILEID"/>
                <xsl:if test="/mets:mets/mets:fileSec/mets:fileGrp[@ID=$fid][@USE='archive']">
                  <h5>
                    <xsl:text>Métadonnées de fichiers :</xsl:text></h5>
                    <xsl:for-each select="/mets:mets/mets:fileSec/mets:fileGrp[@USE='archive'][@ID=$fid]/mets:file">
                      <xsl:variable name="metaFileID" select="@ADMID"></xsl:variable>
                      <p>
                        <xsl:for-each select="//mets:techMD[@ID=$metaFileID]/mets:mdWrap/mets:xmlData/tef:meta_fichier ">
                          <xsl:call-template name="metaff"></xsl:call-template>
                        </xsl:for-each>

                      </p>
                    </xsl:for-each>

                </xsl:if>
              </div>
             <xsl:call-template name="END">
              <xsl:with-param name="ID">MD_Edition_<xsl:value-of select="$Num_V_E" /></xsl:with-param>
             </xsl:call-template>
             </FIELDSET>
            </xsl:for-each>
            </FIELDSET>
            </div>
            <xsl:call-template name="END">
             <xsl:with-param name="ID">version<xsl:value-of select="$Num_Version" /></xsl:with-param>
            </xsl:call-template>
            </FIELDSET>
          <BR/><BR/>
        </xsl:for-each>
       </div>
       <xsl:call-template name="END">
        <xsl:with-param name="ID">versions</xsl:with-param>
       </xsl:call-template>
       </FIELDSET>
        <!--
        <xsl:for-each select="/mets:mets/mets:structMap/mets:div/mets:div[@LABEL='VERSION_INCOMPLETE']">
          <div class="version" style="border: 1px solid #000000;
            padding: 1%; background: #EEEEEE; ">
            <FONT size="5" >PPPP <xsl:text>Version de la thèse</xsl:text>
              <xsl:text> : </xsl:text>
              <xsl:value-of select="@LABEL"/>
            </FONT>
            <xsl:variable name="admid" select="@ADMID"/>
            <xsl:variable name="dmid" select="@DMDID"/>
            <xsl:for-each select="/mets:mets/mets:amdSec/*">
              <xsl:variable name="mdid" select="@ID"/>
              <xsl:if test="contains($admid, $mdid)">
                <div style="border: 1px solid #000000; padding:
                  1%; background: #EEEEEE; " class="hhh">
                  <h3>Métadonnées de gestion</h3>
                  <p>
                    <xsl:value-of select="."/>
                  </p>
                </div>
              </xsl:if>
            </xsl:for-each><br></br>
            <xsl:for-each select="/mets:mets/mets:dmdSec">
              <xsl:variable name="mdid" select="@ID"/>
              <xsl:if test="contains($dmid, $mdid)">
                <div style="border: 1px solid #000000; padding:
                  1%; background: #EEEEEE; " class="hhh">
                  <h3>Métadonnées descriptives</h3>
                  <p>
                    <xsl:value-of select="."/>
                  </p>
                </div>
              </xsl:if>
            </xsl:for-each>
            <h3>Editions de cette version</h3>
            <xsl:for-each select="mets:div">
              <div style="border: 1px solid #000000; padding: 1%;
                background: #EEEEEE; " class="hhh">
                <h4>
                  <xsl:text>Edition de type : </xsl:text>
                  <xsl:value-of select="@LABEL"/>
                </h4>
                <xsl:variable name="edid" select="@DMDID"/>
                <xsl:value-of select="/mets:mets/*[@ID=$edid]"/>
                <xsl:variable name="fid" select="mets:fptr/@FILEID"/>
                <xsl:if test="/mets:mets/mets:fileSec/mets:fileGrp[@ID=$fid]">
                  <h5>
                    <xsl:text>Métadonnées de fichiers</xsl:text>
                    <xsl:value-of select="/mets:mets/mets:fileSec/mets:fileGrp[@ID=$fid]//@*"/>
                  </h5>
                </xsl:if>
              </div><br></br>
            </xsl:for-each>
          </div>
        </xsl:for-each>-->
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
       <xsl:choose>
        <xsl:when test="@CONTEXTCLASS!='OTHER'">
         <xsl:value-of select="@CONTEXTCLASS"/>
        </xsl:when>
        <xsl:otherwise>
         <xsl:value-of select="@OTHERCONTEXTTYPE"/>
        </xsl:otherwise>
       </xsl:choose>
          autorisé à effectuer les opérations suivantes :
         <ul>
         <xsl:for-each select="metsRights:Permissions/@*">
          <li>
            <xsl:value-of select="name()"/> : <xsl:value-of select="."/>
          </li>
        </xsl:for-each>
       </ul>

       <p>
          type de contrainte :
        <xsl:value-of select=".//metsRights:Constraints/@CONSTRAINTTYPE"/>
          :
        <xsl:value-of
          select=".//metsRights:Constraints/metsRights:ConstraintDescription"
         />
        </p>
    </xsl:for-each>
  </xsl:template>

 <xsl:template name="metaff">
    <xsl:variable name="ici" select="./*"/>
    <xsl:for-each select="$ici">
      <p>
        <xsl:choose>
          <xsl:when test="$ici=text()">
            <i>
              <xsl:value-of select="name()"/>
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

  <xsl:template name="tef_desc_these" >
   <xsl:for-each
    select="key( 'dmdSec', 'tef_desc_these' )"
    >
   <xsl:call-template name="metaff"/>
  </xsl:for-each>

  </xsl:template>
 <xsl:template name="INCLUDE_JAVASCRIPT" >
  <script language="javascript" src="tef_html.js" />
 </xsl:template>
 
 <xsl:template name="BEGIN" >
  <xsl:param name="ID"    />
  <xsl:param name="Title" />
  <xsl:param name="Level" />
  <xsl:param name="InitialState" >?</xsl:param>
  
  <xsl:variable name="RED" select ="175 + $Level*10" />
  <xsl:variable name="LEVEL" select="7 - $Level" />
  
  <LEGEND>
   <xsl:attribute name="style" >
    background-color:rgb( 220, <xsl:value-of select="$RED"/>, 220 );
   </xsl:attribute>
   [<A>
    <xsl:attribute name="id" >link_<xsl:value-of select="$ID"/></xsl:attribute>
    <xsl:attribute name="href" >javascript:toggle( "<xsl:value-of select="$ID"/>" );</xsl:attribute>
    <xsl:attribute name="title" >Afficher/Masquer</xsl:attribute>
    <xsl:attribute name="class" >bgt</xsl:attribute>
    <xsl:attribute name="style" >text-decoration: none; color:#000000;</xsl:attribute>
    <xsl:value-of select="$InitialState"/>
   </A>]
   <FONT>
    <xsl:attribute name="size" >
     <xsl:value-of select="$LEVEL"/>
    </xsl:attribute>
    <xsl:value-of select="$Title"/>
   </FONT>
  </LEGEND>
 </xsl:template>
 
 <xsl:template name="END" >
  <xsl:param name="ID"    />
  <noscript>
   Pour bénéficier de la fonction masquer/afficher
   , vous devez autoriser l utilisation des scripts ( javascript )
  </noscript>
  <!-- xsl:text disable-output-escaping="yes">
   &lt;script language="javascript" >
  </xsl:text>
   toggle( "<xsl:value-of select="$ID" />" );
  <xsl:text disable-output-escaping="yes">
   &lt;/script>
  </xsl:text -->
  
  <script language="javascript" >
   toggle( "<xsl:value-of select="$ID" />" );
  </script>
 </xsl:template>
</xsl:stylesheet>
