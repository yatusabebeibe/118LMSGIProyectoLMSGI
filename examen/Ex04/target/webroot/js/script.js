console.log("js cargado")
document.addEventListener("DOMContentLoaded", function() {
    var simbolos = document.querySelectorAll(".simbolo");

    simbolos.forEach(element => {
        var nombre=element.childNodes[1].innerText;
        nombre=nombre.toUpperCase();
        console.log(element.childNodes[0])
        element.childNodes[0].addEventListener("click",()=>element.nextElementSibling.classList.toggle("visible"))
        console.log("test")

        var ruta=`./webroot/json/${nombre}/horoscopo.json`;
        console.log(ruta)
        fetch(ruta)
        .then(response => response.json())
        .then(data => {
            console.log(data.horoscope.sign.message)
            element.nextElementSibling.innerText=data.horoscope.sign.message;
        })
        .catch(error => console.error("Error al cargar JSON:", error));
    });
});
