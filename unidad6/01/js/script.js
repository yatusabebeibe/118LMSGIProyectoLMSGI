const div = document.getElementById("response");
// Selecciona el elemento del DOM donde se mostrará el resultado

let contenido = "";
// Variable para acumular el contenido HTML que se mostrará

fetch("./archivo.json")
// Función para hacer una petición HTTP y obtener el archivo JSON local

    .then(response => response.json())
    // Convierte la respuesta en un objeto JavaScript (parsear JSON)

    .then(data => {
        console.log(data);
        // Muestra el objeto JSON en consola para depurar

        // Construye un párrafo con datos extraídos del JSON (propiedades 'nombre' y 'edad')
        contenido += `<p><b>Nombre: </b>${data.nombre}<b>, Edad: </b>${data.edad}</p>`;

        div.innerHTML = contenido;
        // Inserta el contenido generado en el div del HTML
    })

    .catch(error => console.error("Error al cargar JSON:", error));
    // Captura y muestra cualquier error que ocurra al cargar o procesar el JSON