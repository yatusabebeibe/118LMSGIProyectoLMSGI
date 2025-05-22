(: 19. Mostrar cada uno de los precios de los libros , y al final una etiqueta con la suma de los precios. :)
<precios>
  {
    for $precio in //book/price/text()
    return <precio>{$precio}</precio>
  }
  <total>{format-number(sum(//book/price), '#.00')}</total>
</precios>
