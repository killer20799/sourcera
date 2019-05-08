<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="project-news">
			<div class="container">
				<div class="row">
					<div class="col-6">
						<div class="row">
							<h3>
								<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h3>
							<h2 class="moduleTitle">
								<xsl:value-of select="/NewsDetail/SubTitle" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>

					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther" mode="NewsOther1">

	</xsl:template>
</xsl:stylesheet>