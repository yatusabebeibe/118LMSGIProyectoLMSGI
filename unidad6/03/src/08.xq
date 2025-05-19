(: 8. Uso de variables expresiones en un for $tema in (lista de valores), $y in (lista de valores). Para
indicar la lista de valor de valorinicial to valorfinal, por ejemplo 1 to 100
Generar automáticamente la siguiente página web (08.html) :)

<html lang="es">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>UD6-3.3 Listado de practicas. Jesús Temprano Gallego</title>
</head>
<body>
    <h1>Listado de practicas</h1>
    {
    for $tema in (1 to 7), $y in (1 to 3)
    return  <div>
              <a href="{concat($tema,'/',$y,'.html')}">Tema {$tema}: Ejercicio{$y}</a>
            </div>
    }
</body>
</html>