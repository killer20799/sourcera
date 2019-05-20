<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="news">
			<div class="container">
				<h2 class="title">
					<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<date><xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of></date>
				<div class="briefContent">
				<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
				<div class="social-link">
					<a>
						<xsl:attribute name="href">
							<xsl:text disable-output-escaping="yes">https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
								<xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload" src="/Data/Sites/1/media/new-event/news/social_icon_1.png">
						</img>
					</a>
					<div class="zalo-share-button" data-oaid="579745863508352884" data-layout="1" data-color="blue" data-customize="true">
						<img class="lazyload" src="/Data/Sites/1/media/new-event/news/social_icon_2.png">
						<xsl:attribute name="data-href">
								<xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</div>
			</div>
		</section>
		<section class="otherNews">
			<div class="container">
				<h2 class="moduleTitle">Tin Tức Khác</h2>
				<div class="btn-group">
					<div class="swiper-button-next"><i class="fa-chevron-right"></i></div>
					<div class="swiper-button-prev"><i class="fa-chevron-left"></i></div>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
	</xsl:template>
	<xsl:template match="NewsOther">
		<a class="swiper-slide" href="">
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
					<img class="lazyload" >
						<xsl:attribute name="data-src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<figcaption>
					<p>
						<strong>
							[<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>]
						</strong>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</a>
	</xsl:template>
</xsl:stylesheet>