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
				<section class="home-banner">
					<div class="container">
						<div class="row">
							<xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=3">
				
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
		<div class="col-3">
			<div class="box-img">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<p>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</p>
		</div>
	</xsl:template>
</xsl:stylesheet>
