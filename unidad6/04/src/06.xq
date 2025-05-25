(: 6. Insertar un nuevo nodo estado con valor pagada dentro de en la factura F001 :)
for $f in collection("facturasDb")/factura[@id="F001"]
return insert node <estado>pagada</estado> into $f

