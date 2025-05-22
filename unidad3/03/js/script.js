const imagenes = [
    'https://picsum.photos/200?random=1',
    'https://picsum.photos/200?random=2',
    'https://picsum.photos/200?random=3',
    'https://picsum.photos/200?random=4',
    'https://picsum.photos/200?random=5',
    'https://picsum.photos/200?random=6',
    'https://picsum.photos/200?random=7',
    'https://picsum.photos/200?random=8'];


function nAleatorio() {
    return Math.floor(Math.random() * imagenes.length);
}

console.log("ahsdg")
const tablero = document.getElementById('tablero');
 
// Creamos las casillas del tablero
for (let i = 0; i < 6; i++) {
    const casilla = document.createElement('div');
    casilla.classList.add('casilla');
    casilla.addEventListener('click', () => {
        // Generamos un índice aleatorio para seleccionar una imagen
        casilla.innerHTML = '<img src="${imagenes[nAleatorio()]}" alt="Imagen aleatoria">';
    });
    tablero.appendChild(casilla);
}