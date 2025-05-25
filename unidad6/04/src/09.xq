(: 9. Actualizar todas las facturas con importe inferior a 100 con el valor 100. :)

(:
for $f in collection("facturasDb")/factura[total/text() < 250]
return replace value of node $f/total/text() with 123.59
:)

for $f in collection("facturasDb")/factura[importeTotal/text() < 260.2]
return replace value of node $f/importeTotal
    with $f/importeTotal/text() - 2.87