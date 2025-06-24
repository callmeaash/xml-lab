<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table, th, td{
                        border: 1px solid black;
                        border-collapse: collapse;
                    }
                    th, td{
                        padding: 20px;
                    }
                    th{
                        background-color: #00ace6;
                    }
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Year</th>
                        <th>Author</th>
                        <th>Editor</th>
                        <th>Publisher</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="bib/book">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="@year"/></td>
                            <td>
                                <xsl:for-each select="author">
                                    <xsl:value-of select="."/>
                                    <xsl:if test="position() != last()">, </xsl:if>
                                </xsl:for-each>
                            </td>
                            <td><xsl:value-of select="editor"/></td>
                            <td><xsl:value-of select="publisher"/></td>
                            <td><xsl:value-of select="price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>