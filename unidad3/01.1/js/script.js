var titulo = document.getElementById("titulo")
titulo.textContent="Nuevo titulo eks dih"

var parrafo = document.getElementsByClassName("parrafo")

parrafo[0].innerText="Parrafo 1 mod"
parrafo[1].innerText="Parrafo 2 mod"
parrafo[2].innerText="Parrafo 3 mod"

var cuerpo = document.getElementById("cuerpo")
cuerpo.style.background="#f4f4f4"
cuerpo.style.textAlign="center"

titulo.style.color="#333"
titulo.style.fontWeight="bolder"
titulo.style.marginBottom="15px"
titulo.style.textTransform="uppercase"

for (let i = 0; i < parrafo.length; i++) {
    parrafo[i].style.fontSize="18px"
    parrafo[i].style.padding="10px"
    parrafo[i].style.width="60%"
    parrafo[i].style.padding="10px"
    parrafo[i].style.borderLeft="5px solid"
    parrafo[i].style.borderRadius="5px"
    parrafo[i].style.lineHeight="1.6"
    parrafo[i].style.margin="18px auto"
}

parrafo[0].style.color="#e74c3c"
parrafo[0].style.background="#ffe6e6"
parrafo[0].style.borderColor="#c0392b"

parrafo[1].style.color="#2ecc71"
parrafo[1].style.background="#eaffea"
parrafo[1].style.borderColor="#27ea60"

parrafo[2].style.color="#3498db"
parrafo[2].style.background="#e6f2ff"
parrafo[2].style.borderColor="#2980b9"