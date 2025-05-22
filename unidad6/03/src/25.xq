(: 25. Mostrar el título y el número de caracteres que tiene cada título, cada uno con su propia etiqueta. :)
<libros>
  {
    for $libro in //book
  return
    <libro>
      <titulo>{$libro/title/text()}</titulo>
      <longitud>{string-length($libro/title/text())}</longitud>
    </libro>
  }
</libros>