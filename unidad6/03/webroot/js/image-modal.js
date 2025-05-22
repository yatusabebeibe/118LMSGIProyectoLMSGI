// Modal de imagen tipo Material Design 3 con navegación por flechas y sin selección de imagen
window.addEventListener('DOMContentLoaded', function() {
    let images = Array.from(document.querySelectorAll('.md3-card img'));
    let currentIndex = -1;
    // Crear modal si no existe
    let modal = document.createElement('div');
    modal.className = 'md3-image-modal';
    modal.innerHTML = `
        <button class="md3-image-modal-close" title="Cerrar">&times;</button>
        <div class="md3-image-modal-title"></div>
        <img src="" alt="Imagen ampliada" draggable="false">
    `;
    document.body.appendChild(modal);

    const modalImg = modal.querySelector('img');
    const closeBtn = modal.querySelector('.md3-image-modal-close');
    const modalTitle = modal.querySelector('.md3-image-modal-title');

    // Al hacer clic en cualquier imagen de consulta
    images.forEach((img, idx) => {
        img.style.cursor = 'zoom-in';
        img.addEventListener('click', function() {
            currentIndex = idx;
            showImage();
        });
    });

    function showImage() {
        if (currentIndex >= 0 && currentIndex < images.length) {
            modalImg.src = images[currentIndex].src;
            modalImg.alt = images[currentIndex].alt;
            // Obtener el h2 correspondiente
            const card = images[currentIndex].closest('.md3-card');
            const h2 = card ? card.querySelector('h2') : null;
            modalTitle.textContent = h2 ? h2.textContent : '';
            modal.classList.add('active');
        }
    }

    // Cerrar modal al hacer clic en el botón o fuera de la imagen
    closeBtn.addEventListener('click', () => modal.classList.remove('active'));
    modal.addEventListener('click', (e) => {
        if (e.target === modal) {
            modal.classList.remove('active');
        }
    });
    // Navegación con teclado
    window.addEventListener('keydown', (e) => {
        if (!modal.classList.contains('active')) return;
        if (e.key === 'Escape') {
            modal.classList.remove('active');
        } else if (e.key === 'ArrowLeft') {
            if (currentIndex > 0) {
                currentIndex--;
                showImage();
            }
        } else if (e.key === 'ArrowRight') {
            if (currentIndex < images.length - 1) {
                currentIndex++;
                showImage();
            }
        }
    });
    // Evitar selección de la imagen ampliada
    modalImg.addEventListener('mousedown', e => e.preventDefault());
});
