(: 4. Listado de los cursos que imparte el profesor con el siguiente DNI: 33856315 :)

for $doc in collection("Academia")/curso
where $doc/profesor/@idref = collection("Academia")/profesor[dni/text()="33856315"]/@id
return $doc/nombre/text()


(: Esta no funciona
for $doc in collection("Academia")
where $doc/curso/profesor/@idref = $doc/profesor[dni/text()="33856315"]/@id
return $doc/curso
:)