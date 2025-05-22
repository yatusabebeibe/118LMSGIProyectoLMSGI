(: 3. Crea una página web (03.html) cuyo título de la web “UD6-3.3 Listado de libros. Nombre y apellidos” y que contenga una lista con viñetas con los títulos de los libros. :)

<html lang="es">
<head>
    <meta charset="UTF-8"/>
    <title>UD6-3.3 Listado de libros. Jesús Temprano Gallego</title>
</head>
<body>
    <h1>Listado de libros</h1>
    <ul>
      {
        for $x in /bookstore/book
        return <li>{$x/title/text()}</li>
      }
    </ul>
</body>
</html>