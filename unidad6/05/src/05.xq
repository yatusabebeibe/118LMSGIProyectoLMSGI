(: 5. Nombre de los cursos que no han finalizado :)

for $x in collection("academia")/curso
where $x/fin > format-date(xs:date (current-date()),"[D]/[M]/[Y]")
return $x/nombre/text() 

