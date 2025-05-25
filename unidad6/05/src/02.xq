(: 2. Qué cursos imparten/o han impartido clases en el "Aula 1" :)

for $doc in collection("Academia")/curso
where $doc/aula/@idref=1
return $doc/nombre/text()