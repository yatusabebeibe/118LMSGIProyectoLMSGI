(: 16-2. Mostrar el precio mínimo y el máximo de los libros :)
concat("Max: ",min(//book/price/xs:decimal(.)),"  Min: ", max(//book/price/xs:decimal(.)))