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
				<section class="project-news">
					<div class="container">
						<div class="row">
							<div class="col-6">
								<div class="row">
									<h3>
										<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
									</h3>
									<h2 class="moduleTitle">
										<xsl:value-of select="/ZoneList/Title" disable-output-escaping="yes">
										</xsl:value-of>
										<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
									</h2>
								</div>
								<div class="row">
									<xsl:apply-templates select="News" mode="News1_Content">
									</xsl:apply-templates>
								</div>
							</div>
							<div class="col-6">
								<div class="box-img">
									<xsl:apply-templates select="News" mode="News1_img"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<section class="new-location">
					<div class="container">
						<h2 class="moduleTitle">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row">
							<div class="col-6">
								<xsl:apply-templates select="News" mode="News2_img"></xsl:apply-templates>
							</div>
							<div class="col-6">
								<xsl:apply-templates select="News" mode="News2_Content"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=3">
				<section class="project-video">
					<div class="container">
						<h2 class="moduleTitle">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row">
							<xsl:apply-templates select="News" mode="News3"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=4">
				<section class="project-photos">
					<div class="container">
						<h2 class="moduleTitle"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
						<div class="row">
							<xsl:apply-templates select="News" mode="News4"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=5">
				<section class="other-project">
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
								<xsl:apply-templates select="News" mode="News5"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="News1_Content">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<xsl:template match="News" mode="News1_img">
		<img>
		<xsl:attribute name="src">
			<xsl:value-of select="ImageUrl"></xsl:value-of>
		</xsl:attribute>
		<xsl:attribute name="alt">
			<xsl:value-of select="Title"></xsl:value-of>
		</xsl:attribute>
		</img>
	</xsl:template>
	<xsl:template match="News" mode="News2_Content">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<xsl:template match="News" mode="News2_img">
		<img>
		<xsl:attribute name="src">
			<xsl:value-of select="ImageUrl"></xsl:value-of>
		</xsl:attribute>
		<xsl:attribute name="alt">
			<xsl:value-of select="Title"></xsl:value-of>
		</xsl:attribute>
		</img>
	</xsl:template>
	<xsl:template match="News" mode="News3">
		<a data-fancybox="gallery" href="">
			<xsl:attribute name="href">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
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
					<img src="/Data/Sites/1/media/project/button_1.png" alt=""></img>
				</figcaption>
			</figure>
		</a>
	</xsl:template>
	<xsl:template match="News" mode="News4">
		<div class="item">
			<a data-fancybox="gallery" href="">
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
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
		</div>
	</xsl:template>
	<xsl:template match="News" mode="News5">
		<div class="swiper-slide">
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
					<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
					<p><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
						<i class="fas fa-arrow-right"></i>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>
