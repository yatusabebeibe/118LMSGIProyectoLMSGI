document.addEventListener("DOMContentLoaded", function() {
    var boton1 = document.getElementById("boton1");
    var boton2 = document.getElementById("boton2");
    var boton3 = document.getElementById("boton3");

    boton1.addEventListener("click", saludar);
    boton2.addEventListener("click", cambiarColor);
    boton3.addEventListener("click", cambiarParrafos);
});

var contsaludo = true
function saludar() {
    if (contsaludo) {
        alert("jelow");
        contsaludo = false
    } else {
        alert("¿jawaru raignaho?");
        contsaludo= true
    }
    
}

var fondoOscuro=false;
function cambiarColor() {
    boton2 = document.getElementById("boton2");
    if (fondoOscuro) {
        cuerpo.style.backgroundColor="";
        titulo.style.color="";
        document.querySelector("footer").style.color=""
        fondoOscuro=false
    } else {
        cuerpo.style.backgroundColor="#161616";
        titulo.style.color="white";
        document.querySelector("footer").style.color="white"
        fondoOscuro=true
    }
    boton2.value = fondoOscuro ? "Fondo Oscuro" : "Fondo Claro"
}

function cambiarParrafos(){
    // parrafo[0].textContent="Parrafo brrrrr";
    // parrafo[1].textContent="Parrafo aaaaaaaa";
    // parrafo[2].textContent="Parrafo iatuzaveveybe";

    let parrafos = document.getElementsByClassName("parrafo")
    boton3 = document.getElementById("boton3");
    for (let i = 0; i < parrafos.length; i++) {
        parrafos[i].classList.toggle("estilo-modificado");
    }
    boton3.value = boton3.value=="Cambiar parrafos"?"Parrafo original":"Cambiar parrafos";
}
