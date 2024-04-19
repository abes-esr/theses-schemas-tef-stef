<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="utf-8"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Sodoc2</title>
				<script language="JavaScript">
			
				function loadframe()
					{
					var url="http://www.abes.fr/abes/Sudoc.aspx?" + 
					"operation="+mainform.operation.value +
					"&amp;version="+mainform.version.value +
					"&amp;index="+mainform.index.value +
					"&amp;query="+mainform.query.value +
					"&amp;index1="+mainform.index1.value +
					"&amp;query1="+mainform.query1.value +
					"&amp;startRecord="+mainform.startRecord.value +
					"&amp;maximumRecords="+"70" +
					"&amp;recordPacking="+mainform.recordPacking.value +
					"&amp;stylesheet="+"http://www.abes.fr/abes/documents/tef/po/grouper.xsl" ;
					
					 parent.frames["bas2"].location.href = url;
										
					
					
					
					}
					
			</script>
			</head>
			<body text="#000000"  style="background-image: url(http://www.abes.fr/abes2006/images/paccueil2.gif); background-position: 0cm 5%;border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;" scroll="no">
			<FORM name="mainform" target="droite2"   >
			 <img src="http://www.abes.fr/abes2006/images/siteWeb/logo.gif" style="width: 150px; height: 50px; " />
			 <img src="http://www.abes.fr/abes2006/images/siteWeb/faq2.gif" style="width: 33px; height: 33px; " />
					
					<INPUT id="operation" type="hidden" value="searchRetrieve" name="operation"/>
					<INPUT id="version" type="hidden" name="version" value="1.1"/>
					<INPUT id="Submit1" style="width: 33px; height: 33px; background-image: url(http://www.abes.fr/abes2006/images/siteWeb/fwd.gif);" type="submit" value="" name="Submit1" />
					<SELECT id="index" style="WIDTH: 104px;background-color: #abaee8" name="index">
						<OPTION value="dc.title">titre</OPTION>
						<OPTION value="dc.isbn">isbn</OPTION>
						<OPTION value="dc.issn">issn</OPTION>
						<OPTION value="dc.ppn">ppn</OPTION>
						<OPTION value="dc.rcr">rcr</OPTION>
						<OPTION value="dc.author">auteur</OPTION>
					</SELECT>
					<INPUT id="query" style="background-color: #abaee8" type="text" name="query" value=""/>
					ET
					<SELECT id="index1" style="WIDTH: 104px;background-color: #abaee8" name="index1">
						<OPTION value="dc.author">auteur</OPTION>
						<OPTION value="dc.isbn">isbn</OPTION>
						<OPTION value="dc.issn">issn</OPTION>
						<OPTION value="dc.ppn">ppn</OPTION>
						<OPTION value="dc.rcr">rcr</OPTION>
						<OPTION value="dc.title">titre</OPTION>
					</SELECT>
					<INPUT id="query1" style="background-color: #abaee8" type="text" name="query1" value=""/>
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
