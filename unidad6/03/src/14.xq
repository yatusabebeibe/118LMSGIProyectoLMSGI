(: 14. Mostrar cuántos libros hay, y etiquetarlo con “total”. :)

let $x := count(/bookstore/book)
return <total>{$x}</total>
