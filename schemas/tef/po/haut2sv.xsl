<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="utf-8"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Sodoc2</title>
			</head>
			<body text="#000000" bgColor="gainsboro">
				<FORM name="mainform" target="droite2" action="http://www.abes.fr/abes/Sudoc.aspx" method="get">
					<DIV style="DISPLAY: inline; WIDTH: 320px; HEIGHT: 22px" ms_positioning="FlowLayout"
						>Recherche sur le Sudoc:</DIV>
					<INPUT id="operation" type="hidden" value="searchRetrieve" name="operation"/>
					<INPUT id="version" type="hidden" name="version" value="1.1"/>
					<INPUT id="Submit1" type="submit" value="Rechercher" name="Submit1"/>
					<SELECT id="index" style="WIDTH: 104px" name="index">
						<OPTION value="dc.title">titre</OPTION>
						<OPTION value="dc.isbn">isbn</OPTION>
						<OPTION value="dc.issn">issn</OPTION>
						<OPTION value="dc.ppn">ppn</OPTION>
						<OPTION value="dc.rcr">rcr</OPTION>
						<OPTION value="dc.author">auteur</OPTION>
					</SELECT>
					<INPUT id="query" type="text" name="query" value=""/>
					ET
					<SELECT id="index1" style="WIDTH: 104px" name="index1">
						<OPTION value="dc.author">auteur</OPTION>
						<OPTION value="dc.isbn">isbn</OPTION>
						<OPTION value="dc.issn">issn</OPTION>
						<OPTION value="dc.ppn">ppn</OPTION>
						<OPTION value="dc.rcr">rcr</OPTION>
						<OPTION value="dc.title">titre</OPTION>
					</SELECT>
					<INPUT id="query1" type="text" name="query1" value=""/>
					<INPUT id="startRecord" type="hidden" name="startRecord" value="1"/>
					<INPUT id="maximumRecords" type="hidden" name="maximumRecords" value="20"/>
					<INPUT id="recordPacking" type="hidden" name="recordPacking" value="xml"/>
					<INPUT id="stylesheet" type="hidden" name="stylesheet"
						value="http://www.abes.fr/abes/documents/tef/po/bas2.xsl"/>
				</FORM>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
