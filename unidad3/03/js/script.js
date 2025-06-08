// Array constante con URLs de imágenes aleatorias
const imagenes = [
    'https://picsum.photos/200?random=1',
    'https://picsum.photos/200?random=2',
    'https://picsum.photos/200?random=3',
    'https://picsum.photos/200?random=4',
    'https://picsum.photos/200?random=5',
    'https://picsum.photos/200?random=6',
    'https://picsum.photos/200?random=7',
    'https://picsum.photos/200?random=8'
];

// Función que devuelve un número entero aleatorio entre 0 y longitud del array - 1
function nAleatorio() {
    return Math.floor(Math.random() * imagenes.length);
}

console.log("ahsdg"); // Mensaje de prueba en consola

// Obtener el elemento con id 'tablero' donde se añadirán las casillas
const tablero = document.getElementById('tablero');

// Bucle para crear 6 casillas (div)
for (let i = 0; i < 6; i++) {
    const casilla = document.createElement('div');  // Crear div
    casilla.classList.add('casilla');               // Añadir clase CSS 'casilla'

    // Añadir evento click que al pulsar cambia el contenido interno con una imagen aleatoria
    casilla.addEventListener('click', () => {
        // Ojo: las comillas para template string deben ser backticks ``, no comillas simples ''
        casilla.innerHTML = `<img src="${imagenes[nAleatorio()]}" alt="Imagen aleatoria">`;
    });

    tablero.appendChild(casilla); // Añadir la casilla al tablero
}