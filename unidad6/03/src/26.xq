(: 26. Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquétanos
con "año". :)
<años_pub>
  {
    for $anio in distinct-values(//book/year)
    order by $anio
    return <año>{$anio}</año>
  }
</años_pub>