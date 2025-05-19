(: 9. Mostrar el título del libro cuando tenga más de dos autores. :)

for $x in /bookstore/book
where $x/count($x/author) > 2
return $x/title/text()