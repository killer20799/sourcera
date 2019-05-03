<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="about">
					<xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<section class="module-seek">
					<div class="container">
						<h2>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=3">
				<section class="module-history">
					<xsl:apply-templates select="News" mode="News3"></xsl:apply-templates>
				</section>
			</xsl:when>
			<xsl:when test="position()=4">
				<section class="module-partner">
					<div class="container">
						<h2 class="moduleTitle">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="btn-group">
							<div class="swiper-button-next">
								<i class="fa-chevron-right"></i>
							</div>
							<div class="swiper-button-prev">
								<i class="fa-chevron-left"></i>
							</div>
						</div>
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="News" mode="News4"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="News1">
		<h2 class="moduleTitle">
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="introduce">
			<div class="moduleContent">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				<div class="readmore">
					<a>
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</a>
				</div>
			</div>
			<div class="module-img">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="News2">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6 content"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6 m-content"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col s-content"&gt;</xsl:text>
		</xsl:if>

			<div class="module-Content">
				<h3>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</h3>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
				<p>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</p>
			</div>
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="News3">
		<h2 class="moduleTitle">
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="container">
			<div class="row">
				<div class="col module-img">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="col content">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="News4">
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
