<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row">
			<div class="Module">
				<h2 class="moduleTitle"><xsl:value-of select="/ZoneList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of></h2>
				<nav>
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</nav>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</a>
	</xsl:template>

</xsl:stylesheet>
