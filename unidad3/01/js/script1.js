// document.addEventListener: Ejecuta la función cuando el DOM está cargado (el HTML listo)
document.addEventListener("DOMContentLoaded", function() {
    // getElementById obtiene un elemento del DOM por su id
    var boton1 = document.getElementById("boton1");
    var boton2 = document.getElementById("boton2");
    var boton3 = document.getElementById("boton3");

    // addEventListener añade un evento (click) a un elemento, que ejecuta una función cuando ocurre
    boton1.addEventListener("click", saludar);
    boton2.addEventListener("click", cambiarColor);
    boton3.addEventListener("click", cambiarParrafos);
});

// Variable booleana para controlar saludos alternos
var contsaludo = true

// Función que muestra alertas alternas según el valor de contsaludo
function saludar() {
    if (contsaludo) {
        alert("jelow"); // alert muestra un mensaje emergente
        contsaludo = false
    } else {
        alert("¿jawaru raignaho?");
        contsaludo = true
    }
}

// Variable para controlar el modo de fondo (oscuro o claro)
var fondoOscuro = false;

// Función para cambiar colores del fondo, título y footer según fondoOscuro
function cambiarColor() {
    // Se asume que 'cuerpo' y 'titulo' están definidos globalmente o en el HTML
    boton2 = document.getElementById("boton2");
    if (fondoOscuro) {
        cuerpo.style.backgroundColor = ""; // vacía para volver al estilo original
        titulo.style.color = "";
        document.querySelector("footer").style.color = "";
        fondoOscuro = false;
    } else {
        cuerpo.style.backgroundColor = "#161616"; // fondo oscuro
        titulo.style.color = "white";
        document.querySelector("footer").style.color = "white";
        fondoOscuro = true;
    }
    // Operador ternario para cambiar el texto del botón según el estado
    boton2.value = fondoOscuro ? "Fondo Oscuro" : "Fondo Claro";
}

// Función para alternar clase CSS en todos los párrafos con clase "parrafo"
function cambiarParrafos() {
    // getElementsByClassName devuelve una colección de elementos con esa clase
    let parrafos = document.getElementsByClassName("parrafo");
    boton3 = document.getElementById("boton3");
    for (let i = 0; i < parrafos.length; i++) {
        // classList.toggle añade o quita la clase "estilo-modificado"
        parrafos[i].classList.toggle("estilo-modificado");
    }
    // Cambia el valor del botón entre dos textos
    boton3.value = boton3.value == "Cambiar parrafos" ? "Parrafo original" : "Cambiar parrafos";
}
