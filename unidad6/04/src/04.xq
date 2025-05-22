(: 4. Mostrar el total de la factura 2 :)
for $x in doc("facturasDb/factura2.xml")/factura[@id="F002"]
return $x/total/text()
