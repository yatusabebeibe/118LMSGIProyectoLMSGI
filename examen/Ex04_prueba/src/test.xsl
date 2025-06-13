<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Lanzamientos de Distribuciones</title>
            </head>
            <body>
                <h1>Lanzamientos de Distribuciones</h1>
                <table border="1">
                    <tr>
                        <th>Distribución</th>
                        <th>Versión</th>
                        <th>Año</th>
                        <th>Mes</th>
                        <th>Escritorio</th>
                        <th>Kernel</th>
                    </tr>
                    <xsl:for-each select="software-libre/lanzamientos/lanzamiento">
                        <tr>
                            <td><xsl:value-of select="@distribucion"/></td>
                            <td><xsl:value-of select="@version"/></td>
                            <td><xsl:value-of select="@año"/></td>
                            <td><xsl:value-of select="@mes"/></td>
                            <td><xsl:value-of select="@escritorio"/></td>
                            <td><xsl:value-of select="@kernel"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>