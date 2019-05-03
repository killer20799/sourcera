<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="popular-project">
			<div class="container">
				<h2 class="moduleTitle">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<div class="btn-group">
					<div class="swiper-button-next"><i class="fa-chevron-right"></i></div>
					<div class="swiper-button-prev"><i class="fa-chevron-left"></i></div>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<xsl:apply-templates select="News"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News">
		
	</xsl:template>
</xsl:stylesheet>