const div = document.getElementById("response");
// Selecciona el elemento del DOM donde se mostrará el resultado

let contenido = "";
// Variable para acumular contenido (aunque aquí no se usa la global, se redefine en la función)

function listarJSON() {
    let contenido = "";
    // Variable local para acumular el contenido HTML

    fetch("./archivo.json")
    // Petición para obtener el archivo JSON

    .then(response => response.json())
    // Convierte la respuesta en un objeto JavaScript

    .then(data => {
        console.log(data);
        // Muestra el objeto JSON en consola

        contenido += `<ul>`;
        // Abre una lista HTML

        data.personas.forEach(persona => {
            contenido += `<li><b>Nombre: </b>${persona.nombre} <b> Edad: </b>${persona.edad}</li>`;
            // Añade cada persona como un ítem de la lista
        });

        contenido += `</ul>`;
        // Cierra la lista HTML

        div.innerHTML = contenido;
        // Inserta la lista en el div del HTML
    })

    .catch(error => console.error("Error al cargar JSON:", error));
    // Captura y muestra errores al cargar o procesar el JSON
}
