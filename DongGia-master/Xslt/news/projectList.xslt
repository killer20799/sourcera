<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">&lt;div class="container"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col-sm-6 col-md-4"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;div class="col"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-sm-6 col-md-4"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=4">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-sm-6 col-md-4"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=5">
			<xsl:text disable-output-escaping="yes">&lt;div class="col"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=6">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col-sm-6 col-md-4"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=7">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-sm-6 col-md-4"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=8">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-sm-6 col-md-4"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col"&gt;</xsl:text>
		</xsl:if>




			<div class="item">
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
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
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
							<a>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</a>
						</p>
					</figcaption>
				</figure>
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
		<xsl:if test="position()=4">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=5">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=6">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=7">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=8">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>