(: 9. Actualizar todas las facturas con importe inferior a 100 con el valor 100. :)

(:
for $f in collection("facturasDb")/factura[total < 250]
return replace value of node $f/total with 123.59
:)

for $f in collection("facturasDb")/factura[importeTotal < 260]
return replace value of node $f/importeTotal with $f/importeTotal-2.841