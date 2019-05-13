<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</div>
	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-md-6"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=3">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-md-6"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=4">
			<xsl:text disable-output-escaping="yes">&lt;div class="col resized"&gt;</xsl:text>
		</xsl:if>
		
		<xsl:if test="position()=5">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="col-md-6"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=6">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-md-6"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=7">
			<xsl:text disable-output-escaping="yes">&lt;div class="col"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=8">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-md-6"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position()=9">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-md-6"&gt;</xsl:text>
		</xsl:if>


		<a data-fancybox="gallery" href="">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<figure>
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
				<div class="popup-icon">
					<img src="/Data/Sites/1/skins/default/img/gallery/popup/popup_icon_L.png" />
				</div>
			</figure>
		</a>

		<xsl:if test="position() =1 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() =2 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() =3 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() =4 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() =5 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() =6 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() =7 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() =8 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() =9 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
