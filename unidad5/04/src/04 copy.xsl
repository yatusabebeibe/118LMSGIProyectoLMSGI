<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 15 de abril de 2020, 11:27
    Modified   : 08 de abril de 2021
    Author     : amor
    Description:
        Listado de alumnos usando instrucción xsl:for-each
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <!-- Creación de la estructura de la página web -->
    <xsl:template match="/examen">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>01-4 XSLT - Informacion de alumnos </title>         
            </head>
            <body>
                <header>
                    <h1><xsl:value-of select="datos/nombreCiclo"/></h1>
                    <h2><xsl:value-of select="datos/nombreModulo"/></h2>
                    <h3>Fecha: <xsl:value-of select="datos/fecha/dia"/> de
                                <xsl:value-of select="datos/fecha/mes"/> de
                                <xsl:value-of select="datos/fecha/anyo"/>
                    </h3>
                </header>
                <main>
                    <form action="text.php" method="GET">
                        <xsl:for-each select="preguntas/pregunta">
                        <div class="pregunta">
                            <div><xsl:value-of select="@id"/>.-
                                    <xsl:value-of select="enunciado"/>
                            </div>
                            <xsl:for-each select="respuestas/respuestas">
                                <div class="respuesta">
                                    <label>
                                        <xsl:element name="imput">
                                            <xsl:attribute name="type" select="'radio'"/>
                                            <xsl:attribute name="name" select="concat('p', ../@id)"/>
                                            <xsl:attribute name="value" select="position()"/>
                                        </xsl:element>
                                        <xsl:value-of select="./text()"/>
                                    </label>
                                </div>
                                <div></div>
                            </xsl:for-each>
                        </div>
                        </xsl:for-each>
                    </form>
                </main>
            </body>
        </html>
    </xsl:template>  
</xsl:stylesheet>