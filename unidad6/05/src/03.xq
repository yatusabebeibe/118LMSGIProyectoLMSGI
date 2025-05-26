(: 3. Mostrar el nombre y email de los profesores que imparten el curso "Bases de Datos OR" :)

for $doc in collection("Academia")/profesor
where collection("Academia")/curso[nombre="Bases de Datos OR"]/profesor/@idref = $doc/@id
return concat($doc/nombre/text()," | ",$doc/email/text())