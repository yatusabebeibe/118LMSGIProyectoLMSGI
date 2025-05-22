const div = document.getElementById("response");
let contenido = "";


function listarJSON() {
    let contenido = "";
    fetch("./archivo.json")
    .then(response => response.json())
    .then(data => {
        console.log(data);
        contenido += `<ul>`
        data.personas.forEach(persona => {
            contenido += `<li><b>Nombre: </b>${persona.nombre} <b> Edad: </b>${persona.edad}</li>`;
        });
        contenido += `</ul>`
        div.innerHTML = contenido;
    })
    .catch(error => console.error("Error al cargar JSON:", error));
}
