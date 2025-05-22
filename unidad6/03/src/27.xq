(: 27. Mostrar todos los autores eliminando los que se repiten y ordenados por el número de caracteres que tiene cada autor. :)
for $autor in distinct-values(//book/author/text())
order by string-length($autor)
return $autor