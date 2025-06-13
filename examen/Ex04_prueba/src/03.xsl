<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
  
  <xsl:output method="xml" indent="yes"/>
  
  
  <xsl:template match="/">
    <ultimaVersion>
        <xsl:apply-templates select="software-libre/distribuciones/distribucion"/>
    </ultimaVersion>
  </xsl:template>
  
  <xsl:template match="/software-libre/distribuciones/distribucion">
    <xsl:variable name="maxValor" select="max(//lanzamiento[@distribucion=current()/@id]/@version)"/>
    <xsl:for-each select="//lanzamiento[@distribucion=current()/@id and @version=$maxValor]">
      <xsl:copy-of select="."/>

    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>