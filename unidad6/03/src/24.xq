(: 24. Mostrar los libros que contenga una X mayúscula o minúscula en el título ordenados de manera descendente :)
for $libro in //book/title/text()
where contains($libro, 'X') or contains($libro, 'x')
order by $libro descending
return $libro