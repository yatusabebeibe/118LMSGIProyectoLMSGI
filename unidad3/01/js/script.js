// getElementById obtiene un elemento por su id
var titulo = document.getElementById("titulo");

// textContent cambia el texto visible del elemento (sin interpretar HTML)
titulo.textContent = "Nuevo titulo eks dih";

// getElementsByClassName obtiene una colección (array-like) de elementos por su clase
var parrafo = document.getElementsByClassName("parrafo");

// innerText cambia el texto visible, interpretando saltos de línea y estilos CSS
parrafo[0].innerText = "Parrafo 1 mod";
parrafo[1].innerText = "Parrafo 2 mod";
parrafo[2].innerText = "Parrafo 3 mod";

// Cambio de estilos CSS con la propiedad style y la propiedad CSS específica
var cuerpo = document.getElementById("cuerpo");
cuerpo.style.background = "#f4f4f4";  // color de fondo
cuerpo.style.textAlign = "center";    // alineación de texto

titulo.style.color = "#333";           // color del texto
titulo.style.fontWeight = "bolder";   // grosor de la fuente
titulo.style.marginBottom = "15px";   // margen inferior
titulo.style.textTransform = "uppercase"; // texto en mayúsculas

// Bucle para aplicar estilos a todos los párrafos con clase "parrafo"
for (let i = 0; i < parrafo.length; i++) {
    parrafo[i].style.fontSize = "18px";        // tamaño de fuente
    parrafo[i].style.padding = "10px";         // espacio interno
    parrafo[i].style.width = "60%";             // ancho
    parrafo[i].style.borderLeft = "5px solid"; // borde izquierdo sólido de 5px
    parrafo[i].style.borderRadius = "5px";     // bordes redondeados
    parrafo[i].style.lineHeight = "1.6";       // altura de línea
    parrafo[i].style.margin = "18px auto";     // margen vertical y centrado horizontal
}

// Estilos específicos para cada párrafo (color texto, fondo y color del borde)
parrafo[0].style.color = "#e74c3c";
parrafo[0].style.background = "#ffe6e6";
parrafo[0].style.borderColor = "#c0392b";

parrafo[1].style.color = "#2ecc71";
parrafo[1].style.background = "#eaffea";
parrafo[1].style.borderColor = "#27ea60";

parrafo[2].style.color = "#3498db";
parrafo[2].style.background = "#e6f2ff";
parrafo[2].style.borderColor = "#2980b9";
