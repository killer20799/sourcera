<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="news">
			<div class="container">
				<h2 class="title">
					<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<date><xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of></date>
				<div class="briefContent">
				<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther" mode="NewsOther1">

	</xsl:template>
</xsl:stylesheet>