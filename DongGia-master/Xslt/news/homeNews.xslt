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
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="box-content">
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
					<figure>
						<div class="boximg">
							<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<p>
								<strong>[<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>]
								</strong>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
						</figcaption>
					</figure>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>