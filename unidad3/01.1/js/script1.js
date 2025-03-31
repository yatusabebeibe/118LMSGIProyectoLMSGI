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
}

function cambiarParrafos(){
    parrafo[0].textContent="Parrafo brrrrr";
    parrafo[1].textContent="Parrafo aaaaaaaa";
    parrafo[2].textContent="Parrafo iatuzaveveybe";
}
