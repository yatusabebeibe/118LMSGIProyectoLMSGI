(: 8. Renombrar el nodo total por importeTotal :)
for $t in collection("facturasDb")//total
return rename node $t as "importeTotal"

