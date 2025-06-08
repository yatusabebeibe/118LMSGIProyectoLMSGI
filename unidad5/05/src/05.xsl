<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/root" mode="#all">
            <xsl:copy>
                <!--
                    <xsl:copy>: copia el nodo actual (en este caso <root>) sin modificar su nombre ni atributos.
                -->
                <xsl:for-each select="row">
                    <xsl:copy>
                        <xsl:for-each select="@*">
                            <xsl:element name="{name()}">
                                <!--
                                    <xsl:element>: crea un nuevo elemento cuyo nombre es el del atributo actual.
                                    {name()} evalúa el nombre del atributo gracias a expand-text="yes".
                                -->
                                <xsl:value-of select="."/>
                                <!--
                                    <xsl:value-of>: obtiene el valor del atributo y lo inserta dentro del nuevo elemento.
                                -->
                            </xsl:element>
                        </xsl:for-each>
                    </xsl:copy>
                </xsl:for-each>
            </xsl:copy>
    </xsl:template>
</xsl:stylesheet>