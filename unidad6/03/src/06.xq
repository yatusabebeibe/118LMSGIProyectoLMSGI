(: 6. Lista de libros ordenados por categoría de forma descendiente, y como segundo criterio por título de forma descendiente. Mostrando el título con precio, donde el precio es mayor que 30 $. El resultado (06.txt) es un fichero de texto :)

for $x in /bookstore/book
where $x/price>30
order by $x/@category descending,$x/title descending
return concat(data($x/title),': ',data($x/price),'$')