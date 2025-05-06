const div = document.getElementById("response");
let contenido = "";

fetch("./archivo.json")
    .then(response => response.json())
    .then(data => {
        console.log(data);

        contenido += `<p><b>Nombre: </b>${data.nombre}<b>, Edad: </b>${data.edad}</p>`;
        div.innerHTML = contenido;
    })
    .catch(error => console.error("Error al cargar JSON:", error));