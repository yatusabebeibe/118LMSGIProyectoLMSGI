(: 2. Filtrar facturas con un importe total mayor que 200 :)
for $x in collection("facturasDb")/factura
where $x/total>200
return $x