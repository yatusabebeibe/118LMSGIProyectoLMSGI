(: 2. Qué cursos imparten/o han impartido clases en el "Aula 1" :)

for $doc in collection("Academia")/curso
where collection("Academia")/aula[nombre="Aula 1"]/@id = $doc/aula/@idref
return $doc/nombre/text()