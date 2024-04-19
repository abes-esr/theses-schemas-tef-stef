<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:tef="http://www.abes.fr/abes/documents/tef" xmlns:mads="http://www.loc.gov/mads/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="mads tef">
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/tef:thesisRecord">
		<oai_dc:dc xsi:schemaLocation="http://www.openarchives.org/OAI/2.0/oai_dc/ http://www.openarchives.org/OAI/2.0/oai_dc.xsd">
			<xsl:for-each select="tef:dc.title/*">
				<xsl:element name="dc:title">
					<xsl:if test="@xml:lang">
						<xsl:copy-of select="@xml:lang"/>
					</xsl:if>
					<xsl:value-of select="."/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="tef:dc.creator">
				<xsl:element name="dc:creator">
					<xsl:value-of select="tef:name"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="tef:dc.subject/*">
				<xsl:element name="dc:subject">
					<xsl:if test="@xml:lang">
						<xsl:copy-of select="@xml:lang"/>
					</xsl:if>
					<xsl:choose>
						<xsl:when test="*">
							<xsl:value-of select="*/tef:elementdEntree"/>
							<xsl:for-each select="*/tef:subdivision">
								<xsl:text> -- </xsl:text>
								<xsl:value-of select="."/>
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="."/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="tef:dc.description/*">
				<xsl:element name="dc:description">
					<xsl:if test="@xml:lang">
						<xsl:copy-of select="@xml:lang"/>
					</xsl:if>
					<xsl:value-of select="."/>
				</xsl:element>
			</xsl:for-each>
			<xsl:choose>
				<xsl:when test="tef:dc.publisher">
					<xsl:for-each select="tef:dc.publisher">
						<xsl:element name="dc:publisher">
							<xsl:value-of select="tef:name"/>
						</xsl:element>
					</xsl:for-each>
				</xsl:when>
				<xsl:otherwise>
				<xsl:for-each select="tef:thesis.degree/tef:thesis.degree.grantor">
						<xsl:element name="dc:publisher">
							<xsl:value-of select="tef:name"/>
						</xsl:element>
				</xsl:for-each>					
				</xsl:otherwise>
			</xsl:choose>
			<xsl:for-each select="tef:dc.contributor/*">
				<xsl:element name="dc:contributor">
					<xsl:value-of select="tef:name"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="tef:dc.date/*">
				<xsl:element name="dc:date">
					<xsl:value-of select="."/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="tef:dc.type">
				<xsl:element name="dc:type">
					<xsl:value-of select="."/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="tef:editionsGroupe/tef:edition">
				<xsl:element name="dc:format">
					<xsl:value-of select="tef:dcterms.medium"/>
					<xsl:text> </xsl:text>
					<xsl:value-of select="tef:dcterms.extent"></xsl:value-of>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="tef:thesisID/*">
				<xsl:element name="dc:identifier">
					<xsl:value-of select="."/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="tef:editionsGroupe/tef:edition/tef:URI">
				<xsl:element name="dc:identifier">
					<xsl:value-of select="."/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="tef:editionsGroupe/tef:edition/tef:otherEditionID">
				<xsl:element name="dc:identifier">
					<xsl:value-of select="."/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="tef:dc.language">
				<xsl:element name="dc:language">
					<xsl:value-of select="."/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="tef:dc.relation/*">
				<xsl:element name="dc:relation">
					<xsl:value-of select="."/>
				</xsl:element>
			</xsl:for-each>
			<xsl:for-each select="tef:dc.coverage/*">
				<xsl:element name="dc:coverage">
				<xsl:if test="@xml:lang">
						<xsl:copy-of select="@xml:lang"/>
					</xsl:if>
					<xsl:value-of select="."/>
				</xsl:element>
			</xsl:for-each>
		</oai_dc:dc>
	</xsl:template>
</xsl:stylesheet>
