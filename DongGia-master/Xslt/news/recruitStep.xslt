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
				<section class="employ">
					<div class="container">
						<div class="recruit">
							<xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<section class="module-steps">
					<div class="container">
						<h2 class="moduleTitle">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row">
							<xsl:apply-templates select="News" mode="News2"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=3">
				<section class="table">
					<div class="container">
						<h2 class="moduleTitle"><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
						<div class="row">
							<div class="table-main">
								<table>
									<thead>
										<tr>
											<th>STT</th>
											<th>Vị trí tuyển dụng</th>
											<th>Số lượng</th>
											<th>Địa điểm</th>
											<th>ngày hết hạn</th>
										</tr>
									</thead>
									<xsl:apply-templates select="News" mode="News3"></xsl:apply-templates>
								</table>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="News1">
		<div class="recruit-content">
			<h3>
				<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
			</h3>
			<h2 class="moduleTitle">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h2>
			<p>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</p>
		</div>
		<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
		</img>
		
	</xsl:template>
	<xsl:template match="News" mode="News2">
		<div class="step-box">
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
						<h3>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<p>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
						<div class="step">
							<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="News3">
		<tbody>
			<xsl:if test="position() mod 2 = 0">
				<tr class="even">
					<td>
						<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
					</td>
					<td>
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
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
					</td>
					<td>
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</td>
					<td>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</td>
					<td>
						<xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
					</td>
				</tr>
			</xsl:if>
			<xsl:if test="position() mod 2 != 0">
				<tr class="odd">
					<td>
						<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
					</td>
					<td>
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
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
					</td>
					<td>
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</td>
					<td>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</td>
					<td>
						<xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
					</td>
				</tr>
			</xsl:if>
		</tbody>
	</xsl:template>
</xsl:stylesheet>
