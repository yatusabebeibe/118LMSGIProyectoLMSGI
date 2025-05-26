(: 5. Nombre de los cursos que no han finalizado :)

(: No funciona
for $doc in collection("Academia")/curso
where xs:date($doc/fin) >= current-date()
return $doc/nombre/text()
:)