(: 1. Mostrar el código del "Aula 1" :)

for $doc in collection("Academia")
where $doc/aula/nombre = "Aula 1"
return data($doc/aula/@id)
