(: 18. Mostrar la suma total de los precios con la etiqueta total :)
<total>
  {
    format-number(sum(//book/price), '0.00')
  }
</total>

