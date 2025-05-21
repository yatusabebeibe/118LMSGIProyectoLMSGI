(: 1. Listar el nombre de todos los clientes :)
for $x in collection("facturasDb")/factura/cliente/nombre/text()
return $x