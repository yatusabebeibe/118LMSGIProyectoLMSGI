(: 11. Trasformar los datos a un archivo XML con el siguiente contenido, donde el atributo autores indica el número de autores de cada libro: :)
<libros>
  {
    for $x in /bookstore/book
    where $x/year=2005
    return <lib205 autores="{count($x/author)}">{$x/title/text()}, {$x/author/text()}</lib205>
  }
</libros>