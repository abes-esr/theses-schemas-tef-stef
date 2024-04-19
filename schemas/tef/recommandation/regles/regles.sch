<?xml version="1.0" encoding="UTF-8"?>

<!-- 
	Ce schéma correspond à la version 1.5 de Schematron. 
	Au cours de l'appel à commentaires (fin : 12 mai 2006), cette version sera remplacée 
	par la version dite ISO, désormais la norme internationale ISO/IEC 19757-3.
	
	
	19-05-2006
	. Correction : 	URL du fichier XML contenant les données sur les sets OAI proposés par TEF :
			http://www.abes.fr/abes/documents/tef/recommandation/oaiSets.xml
 -->
<sch:schema xmlns:sch="http://www.ascc.net/xml/schematron">
	<sch:ns prefix="mets" uri="http://www.loc.gov/METS/"/>
	<sch:ns prefix="tef" uri="http://www.abes.fr/abes/documents/tef"/>
	<sch:ns prefix="metsRights" uri="http://cosimo.stanford.edu/sdr/metsrights/"/>
	<sch:ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>
	<sch:ns prefix="dc" uri="http://purl.org/dc/elements/1.1/"/>
	<sch:ns prefix="dcterms" uri="http://purl.org/dc/terms/"/>
	<sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
	<!-- Les blocs de métadonnées sous la racine "mets:met"-->
	<sch:pattern name="mets:mets -- Quels blocs de métadonnées ?">
		<sch:rule context="/">
			<sch:assert test="mets:mets"> La racine du document TEF doit être mets:mets. </sch:assert>
			<sch:assert test="count(mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_these'])=1">
				Il faut un et un seul bloc md de type "tef_desc_these". </sch:assert>
			<sch:assert test="mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_edition']"> Il faut
				au moins un bloc md de type "tef_desc_edition". </sch:assert>
			<sch:assert
				test="count(mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these'])=1"
				> Il faut un et un seul bloc md de type "tef_admin_these". </sch:assert>
			<sch:assert
				test="count(mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap[@OTHERMDTYPE='tef_droits_etablissement_these'])=1"
				> Il faut un et un seul bloc md de type "tef_droits_etablissement_these". </sch:assert>
			<sch:assert
				test="count(mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap[@OTHERMDTYPE='tef_droits_auteur_these'])=1"
				> Il faut un et un seul bloc md de type "tef_droits_auteur_these". </sch:assert>
			<sch:assert
				test="mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap[@OTHERMDTYPE='tef_droits_version']">
				Il faut au moins un bloc md de type "tef_droits_version". </sch:assert>
			<sch:assert
				test="mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_tech_fichier']"> Il
				faut au moins un bloc md de type "tef_tech_fichier". </sch:assert>
			<sch:assert test="mets:mets/mets:fileSec"> Il faut un bloc mets:fileSec. </sch:assert>
			<sch:assert test="mets:mets/mets:structMap"> Il faut un bloc mets:structMap. </sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern name="mets:mets -- ID sur chaque bloc de métadonnées">
		<sch:rule context="/mets:mets/mets:dmdSec | /mets:mets/mets:amdSec/mets:techMD |
			/mets:mets/mets:amdSec/mets:rightsMD">
			<sch:assert test="@ID"> Tout bloc de métadonnées possède un identifiant. En d'autres termes,
				tout élément mets:dmdSec, mets:techMD ou mets:rightsMD doit posséder un attribut ID.
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern name="mets:mets -- autorités">
		<sch:rule context="//tef:autoriteExterne">
			<sch:assert test="@autoriteSource"> L'élément "tef:autoriteExterne" doit avoir un attribut
				"autoriteSource" désignant un référentiel externe comme, par exemple, le catalogue Sudoc.
			</sch:assert>
		</sch:rule>
		<sch:rule context="//tef:autoriteInterne">
			<sch:assert test=". = ../../tef:MADSAuthority/@authorityID"> L'élément "tef:autoriteInterne"
				permet de lier l'éditeur à ses données d'autorité (du bloc "tef:MADSAuthority") au moyen de
				l'attribut "authorityID". "tef:autoriteInterne" doit donc avoir la même valeur que cet
				attribut. </sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern name="mets:mets -- attributs de langue obligatoires">
		<sch:rule context="//tef:thesisRecord/dc:title | //tef:thesisRecord/dcterms:alternative |
			//tef:thesisRecord/dcterms:tableOfContents    | //tef:thesisRecord/dcterms:abstract |
			//tef:thesisRecord/dc:subject | //tef:thesis.degree.discipline">
			<sch:assert test="@xml:lang"> Il faut un attribut de langue xml:lang ici : <sch:name/>
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	<!-- Métadonnées descriptives de thèse -->
	<!-- pas plus de 1 dcterms:medium, dcterms:extent, dcterms:issued -->
	<sch:pattern name="tef_desc_these -- général">
		<sch:rule context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_these']">
			<sch:assert test="mets:xmlData/tef:thesisRecord"> La racine du bloc md de type
				"tef_desc_these" doit être "tef:thesisRecord". </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_these']/mets:xmlData/tef:thesisRecord">
			<sch:assert test="count(dc:title[@xml:lang='fr'])=1"> Il doit y avoir un et un seul élément
				"titre" avec un attribut "xml:lang" ayant la valeur "fr" sous l'élément tef:thesisRecord. </sch:assert>
			<!-- je ne suis pas sur qu'on impose le titre en fr -->
			<sch:assert test="dc:subject[@xml:lang='fr']"> Il faut au moins un sujet en Français </sch:assert>
			<sch:assert test="count(tef:sujetRameau) &lt; 2"> Il ne peut y avoir plus d'un élément
				tef:sujetRameau sous l'élément "tef:thesisRecord" </sch:assert>
			<sch:assert test="count(dcterms:abstract[@xml:lang='fr'])=1"> Il faut un et un seul résumé en
				Français. </sch:assert>
			<sch:assert test="count(dcterms:abstract[@xml:lang='en'])=1"> Il faut un et un seul résumé en
				Anglais. </sch:assert>
			<sch:assert test="dc:type[@xsi:type = 'dcterms:DCMIType']"> Dans le bloc des md descriptives,
				il existe au moins un élément dc:type dont l'attribut xsi:type a pour valeur
				"dcterms:DCMIType". </sch:assert>
			<sch:assert test="count(dc:type[text() = 'Electronic Thesis or Dissertation'])=1"> Dans le
				bloc des md descriptives, il doit exister un et un seul élément dc:type ayant pour valeur
				"Electronic Thesis or Dissertation". </sch:assert>
			<sch:assert test="dc:language[@xsi:type='dcterms:RFC3066']"> Il faut un dc:language ayant pour
				attribut @xsi:type='dcterms:RFC3066' (de préférence code de langue sur deux caractères).
			</sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_these']/mets:xmlData/tef:thesisRecord/dcterms:alternative">
			<sch:assert test="@xml:lang"> S'il y a un élément dcterms:alternative (traduction du titre et
				du sous-titre de la thèse) sous l'élément tef:thesisRecord, il doit avoir un attribut
				"xml:lang". </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_these']/mets:xmlData/tef:thesisRecord/dc:subject[@xsi:type
			= 'tef:oaiSetLang']">
			<sch:assert test="text() = document('http://www.abes.fr/abes/documents/tef/recommandation/oaiSets.xml')/ListSets/set/setName  |
				document('http://www.abes.fr/abes/documents/tef/recommandation/oaiSets.xml')/ListSets/set/setDescription/dc/dc:description"> Si un élément
				dc:subject a pour attribut xsi:type (schéma d'encodage) 'tef:oaiSetLang', alors sa valeur
				est un des libellés contenus dans le fichier tef_sets.xml </sch:assert>
		</sch:rule>
	</sch:pattern>
	<!-- Métadonnées descriptives de version -->
	<sch:pattern name="tef_desc_version">
		<sch:rule
			context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_version']/mets:xmlData">
			<sch:assert test="tef:version"> La racine d'un bloc md de type "tef_desc_version" doit être
				"tef:version". </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_version']/mets:xmlData/tef:version">
			<sch:assert test="tef:manque"> Pour toute description de version incomplète, il faut préciser
				au moins un élément "tef:manque" pour préciser en quoi cette version est incomplète.
			</sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_version']/mets:xmlData/tef:version/tef:manque">
			<sch:assert test="tef:ressourceID or tef:noteVersion"> Toute version incomplète "tef:manque"
				doit avoir pour fils l'un de ces deux éléments : "tef:ressourceID" (qui permet d'identifier
				une ressource externe) ou "tef:noteVersion" (qui permet de décrire librement le contenu
				d'une version particulière), ou les deux. </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_version']/mets:xmlData/tef:version/tef:manque/tef:ressourceID">
			<sch:assert test="text() =/mets:mets/mets:structMap//mets:div[@TYPE='RESSOURCE_TIERS' or
				@TYPE='TRAVAUX' or @TYPE='RESSOURCES_EXTERNES']/@ID"> Si une version incomplète possède un
				élément tef:ressourceID, la valeur de ce dernier doit correspondre à l'attribut ID d'une
				ressource externe, dans le bloc structMap. </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_version']/mets:xmlData/tef:version/dcterms:replaces">
			<sch:assert test="@xsi:type = 'dcterms:URI'"> Si une version incomplète possède un élément
				"dcterms:replaces", il doit avoir un attribut xsi:type = 'dcterms:URI'. </sch:assert>
		</sch:rule>
	</sch:pattern>
	<!-- Métadonnées descriptives d'édition -->
	<sch:pattern name="tef_desc_edition">
		<sch:rule context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_edition']">
			<sch:assert test="mets:xmlData/tef:edition"> La racine d'un bloc md de type
				"tef_desc_edition"est "tef:edition". </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_edition']/mets:xmlData/tef:edition">
			<sch:assert test="count(dcterms:medium[@xsi:type = 'dcterms:IMT' ])=1"> Dans chaque bloc md de
				type "tef_desc_edition", il doit y avoir un et un seul élément "dcterms:medium" ayant pour
				attribut "xsi:type" dont la valeur est "dcterms:IMT". </sch:assert>
			<sch:assert test="count(dcterms:extent)=1"> Dans chaque bloc md de type "tef_desc_edition", il
				doit y avoir un et un seul élément "dcterms:extent". </sch:assert>
			<sch:assert test="count(dcterms:issued)&lt;2"> Dans chaque bloc md de type
				"tef_desc_edition", il ne doit pas y avoir plus d'un élément "dcterms:issued". </sch:assert>
			<sch:assert test="count(dc:identifier)&gt;0"> Dans chaque bloc md de type
				"tef_desc_edition", il doit y avoir au moins un élément "dc:identifier". </sch:assert>
		</sch:rule>
		<!--tef:editeur-->
		<sch:rule
			context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_edition']/mets:xmlData/tef:edition/tef:editeur">
			<sch:assert test="count(tef:nom)=1"> Dans chaque bloc "tef:editeur", il doit y avoir un et un
				seul élément "tef:nom". </sch:assert>
			<sch:assert test="tef:place"> Dans chaque bloc "tef:editeur", il doit y avoir au moins un
				élément "tef:place". </sch:assert>
		</sch:rule>
	</sch:pattern>
	<!-- Métadonnées descriptives de ressource externe -->
	<sch:pattern name="tef_desc_externe">
		<sch:rule context="/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_externe']">
			<sch:assert test="mets:xmlData/tef:ressourceExterneDescription"> La racine d'un bloc md de
				type "tef_desc_externe" est "tef:ressourceExterneDescription". </sch:assert>
		</sch:rule>
	</sch:pattern>
	<!-- Métadonnées administratives de thèse -->
	<sch:pattern name="tef_admin_these">
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']">
			<sch:assert test="mets:xmlData/tef:thesisAdmin"> La racine du bloc md de type
				"tef_admin_these" est "thesisAdmin". </sch:assert>
		</sch:rule>
		<!--tef:thesisAdmin-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin">
			<sch:assert test="count(tef:auteur) = 1"> Parmi les métadonnées administratives (md de type
				"tef_admin_these"), il faut un élément "tef:auteur" (auteur de la thèse) qui contient la
				description de l'auteur. </sch:assert>
			<sch:assert test="count(dc:identifier[@xsi:type='tef:NNT'])=1"> Parmi les métadonnées
				administratives (md de type "tef_admin_these"), il faut un et un seul élément
				"dc:identifier" ayant un attribut "xsi:type" dont la valeur est 'tef:NNT' (numéro national
				de thèse). </sch:assert>
			<sch:assert test="count(dcterms:dateAccepted[@xsi:type='dcterms:W3CDTF'])=1"> Parmi les
				métadonnées administratives (md de type "tef_admin_these"), il faut un et un seul élément
				"dcterms:dateAccepted" ayant un attribut xsi:type dont la valeur est "dcterms:W3CDTF". </sch:assert>
			<sch:assert test="count(tef:thesis.degree) = 1"> Parmi les métadonnées administratives (md de
				type "tef_admin_these"), il faut un et un seul élément "tef:thesis.degree" qui contient les
				métadonnées spécifiques au diplôme obtenu à l’issue d’une soutenance de thèse. </sch:assert>
			<sch:assert test="count(tef:theseSurTravaux)=1"> Parmi les métadonnées administratives (md de
				type "tef_admin_these"), il faut un et un seul élément "tef:theseSurTravaux" qui permet de
				préciser s'il s'agit d'une thèse constituée en partie d'articles publiés par le doctorant
				avant la soutenance de sa thèse. </sch:assert>
			<sch:assert test="count(tef:avisJury)=1"> Parmi les métadonnées administratives (md de type
				"tef_admin_these"), il faut un et un seul élément "tef:avisJury" qui permet de préciser si
				le jury autorise ou non la publication de la thèse après la soutenance. </sch:assert>
			<sch:assert test="tef:directeurThese"> Parmi les métadonnées administratives (md de type
				"tef_admin_these"), il faut au moins un élément "tef:directeurThese" qui permet de décrire
				la personne qui encadre et oriente le travail du doctorant. </sch:assert>
			<sch:assert test="tef:oaiSetSpec"> Parmi les métadonnées administratives (md de type
				"tef_admin_these"), il faut au moins un élement "tef:oaiSetSpec" qui permet de préciser un
				set OAI auquel est rattachée la thèse. </sch:assert>
		</sch:rule>
		<!--tef:auteur-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:auteur">
			<sch:assert test="count(tef:nom)=1"> Parmi les métadonnées de description de l'auteur, il faut
				un et un seul élément "tef:nom" (nom de famille de l'auteur). </sch:assert>
			<sch:assert test="count(tef:prenom)=1"> Parmi les métadonnées de description de l'auteur, il
				faut un et un seul élément "tef:prenom" (prénom de l'auteur). </sch:assert>
			<sch:assert test="count(tef:dateNaissance)=1"> Parmi les métadonnées de description de
				l'auteur, il faut un et un seul élément "tef:dateNaissance" (date de naissance de l'auteur)
				dans le format de date AAAA/MM/JJ. </sch:assert>
			<sch:assert test="count(tef:nationalite[@scheme='ISO-3166-1'])=1"> Parmi les métadonnées de
				description de l'auteur, il faut un et seul élément "tef:nationalite" (nationalité de
				l'auteur : code du pays sur 2 caractères en majuscules ) ayant un attribut "scheme" (schéma
				d'encodage) dont la valeur est 'ISO-3166-1' . </sch:assert>
		</sch:rule>
		<!--tef:thesis.degree-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:thesis.degree">
			<sch:assert test="count(tef:thesis.degree.discipline[@xml:lang])=1"> Parmi les métadonnées
				spécifiques au diplôme obtenu ("tef:thesis.degree"), il faut un et un seul élément
				"tef:thesis.degree.discipline" (contenant la discipline telle qu’elle figure sur la page de
				titre de la thèse) ayant un attribut "xml:lang" dont la valeur est la langue encodée sur
				deux caractères. </sch:assert>
			<sch:assert test="tef:thesis.degree.grantor"> Parmi les métadonnées spécifiques au diplôme
				obtenu ("tef:thesis.degree"), il faut au moins un élément "tef:thesis.degree.grantor", qui
				permet de décrire chaque établissement de soutenance. Dans le cas d’une thèse réalisée en
				co-tutelle, renseigner l’université de co-tutelle. </sch:assert>
		</sch:rule>
		<!--tef:thesis.degree.level-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:thesis.degree/tef:thesis.degree.level">
			<sch:assert test="text()=&quot;Doctorat d&apos;Etat&quot; or
				text()=&quot;Doctorat&quot;     or text()=&quot;Doctorat de troisième
				cycle&quot;"> Parmi les métadonnées spécifiques au diplôme obtenu ("tef:thesis.degree"),
				il faut un élément "tef:thesis.degree.level", qui permet de préciser le type de doctorat
				obtenu. Cet élément a pour valeur 'Doctorat', 'Doctorat d'Etat' ou 'Doctorat de troisième
				cycle'. </sch:assert>
		</sch:rule>
		<!--tef:thesis.degree.grantor-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:thesis.degree/tef:thesis.degree.grantor">
			<sch:assert test="tef:nom"> Parmi les métadonnées spécifiques au diplôme obtenu
				("tef:thesis.degree"), il faut un élément "tef:nom" renseigné conformément aux normes
				bibliographiques en vigueur, en l'occurrence à la norme française Z44-050. S'il s’agit d’une
				université, on ne garde que le nom de la ville accompagné, s’il y a plusieurs universités
				dans la même ville, du numéro de I’université (en chiffres arabes). Dans les autres cas, on
				donne le nom de la ville où se trouve réellement l’établissement de soutenance, suivi du nom
				de l’établissement introduit par une virgule, espace (, ). Si l’établissement est couramment
				désigné par un sigle, on conserve celui-ci. </sch:assert>
			<sch:assert test="not(not(tef:autoriteInterne) and not(tef:autoriteExterne))"> Parmi les
				métadonnées spécifiques au diplôme obtenu ("tef:thesis.degree"), le lien vers les données
				d'autorité est obligatoire pour l'établissement de soutenance. L'élément
				"tef:thesis.degree.grantor" doit donc posséder soit "tef:autoriteExterne", soit
				"tef:autoriteInterne", soit les deux. </sch:assert>
		</sch:rule>
		<!--tef:theseSurTravaux-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:theseSurTravaux">
			<sch:assert test="text()='oui' or text()='non'"> L'élément "tef:theseSurTravaux" doit prendre
				l'une des deux valeurs "oui" ou "non", toujours en minuscules. </sch:assert>
		</sch:rule>
		<!--tef:avisJury-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:avisJury">
			<sch:assert test="text()='oui' or text()='non'"> L'élément "tef:avisJury" doit prendre l'une
				des deux valeurs "oui" ou "non", toujours en minuscules. </sch:assert>
		</sch:rule>
		<!--tef:directeurThese-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:directeurThese">
			<sch:assert test="count(tef:nom)=1"> Parmi les métadonnées de description du directeur de
				thèse, il faut un et un seul élément "tef:nom". </sch:assert>
			<sch:assert test="count(tef:prenom)=1"> Parmi les métadonnées de description du directeur de
				thèse, il faut un et un seul élément "tef:prenom". </sch:assert>
			<sch:assert test="not(not(tef:autoriteInterne) and not(tef:autoriteExterne))"> Parmi les
				métadonnées de description du directeur de thèse, le lien vers les données d'autorité est
				obligatoire. L'élément "tef:directeurThese" doit donc posséder soit "tef:autoriteExterne",
				soit "tef:autoriteInterne", soit les deux. </sch:assert>
		</sch:rule>
		<!--tef:presidentJury-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:presidentJury">
			<sch:assert test="count(tef:nom)=1"> Parmi les métadonnées de description du président du
				jury, il faut un et un seul élément "tef:nom". </sch:assert>
			<sch:assert test="count(tef:prenom)=1"> Parmi les métadonnées de description du président du
				jury, il faut un et un seul un élément "tef:prenom". </sch:assert>
		</sch:rule>
		<!--tef:membreJury-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:membreJury">
			<sch:assert test="count(tef:nom)=1"> Parmi les métadonnées de description d'un membre du jury,
				il faut un et un seul élément "tef:nom". </sch:assert>
			<sch:assert test="count(tef:prenom)=1"> Parmi les métadonnées de description d'un membre du
				jury, il faut un et un seul élémentr un élément "tef:prenom". </sch:assert>
		</sch:rule>
		<!--tef:rapporteur-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:rapporteur">
			<sch:assert test="count(tef:nom)=1"> Parmi les métadonnées de description d'un rapporteur, il
				faut un et un seul élément "tef:nom". </sch:assert>
			<sch:assert test="count(tef:prenom)=1"> Parmi les métadonnées de description d'un rapporteur,
				il faut un et un seul élément "tef:prenom". </sch:assert>
		</sch:rule>
		<!--tef:ecoleDoctorale-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:ecoleDoctorale">
			<sch:assert test="count(tef:nom)"> Parmi les métadonnées de description d'une école doctorale,
				il faut un et un seul élément "tef:nom". </sch:assert>
		</sch:rule>
		<!--partenaireRecherche-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:partenaireRecherche">
			<sch:assert test="not(@type='autreType' and not(@autreType))"> Si l'attribut type de
				tef:partenaireRecherche a pour valeur "autreType", alors il possède l'attribut autreType. </sch:assert>
			<sch:assert test="@type"> Parmi les métadonnées de description d'un partenaire de recherche,
				l'élément "tef:partenaireRecherche" doit avoir un attribut qui renseigne le type de
				partenaire de recherche ayant participé à la réalisation de la thèse. </sch:assert>
			<sch:assert test="@type='equipeRecherche' or @type='laboratoire' or @type='universite' or
				@type='entreprise' or @type='fondation' or @type='autreType'"> Le type de partenaire doit
				être choisi dans cette liste : equipeRecherche, laboratoire, universite, entreprise,
				fondation, autreType. </sch:assert>
			<sch:assert test="count(tef:nom)=1"> Parmi les métadonnées de description d'un partenaire de
				recherche, il faut un et un seul élément "tef:nom". </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:partenaireRecherche[@type='autreType']">
			<sch:assert test="@autreType"> Si le type de partenaire est "autreType', l'attribut autreType
				doit préciser de quel autre type de partenaire il s'agit. </sch:assert>
		</sch:rule>
		<!--tef:MADSAuthority-->
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin/tef:MADSAuthority">
			<sch:assert test="count(tef:personMADS)=1"> La racine d'un bloc md de type "tef:MADSAuthority"
				doit être "tef:personMADS". </sch:assert>
			<sch:assert test="@authorityID =
				/mets:mets/mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='tef_desc_edition']/mets:xmlData/tef:edition/tef:editeur/tef:autoriteInterne
				|
				/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_admin_these']/mets:xmlData/tef:thesisAdmin//tef:autoriteInterne"
				> Chaque bloc "tef:MADSAuthority" doit avoir un attribut "@authorityID". Cet identifiant
				doit avoir la même valeur que l'élément "tef:autoriteInterne" contenu dans le bloc de
				description de la personne (physique ou morale) mentionnée dans la notice et sur laquelle
				portent ces données d'autoriité (éditeur, directeur de thèse, président du jury, membre
				dujury, rapporteur, école doctoral, partenre de recherche). </sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern name="tef_admin_these -- oai">
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap/mets:xmlData/tef:thesisAdmin/tef:oaiSetSpec">
			<sch:assert test="text() = document('http://www.abes.fr/abes/documents/tef/recommandation/oaiSets.xml')//setSpec"> L'élément tef:oaiSetSpec (code
				de set OAI) doit puiser sa valeur dans la liste contenue dans le fichier tef_sets.xml.
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern name="tef_admin_these -- these travaux">
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap/mets:xmlData/tef:thesisAdmin[tef:theseSurTravaux='oui']">
			<sch:assert test="/mets:mets/mets:structMap/mets:div//mets:div[@TYPE='TRAVAUX']"> Si les
				métadonnées administratives indiquent qu'il s'agit d'une thèse sur travaux
				(tef:theseSurTravaux='oui'), alors dans le bloc structMap on doit trouver un div/div de type
				"TRAVAUX". </sch:assert>
		</sch:rule>
	</sch:pattern>
	<!-- Métadonnées de conservation de fichier :  -->
	<sch:pattern name="tef_tech_fichier : règles générales">
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_tech_fichier']">
			<sch:assert test="mets:xmlData/tef:meta_fichier"> La racine d'un bloc md de type
				"tef_tech_fichier" doit être "tef:meta_fichier". </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:techMD/mets:mdWrap[@OTHERMDTYPE='tef_tech_fichier']/mets:xmlData/tef:meta_fichier">
			<sch:assert test="count(tef:encodage)=1"> L'élément tef:mets_fichier doit avoir pour enfant un
				et un seul élément tef:encodage. </sch:assert>
			<sch:assert test="count(tef:formatFichier)=1"> L'élément tef:mets_fichier doit avoir pour
				enfant un et un seul élément tef:formatFichier. </sch:assert>
			<sch:assert test="count(tef:taille)=1"> L'élément tef:mets_fichier doit avoir pour enfant un
				et un seul élément tef:taille. </sch:assert>
			<sch:assert test="count(tef:note)&lt;2"> Il ne peut y avoir plus d'un élément tef:note
				sous tef:meta_fichier. </sch:assert>
			<sch:assert test="count(tef:structureFichier)&lt;2"> Il ne peut y avoir plus d'un élément
				tef:structureFichier sous tef:meta_fichier. </sch:assert>
			<sch:assert test="count(tef:AutreFormatFichier)&lt;2"> Il ne peut y avoir plus d'un
				élément tef:AutreFormatFichier sous tef:meta_fichier. </sch:assert>
		</sch:rule>
		<sch:rule context="tef:formatFichier[text() = 'autreFormat']">
			<sch:assert test="tef:autreFormatFichier"> Si l'élément tef:formatFichier a pour valeur
				'autreFormat', alors il doit exister un élément autreFormatFichier sous tef:meta_fichier.
			</sch:assert>
		</sch:rule>
		<sch:rule context="tef:formatFichier">
			<sch:assert test="text()='OpenDocument' or text()='PDF' or text()='PDF/A' or text()='HTML'
				or text()='RTF' or text()='TXT' or text()='XML' or text()='JPEG' or text()='GIF' or
				text()='PNG'      or text()='TIFF' or text()='MP3' or text()='MPEG' or text()='QuickTime' or
				text()='autreFormat'"> L'élément tef:formatFichier doit avoir pour valeur 'OpenDocument' ou
				'PDF' ou 'PDF/A' ou 'HTML' ou 'RTF' ou 'TXT' ou 'XML' ou 'JPEG' ou 'GIF' ou 'PNG' ou 'TIFF'
				ou 'MP3' ou 'MPEG' ou 'QuickTime' ou ou 'autreFormat'. </sch:assert>
		</sch:rule>
		<sch:rule context="tef:encodage">
			<sch:assert test="text()='ASCII' or text()='Latin 1' or text()='Unicode'"> L'élément
				tef:formatFichier doit avoir pour valeur 'ASCII' ou 'Latin 1' ou 'Unicode'. </sch:assert>
		</sch:rule>
	</sch:pattern>
	<!-- ***************************************** metsRights ***************************************** -->
	<!-- Métadonnées de droits -->
	<sch:pattern name="tef_droits">
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap[@OTHERMDTYPE='tef_droits_etablissement_these']">
			<sch:assert test="mets:xmlData/metsRights:RightsDeclarationMD"> La racine du bloc md de type
				"tef_droits_etablissement_these" est "metsRights:RightsDeclarationMD". </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap[@OTHERMDTYPE='tef_droits_auteur_these']">
			<sch:assert test="mets:xmlData/metsRights:RightsDeclarationMD"> La racine du bloc md de type
				"tef_droits_auteur_these" est "metsRights:RightsDeclarationMD". </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap[@OTHERMDTYPE='tef_droits_externe']">
			<sch:assert test="mets:xmlData/metsRights:RightsDeclarationMD"> La racine du bloc md de type
				"tef_droits_externe" est "metsRights:RightsDeclarationMD". </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap[@OTHERMDTYPE='tef_droits_version']">
			<sch:assert test="mets:xmlData/metsRights:RightsDeclarationMD"> La racine du bloc md de type
				"tef_droits_version" est "metsRights:RightsDeclarationMD". </sch:assert>
		</sch:rule>
		<sch:rule
			context="mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap/mets:xmlData/metsRights:RightsDeclarationMD/metsRights:Context[@CONTEXTCLASS=&quot;GENERALPUBLIC&quot;]">
			<sch:assert test="metsRights:Permissions/@DISPLAY"> Pour chaque bloc de md de droits
				(metsRights), le droit d'affichage (DISPLAY) sur Internet (GENERAL PUBLIC) doit être
				explicitement renseigné. </sch:assert>
		</sch:rule>
		<sch:rule
			context="mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap/mets:xmlData/metsRights:RightsDeclarationMD/metsRights:Context[@CONTEXTCLASS=&quot;GENERALPUBLIC&quot;]">
			<sch:assert test="metsRights:Permissions/@DUPLICATE"> Pour chaque bloc de md de droits
				(metsRights), le droit de reproduction (DUPLICATE) sur Internet (GENERAL PUBLIC) doit être
				explicitement renseigné. </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap[@OTHERMDTYPE='tef_droits_etablissement_these']/mets:xmlData/metsRights:RightsDeclarationMD/metsRights:Context/metsRights:Constraints[@CONSTRAINTTYPE='TIME']">
			<sch:assert test="starts-with(metsRights:ConstraintDescription, 'confidentialité')"> Pour
				chaque bloc de métadonnées de type "tef_droits_etablissement_these", la restriction de type
				"TIME" doit commencer par "confidentialité". </sch:assert>
		</sch:rule>
		<sch:rule
			context="/mets:mets/mets:amdSec/mets:rightsMD/mets:mdWrap[@OTHERMDTYPE='tef_droits_auteur' or
			@OTHERMDTYPE='tef_droits_externe' or
			@OTHERMDTYPE='tef_droits_version']/mets:xmlData/metsRights:RightsDeclarationMD/metsRights:Context/metsRights:Constraints[@CONSTRAINTTYPE='TIME']">
			<sch:assert test="starts-with(metsRights:ConstraintDescription, 'restriction')"> Pour chaque
				bloc de métadonnées de droits dont le type n'est pas "tef_droits_etablissement_these", la
				restriction de type "TIME" doit commencer par "restriction". </sch:assert>
		</sch:rule>
		<!-- manque la validation des dates : pas facile sans XPATH 2.0 -->
	</sch:pattern>
	<!-- 
