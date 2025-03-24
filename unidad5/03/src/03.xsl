<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/listatickets">
        <html>
            <head>
                <title>02 XSLT Jesus Temprano Gallego</title>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <header>
                    <h1>Informacion de tickets</h1>
                    <h2>Listado de tickets</h2>
                </header>
                <main>
                    <xsl:apply-templates select="ticket"/>
                </main>
                <footer>
                    <div>NUMERO DE TICKETS: <xsl:value-of select="count(ticket)"/> </div>
                    <div>TOTAL DE TIKETS: <xsl:value-of select="sum(ticket/total)"/></div>
                </footer>
        </body>
    </html>
    </xsl:template>
    <xsl:template match="ticket">
        <h3>Ticket: <xsl:value-of select="numero"/></h3>
        <table>
            <caption>
                <xsl:value-of select="fecha"/>
            </caption>
            <thead>
                <th>Producto</th>
                <tr>Precio</tr>
            </thead>
            <tbody>
                <xsl:apply-templates select="producto"/>
            </tbody>
            <tfoot>
                <tr>
                    <th>Total</th>
                    <th><xsl:value-of select="total"/></th>
                </tr>
            </tfoot>
        </table>
    <xsl:apply-templates select="producto"/>
    </xsl:template>

    <xsl:template match="producto">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>