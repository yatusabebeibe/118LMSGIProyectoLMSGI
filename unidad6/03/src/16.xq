(: 16. Mostrar el precio mínimo y el máximo de los libros :)
<precios>
  <min>
    {
      min(//book/price/xs:decimal(.))
    }
  </min>
  <max>
    {
      max(//book/price/xs:decimal(.))
    }
  </max>
</precios>