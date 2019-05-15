<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="jobs">
			<div class="container">
				<h2 class="title"><xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of></h2>
				<div class="row">
					<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
					<div class="sign-in-button"><a href="">Ứng tuyển</a>
					<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
						<iframe>
							<xsl:attribute name="src">
								<xsl:value-of select="/NewsDetail/ApplyUrl" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
						</iframe>
					</div>
				</div>
			</div>
		</section>
		<section class="other">
			<div class="container">
				<h3>Vị trí khác</h3>
				<div class="swiper-button-next"><i class="fa-chevron-right"></i></div>
				<div class="swiper-button-prev"><i class="fa-chevron-left"></i></div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<a class="swiper-slide" href="">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<div class="detail">
				<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
				<div class="box-content">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</a>
	</xsl:template>
	<xsl:template match="News">
	</xsl:template>
</xsl:stylesheet>