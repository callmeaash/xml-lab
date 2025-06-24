<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <students>
            <xsl:for-each select="students/student">
                <student reg_no="{reg_no}">
                <xsl:copy-of select="name"/>
                <xsl:copy-of select="symbol_number"/>
                </student>
                <marks>
                    <xsl:for-each select="marks/*">
                        <subject name="{name()}"><xsl:value-of select="."/></subject>
                    </xsl:for-each>
                </marks>
                <total_marks>
                    <xsl:value-of select="sum(marks/*)"/>
                </total_marks>
                <percentage>
                    <xsl:value-of select="sum(marks/*) div 5"/>
                </percentage>
            </xsl:for-each>
        </students>
    </xsl:template>
</xsl:stylesheet>