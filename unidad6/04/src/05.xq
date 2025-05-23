(: 5. Remplazar el nombre del clietne en la factura F001 por "tu nombre y Apellidos" :)
replace value of node doc("facturasDb/factura1.xml")/factura[@id="F001"]/cliente/nombre
with "Jesus Temprano Gallego"
