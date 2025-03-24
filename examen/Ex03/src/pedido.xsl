<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <!-- Plantilla que dado una fecha la escribe en otro formato -->
    <xsl:template match="@fecha" name="formatoFecha">
        <xsl:variable name="anio" select="substring(., 1, 4)"/>
        <xsl:variable name="mes" select="substring(., 6, 2)"/>
        <xsl:variable name="dia" select="substring(., 9, 2)"/>
        <xsl:value-of select="$dia"/> de
        <xsl:choose>
            <xsl:when test="$mes='01'">enero</xsl:when>
            <xsl:when test="$mes='02'">febrero</xsl:when>
            <xsl:when test="$mes='03'">marzo</xsl:when>
            <xsl:when test="$mes='04'">abril</xsl:when>
            <xsl:when test="$mes='05'">mayo</xsl:when>
            <xsl:when test="$mes='06'">junio</xsl:when>
            <xsl:when test="$mes='07'">julio</xsl:when>
            <xsl:when test="$mes='08'">agosto</xsl:when>
            <xsl:when test="$mes='09'">septiembre</xsl:when>
            <xsl:when test="$mes='10'">octubre</xsl:when>
            <xsl:when test="$mes='11'">noviembre</xsl:when>
            <xsl:when test="$mes='12'">diciembre</xsl:when>
        </xsl:choose> de <xsl:value-of select="$anio"/>
    </xsl:template>

    <!-- Plantilla que dado un pedido lo escribe en una tabla -->

    <xsl:template match="/pedido">
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="author" content="Jesús Temprano Gallego"/>
                <meta name="keywords" content="html, css, xslt, xml"/>
                <title>Pedidos Jesús Temprano Gallego</title>
            </head>
            <body>
                <header>
                    <h1>Pedido ID: <xsl:value-of select="@idPedido"/></h1>
                    <p>Fecha: <xsl:apply-templates select="@fecha"/></p>
                </header>
                <main>
                    <div id="sel">
                        <label for="fabricante">Fabricante: </label>
                        <select name="fabricante">
                            <option value="todos">Todos</option>
                            <xsl:for-each select="tractor">
                                <option value="{@codigoFabricante}"><xsl:value-of select="@codigoFabricante"/></option>
                            </xsl:for-each>
                        </select>
                    </div>
                    <div id="tabla">
                        <div>
                            <img src="{concat('images/',tractor/@codigoFabricante,'.png')}" alt="{tractor/@codigoFabricante}"/>
                            <h2>Fabricante: 
                            <xsl:value-of select="tractor/@codigoFabricante"/> 
                            <xsl:choose>
                                <xsl:when test="tractor/@codigoFabricante='F001'">John Deere</xsl:when>
                                <xsl:when test="tractor/@codigoFabricante='F002'">New Holland</xsl:when>
                                <xsl:when test="tractor/@codigoFabricante='F012'">Lamborghini</xsl:when>
                            </xsl:choose></h2>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th>Imagen</th>
                                    <th>Referencia</th>
                                    <th>Descripcion</th>
                                    <th>Fecha Entrega</th>
                                    <th>Peso</th>
                                    <th>Número de Serie</th>
                                    <th>Km Máximos</th>
                                    <th>Cantidad</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="tractor[@codigoFabricante]/componente">
                                    <tr>
                                        <td><img src="{concat('images/',@referencia,'.png')}" alt="{@referencia}"/></td>
                                        <td><xsl:value-of select="@referencia"/></td>
                                        <td><xsl:text>-</xsl:text></td>
                                        <td>
                                            <xsl:choose>
                                                <xsl:when test="fechaEntrega">
                                                    <xsl:value-of select="concat(fechaEntrega/@mes,'-',fechaEntrega/@anio)"/>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text>-</xsl:text>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </td>
                                        <td><xsl:value-of select="concat(peso,peso/@unidad)"/></td>
                                        <td><xsl:value-of select="numeroSerie"/></td>
                                        <td>
                                            <xsl:choose>
                                                <xsl:when test="kmMaximos">
                                                    <xsl:value-of select="concat(peso,peso/@unidad)"/>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text>-</xsl:text>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </td>
                                        <td><xsl:value-of select="cantidad"/></td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                    </div>
                </main>
            </body>
        </html>
        
    </xsl:template>


    </xsl:stylesheet>
