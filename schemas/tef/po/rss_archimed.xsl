<xsl:stylesheet xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" version="1.0" xmlns:local="#local-functions" xmlns:WML="jse:WML">
	<xsl:output method="xml" version="1.0" encoding="UTF-16" omit-xml-declaration="yes" media-type="text/xml" indent="no"/>
	<xsl:template match="FRAME">
		<FRAMEICON  HEIGHT="100%" ICON="navigation/actualite01.gif" CLASS="PORTAL_NEWS_FRAME" WIDTH="100%">
		      <xsl:attribute name="LABEL"><xsl:value-of select="rdf:RDF/channel/title"/></xsl:attribute>
		      <xsl:attribute name="LEARNMORE"><xsl:value-of select="rdf:RDF/channel/@rdf:about"/></xsl:attribute>
			<xsl:choose>
				<xsl:when test="ERROR"><center><b><font color="red">ERROR: <xsl:value-of select="ERROR/@DESCRIPTION"/></font></b></center></xsl:when>
				<xsl:otherwise><xsl:apply-templates select="rdf:RDF"/></xsl:otherwise>
			</xsl:choose>
		</FRAMEICON>
	</xsl:template>
	
	<xsl:template match="rdf:RDF">
		<p align="center"><a class="LINK2" target="_blank" href="{image/url}"><img alt="{image/title}" border="0" src="{image/link}"/></a></p>
		<p class="PORTALNEWSTEXT"><xsl:value-of select="channel/description"/></p>
		<xsl:apply-templates select="item"/>
	</xsl:template>

	<xsl:template match="item">
		<table cellpadding="1" cellspacing="5" border="0">
			<tr>
				<td>
					<table border="0" cellpadding="0" cellspacing="0">
						<tr> 
							<td class="titre-encart-orange">
						        	&#160;&#160;<IMG RELSRC="navigation/puce-carre.gif" HSPACE="3" VSPACE="3" ALIGN="absmiddle" WIDTH="7" HEIGHT="7"/>
						        	&#160;<a href="{link}" class="linkRSS" style="text-decoration:none"><xsl:value-of select="title"/></a>
							</td>
						</tr>
						<xsl:if test="date">
						<tr>
							<td class="PORTALNEWSDATE"><xsl:value-of select="local:formatDCDate(string(date))"/></td>
						</tr>
						</xsl:if>
						<tr>
							<td class="PORTALNEWSTEXT">
								<table border="0" cellpadding="0" cellspacing="0">
									<tr>
										<xsl:if test="image">
											<td>
												<a class="LINK2" href="{image/url}"><img alt="{image/title}" border="0" src="{image/link}"/></a>
											</td>
											<td>&#160;</td>
										</xsl:if>
										<td class="texte-control"><xsl:value-of select="description"/></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<br/>
	</xsl:template>



	<msxsl:script implements-prefix="local"><![CDATA[
		// format AAAA-MM-JJ
		function formatDCDate(sDCDate)
		{ 
			if (sDCDate.length == 8)
				return sDCDate.substring(6,8) + '/' + sDCDate.substring(4,6) + '/' + sDCDate.substring(0,4);
			else
				return sDCDate;
		}
	]]></msxsl:script>
	
</xsl:stylesheet>
