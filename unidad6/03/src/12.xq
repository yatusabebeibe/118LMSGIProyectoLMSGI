(: 12. Trasformar los datos a un archivo XML con el siguiente contenido, donde el atributo autores indica el número de autores de cada libro: :)
<publicaciones>
<publicacionfor>
  {
    for $x in /bookstore/book
    return $x/year
  }
</publicacionfor>
<publicacionlet>
  {
    let $x:=/bookstore/book/year
    return $x
  }
</publicacionlet>
</publicaciones>