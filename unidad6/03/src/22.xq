(: 22. Mostrar los libros escritos en años que terminan en “3” :)
for $libro in //book
where ends-with(string($libro/year), '3')
return $libro/title/text()