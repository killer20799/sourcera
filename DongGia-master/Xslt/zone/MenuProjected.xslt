<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="btn-group">
			<div class="swiper-button-next"><i class="fa-chevron-right"></i></div>
			<div class="swiper-button-prev"><i class="fa-chevron-left"></i></div>
		</div>
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="swiper-slide">
			<figure>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<div class="imgbox">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
				</a>
				<figcaption>
					<h3>
						<a>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
						<a>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</a>
					</h3>
					<p class="fas fa-arrow-right">
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>