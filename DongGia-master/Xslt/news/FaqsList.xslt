<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="module-faqs">
			<h3><xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of></h3>
			<p>Mọi thắc mắc vui lòng liên hệ qua địa chỉ Email: Info@hoangthaiphu.vn</p>
			<div class="FAQs-wrapper">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="faqs">
			<div class="question">
				<h4 class="mdi">
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
				</h4>
			</div>
			<div class="answer">
				<p>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>