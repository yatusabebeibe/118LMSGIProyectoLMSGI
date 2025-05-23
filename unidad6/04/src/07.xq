(: 7. Eliminar el nodo en la factura F001 :)
for $e in collection("facturasDb")/factura[@id="F001"]
return delete node $e/estado
