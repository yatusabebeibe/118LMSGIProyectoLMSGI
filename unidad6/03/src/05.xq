(: 5. Crea una página web (05.html), que contenga todos los libros con su categoría, en la lista aparece distintos colores el título en función de la categoría. :)

<html lang="es">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>UD6-3.5 Categoria de Colores. Jesús Temprano Gallego</title>
</head>
<body>
    <h1>Bookstore</h1>
    <table>
      <tr>
        <th>Titulo</th>
        <th>Categoria</th>
      </tr>
      {
        for $x in /bookstore/book
        return <tr>
                <td>{data($x/title)}</td>
                <td>{data($x/@category)}</td>
              </tr>
      }
    </table>
    <ul>
      {
        (: Los colores en el css :)
        for $x in /bookstore/book
        return <li class='{data($x/@category)}'>
                 {
                   $x/title/text()
                 }
               </li>
      }
    </ul>
</body>
</html>