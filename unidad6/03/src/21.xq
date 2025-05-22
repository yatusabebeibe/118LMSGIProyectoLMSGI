(: 21. Mostrar en la misma etiqueta el título y entre paréntesis el número de autores que tiene ese título :)
<libros>
  {
    for $libro in //book
    return <libro>{ concat($libro/title, ' (', count($libro/author), ' autores)') }</libro>
  }
</libros>