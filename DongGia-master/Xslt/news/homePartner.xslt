<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="module-partner">
			<div class="container">
				<h2 class="moduleTitle"><xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of></h2>
				<div class="btn-group">
					<div class="swiper-button-next"><i class="fa-chevron-right"></i></div>
					<div class="swiper-button-prev"><i class="fa-chevron-left"></i></div>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
	</xsl:template>
</xsl:stylesheet>