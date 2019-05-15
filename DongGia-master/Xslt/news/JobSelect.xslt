<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
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
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</table>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<tbody>
			<tr class="odd">
				<xsl:if test="position() mod 2 = 0">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">even</xsl:text>
				</xsl:attribute>
				</xsl:if>
				<td>
					<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
				</td>
				<td>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
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
					<xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
				</td>
				<td>
					<xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
				</td>
			</tr>
		</tbody>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>