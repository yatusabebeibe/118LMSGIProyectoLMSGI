<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

  <xsl:output method="html" indent="yes"/>
  <xsl:mode on-no-match="shallow-copy"/>

  <xsl:template match="/software-libre">
    <html>
      <head>
        <title>Ej 1</title>
        <meta charset="UTF-8"/>
      </head>
      <body>
        <header>
          <img src="images/logo.jpg" alt="logo software"/> 
          <h1><xsl:value-of select="concat('Distribucion software ',@tipo)"/></h1>
        </header>
        <main>
          <div class="cajaPrincipal">
            <h2>Lanzamiento Distribucion</h2>
            <xsl:for-each select="lanzamientos/lanzamiento">
              <div class="cajaLanzamiento">
                <figure>
                  <img src="images/{@distribucion}.png"/>  
                  <figcaption><a href="{//distribucion[@id=current()/@distribucion]/web}">{//distribucion[@id=current()/@distribucion]/nombre}</a></figcaption>
                </figure>
                <xsl:if test="@escritorio != '' ">
                  <figure>
                    <img src="images/{@escritorio}.png"/>  
                    <figcaption><a href="{//escritorio[@id=current()/@escritorio]/web}">{//escritorio[@id=current()/@escritorio]/nombre}</a></figcaption>
                  </figure>
                </xsl:if>
                <div class="caja">
                  <p><spam class="negrita">Versión: </spam><xsl:value-of select="@version"/></p>
                  <p><spam class="negrita">Año: </spam><xsl:value-of select="@año"/></p>
                  <p><spam class="negrita">Kernel: </spam><xsl:value-of select="@kernel"/></p>
                </div>
              </div>

            </xsl:for-each>
          </div>  
        </main>
      </body>
    </html>
  </xsl:template>

  

</xsl:stylesheet>