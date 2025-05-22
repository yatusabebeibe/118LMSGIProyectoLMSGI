(: 28. Mostrar los títulos en una tabla de HTML :)
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>UD6 Ej3_28</title>
    <link href="./css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <table>
  <tr><th>Título</th></tr>
    {
      for $titulo in //book/title/text()
      return <tr><td>{$titulo}</td></tr>
    }
  </table>
</body>
</html>