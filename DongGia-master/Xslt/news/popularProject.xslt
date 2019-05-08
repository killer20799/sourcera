<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="popular-project">
			<div class="container">
				<h2 class="moduleTitle">Dự án nổi bật</h2>
				<div class="btn-group">
					<div class="swiper-button-next"><i class="fa-chevron-right"></i></div>
					<div class="swiper-button-prev"><i class="fa-chevron-left"></i></div>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col-6"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-6"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col-4"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=4">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-4"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=5">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-4"&gt;</xsl:text>
		</xsl:if>
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
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
					<figcaption>
						<p>
							<span>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</span><span class="fas fa-caret-right"></span>
						</p>
					</figcaption>
				</figure>
			</a>
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=4">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=5">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>