********************************** mets:fileSec ******************************************	 -->
	<sch:pattern name="mets:fileSec">
		<sch:rule context="/mets:mets/mets:fileSec">
			<sch:assert test="count(./mets:fileGrp[@USE='archive' or @USE='archive_et_diffusion'])=1">
				Dans la section des fichiers (mets:fileSec), il faut un et un seul groupe de fichiers (de
				1er niveau) avec un attribut USE ayant pour valeur "archive" ou "archive_et_diffusion".
			</sch:assert>
		</sch:rule>
		<sch:rule context="/mets:mets/mets:fileSec/mets:fileGrp[@USE='archive' or
			@USE='archive_et_diffusion']/mets:file">
			<sch:assert test="@ADMID =
				/mets:mets/mets:amdSec/mets:techMD[mets:mdWrap[@OTHERMDTYPE='tef_tech_fichier']]/@ID"> Tout
				fichier (de l'édition d'archivage) doit obligatoirement être associé à un bloc de
				métadonnées de conservation (de type "tef_tech_fichier") (via l'identifiant de ce bloc).
			</sch:assert>
		</sch:rule>
		<sch:rule context="/mets:mets/mets:fileSec/mets:fileGrp[@USE='archive'  or
			@USE='archive_et_diffusion']/mets:file/mets:FLocat">
			<sch:assert test="@xlink:href"> Tout mets:file (de l'édition d'archivage) doit posséder un
				élément mets:FLocat ayant un attribut xlink:href. Cet attribut permet de localiser chacun de
				ces fichiers, soit dans un répertoire de fichiers associé à la notice TEF, soit sur
				Internet. </sch:assert>
		</sch:rule>
		<sch:rule context="/mets:mets/mets:fileSec/mets:fileGrp">
			<sch:assert test="@ID =
				/mets:mets/mets:structMap/mets:div[@TYPE='THESE']/mets:div[@TYPE='VERSION_COMPLETE'     or
				@TYPE='VERSION_INCOMPLETE']/mets:div[@TYPE='EDITION']/mets:fptr/@FILEID"> A chaque groupe de
				fichiers de 1er niveau (mets:fileGrp dans la section des fichiers mets:fileSec), doit
				correspondre un mets:div de type "EDITION" dans la carte de structure (mets:structMap). Ce
				lien s'effectue grâce aux identifiants (ID / FILEID). </sch:assert>
		</sch:rule>
	</sch:pattern>
	<!-- ****************************Arborescence Structural Map *****************************
		
		pb : !!!!!!!!!!! besoin de xpath 2.0 pour tokenize !   Sinon, risque de conflit sur identifiants.
		
		-->
	<sch:pattern name="mets:structMap -- Comment composer la carte de structure (mets:structMap) ?">
		<!-- Sur la carte de structure en général -->
		<sch:rule context="/mets:mets/mets:structMap">
			<sch:assert test="@TYPE = 'logical'"> La carte de structure (mets:structMap) est de type
				logique. </sch:assert>
			<sch:assert test="count(mets:div)=1"> La carte de structure (mets:structMap) possède une seule
				racine mets:div. </sch:assert>
			<sch:assert test="mets:div[@TYPE='THESE']"> La racine de la carte de structure
				(mets:structMap) est de TYPE "THESE". </sch:assert>
		</sch:rule>
		<sch:rule context="/mets:mets/mets:structMap//mets:div[@TYPE='THESE' or @TYPE='VERSION_COMPLETE'
			or @TYPE='VERSION_INCOMPLETE' or @TYPE='EDITION' ]">
			<sch:assert test="@CONTENTIDS"> Tous les mets:div doivent posséder l'attribut CONTENTIDS, sauf
				les mets:div de TYPE "RESSOURCES_EXTERNES", "RESSOURCE_TIERS" ou "TRAVAUX" (pour lesquels
				facultatif mais pas interdit). L'attribut CONTENTIDS contient un URI permettant d'assigner
				un identifiant unique global (à l'échelle du Web) à chaque entité concernée. </sch:assert>
		</sch:rule>
		<!-- Sur les enfants du mets:div de type "THESE" -->
		<sch:rule context="/mets:mets/mets:structMap/mets:div">
			<sch:assert test="count(mets:div[@TYPE='VERSION_COMPLETE'])=1"> Sous le mets:div de type
				"THESE", on doit trouver un et un seul élément mets:div de type "VERSION_COMPLETE".
			</sch:assert>
		</sch:rule>
		<sch:rule context="/mets:mets/mets:structMap/mets:div/mets:div">
			<sch:assert test="@TYPE='VERSION_COMPLETE' or @TYPE='VERSION_INCOMPLETE'     or
				@TYPE='RESSOURCES_EXTERNES' or @TYPE='RESSOURCE_TIERS' or @TYPE='TRAVAUX'"> Sous le mets:div
				de type "THESE", on peut trouver des éléments mets:div de type "VERSION_COMPLETE",
				"VERSION_INCOMPLETE", "RESSOURCES_EXTERNES", "RESSOURCE_TIERS" ou "TRAVAUX". </sch:assert>
		</sch:rule>
		<!-- Sur les mets:div de type "VERSION_COMPLETE" ou "VERSION_INCOMPLETE" -->
		<sch:rule context="/mets:mets/mets:structMap/mets:div/mets:div[@TYPE='VERSION_COMPLETE' or
			@TYPE='VERSION_INCOMPLETE']/mets:div">
			<sch:assert test="@TYPE='EDITION' "> Sous un mets:div de type "VERSION_COMPLETE" ou
				"VERSION_INCOMPLETE", on doit trouver un ou plusieurs mets:div de type "EDITION".
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern name="mets:structMap -- Bloc de ressources externes">
		<sch:rule
			context="/mets:mets/mets:structMap/mets:div/mets:div[@TYPE='RESSOURCES_EXTERNES']/mets:div">
			<sch:assert test="@TYPE='RESSOURCE_TIERS' or @TYPE='TRAVAUX' or @TYPE='RESSOURCES_EXTERNES'">
				Toute mets:div de TYPE "RESSOURCES_EXTERNES" a pour enfant un mets:div de TYPE
				"RESSOURCE_TIERS" ou "TRAVAUX" ou "RESSOURCES_EXTERNES" </sch:assert>
		</sch:rule>
		<sch:rule context="/mets:mets/mets:structMap/mets:div/mets:div[@TYPE='RESSOURCES_EXTERNES']">
			<sch:assert test=".//mets:div[@TYPE='RESSOURCE_TIERS'] or .//mets:div[@TYPE='TRAVAUX']"> Toute
				mets:div de TYPE "RESSOURCES_EXTERNES" a pour descendant un mets:div de TYPE
				"RESSOURCE_TIERS" ou "TRAVAUX". </sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern name="mets:structMap -- Lien vers un fichier précis">
		<sch:rule context="/mets:mets/mets:structMap/mets:div/mets:div[@TYPE='RESSOURCE_TIERS' or
			@TYPE='TRAVAUX']/mets:fptr">
			<sch:assert test="@FILEID = /mets:mets/mets:fileSec/mets:fileGrp//mets:file/@ID"> Si une
				ressource externe (mets:div de TYPE "RESSOURCE_TIERS" ou "TRAVAUX") possède un enfant
				mets:fptr, alors ce dernier doit posséder un attribut FILEID qui correspond à un attribut ID
				d'un mets:file de l'inventaire des fichiers (mets:fileSec). L'élément mets:fptr permet
				d'associer un fichier précis à une ressource externe. </sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern name="mets:structMap -- Quelles métadonnées associées à une thèse ?">
		<sch:rule context="/mets:mets/mets:structMap/mets:div[@TYPE='THESE']">
			<sch:assert test="contains(@DMDID,
				/mets:mets/mets:dmdSec[mets:mdWrap[@OTHERMDTYPE='tef_desc_these']]/@ID)"> Toute THESE doit
				être associée à un bloc de métadonnées descriptives de type "tef_desc_these". </sch:assert>
			<sch:assert test="contains(@ADMID,
				/mets:mets/mets:amdSec/mets:techMD[mets:mdWrap[@OTHERMDTYPE='tef_admin_these']]/@ID)"> Toute
				THESE doit être associée à un bloc de métadonnées de type "tef_admin_these". </sch:assert>
			<sch:assert test="contains(@ADMID,
				/mets:mets/mets:amdSec/mets:rightsMD[mets:mdWrap[@OTHERMDTYPE='tef_droits_etablissement_these']]/@ID)"
				> Toute THESE doit être associée à un bloc de métadonnées de type
				"tef_droits_etablissement_these". </sch:assert>
			<sch:assert test="contains(@ADMID,
				/mets:mets/mets:amdSec/mets:rightsMD[mets:mdWrap[@OTHERMDTYPE='tef_droits_auteur_these']]/@ID)"
				> Toute THESE doit être associée à un bloc de métadonnées de type "tef_droits_auteur_these".
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern name="mets:structMap -- Quelles métadonnées associées à une version incomplète?
		Métadonnées descriptives">
		<sch:rule context="/mets:mets/mets:structMap/mets:div/mets:div[@TYPE='VERSION_INCOMPLETE']">
			<sch:assert test="@DMDID =
				/mets:mets/mets:dmdSec[mets:mdWrap/@OTHERMDTYPE='tef_desc_version']/@ID"> Toute
				VERSION_INCOMPLETE de la thèse doit être associée à des métadonnées descriptives de
				type"tef_desc_version". </sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern name="mets:structMap -- Quelles métadonnées associées à une version ? Métadonnées de
		droits">
		<sch:rule context="/mets:mets/mets:structMap/mets:div/mets:div[@TYPE='VERSION_COMPLETE'    or
			@TYPE='VERSION_INCOMPLETE']">
			<sch:assert test="@ADMID =
				/mets:mets/mets:amdSec/mets:rightsMD[mets:mdWrap/@OTHERMDTYPE='tef_droits_version']/@ID">
				Toute VERSION de la thèse doit être associée à des métadonnées administratives de
				type"tef_droits_version". </sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern name="mets:structMap -- Quelles métadonnées associées à une édition ?">
		<sch:rule context="/mets:mets/mets:structMap/mets:div/mets:div/mets:div[@TYPE='EDITION']">
			<sch:assert test="@DMDID =
				/mets:mets/mets:dmdSec[mets:mdWrap[@OTHERMDTYPE='tef_desc_edition']]/@ID"> Toute EDITION de
				la thèse doit être associée à des métadonnées de type "tef_desc_edition". </sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern name="mets:structMap -- Quelles métadonnées associées à une ressource externe ?">
		<sch:rule context="/mets:mets/mets:structMap/mets:div//mets:div[@TYPE='RESSOURCE_TIERS' or
			@TYPE='TRAVAUX']">
			<sch:assert test="@ADMID or ancestor::mets:div[@TYPE='RESSOURCES_EXTERNES']/@ADMID =
				/mets:mets/mets:amdSec/mets:rightsMD[mets:mdWrap/@OTHERMDTYPE='tef_droits_externe']/@ID">
				Toute ressource externe (RESSOURCE_TIERS ou TRAVAUX) doit être associée à un bloc de
				métadonnées de droits de type "tef_droits_externe". Si ce n'est pas le cas, c'est le groupe
				de RESSOURCES_EXTERNES qui les englobe qui doit être associé à ce bloc de métadonnées. </sch:assert>
			<sch:assert test="@DMDID or ancestor::mets:div[@TYPE='RESSOURCES_EXTERNES']/@ADMID
				=/mets:mets/mets:dmdSec[mets:mdWrap/@OTHERMDTYPE='tef_desc_externe']/@ID"> Toute ressource
				externe (RESSOURCE_TIERS ou TRAVAUX) doit être associée à un bloc de métadonnées
				descriptives de type "tef_desc_externe". Si ce n'est pas le cas, c'est le groupe de
				RESSOURCES_EXTERNES qui les englobe qui doit être associé à ce bloc de métadonnées. </sch:assert>
			<sch:assert test="not(@ADMID and ancestor::mets:div[@TYPE='RESSOURCES_EXTERNES']/@ADMID)"> Des
				métadonnées administratives ne doivent pas être associées en même temps à une ressource
				externe individuelle et au groupe de ressources externes qui la comprend. </sch:assert>
			<sch:assert test="not(@DMDID and ancestor::mets:div[@TYPE='RESSOURCES_EXTERNES']/@DMDID)"> Des
				métadonnées descriptives ne doivent pas être associées en même temps à une ressource externe
				individuelle et au groupe de ressources externes qui la comprend. </sch:assert>
		</sch:rule>
	</sch:pattern>
</sch:schema>
