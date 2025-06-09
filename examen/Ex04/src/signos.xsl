<?xml version="1.0" encoding="UTF-8"?>
<!--
     Document   : signos.xsl
     Update on : 09/06/2025
     Author     : 
     Description:
     Mostrar horoscopo / los signos del zodiaco
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
     <xsl:output method="html" indent="yes"/>
     <xsl:template match="/zodiaco">
          <html lang="es">
               <head>
                    <meta charset="UTF-8"/>
                    <title>Horoscopo Jesus Temprano Gallego</title>
                    <link rel="stylesheet" href="./webroot/css/estilos.css"/>
                    <!-- <script src="./webroot/js/script.js"></script> -->
               </head>
               <body>
                    <header>
                         <h1>HOROSCOPO/SIGNOS ZODIACO</h1>
                    </header>
                    <main>
                         <xsl:for-each select="signo">
                              <div class="simbolo {@id}" style="background-image: url(./webroot/images/bg-{@id}.jpg);">
                                   <img src="./webroot/images/{@id}.svg" alt="{nombre}"/>
                                   <p><xsl:value-of select="nombre"/></p>
                                   <p><xsl:value-of select="fechaInicio"/> - <xsl:value-of select="fechaFin"/></p>
                              </div>
                              <div class="contenido {@id}"></div>
                         </xsl:for-each>
                         
                    </main>
                    <footer>
                         <p>2025 <a href="./../../../">Jesus Temprano Gallego</a> | Todos los derechos reservados</p>
                    </footer>
                    <script src="./webroot/js/script.js"></script>
               </body>
          </html>
     </xsl:template>
</xsl:stylesheet>
