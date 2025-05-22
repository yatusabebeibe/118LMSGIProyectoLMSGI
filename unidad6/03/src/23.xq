(: 23. Mostrar los libros cuya categoría empiece por C :)
for $libro in //book
where starts-with($libro/@category, 'c')
return $libro/title/text()