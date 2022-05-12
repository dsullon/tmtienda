document.addEventListener('DOMContentLoaded', function () {
    iniciarApp();
})

function iniciarApp() {
    configMenuMobile();
}

function configMenuMobile() {
    const menu = document.querySelector('.menu-mobile');
    menu.addEventListener('click', function () {
        const navegacion = document.querySelector('.navegacion');        
        if (navegacion.classList.contains('mostrar')) {
            navegacion.classList.remove('mostrar');
        } else {
            navegacion.classList.add('mostrar');
        }
    })
}