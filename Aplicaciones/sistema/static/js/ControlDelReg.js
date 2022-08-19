(function () {
    const btnEliminar = document.querySelectorAll(".btnEliminar");

    btnEliminar.forEach(btn => {
        btn.addEventListener('click', (e) => {
            const confirmacion = confirm('¿Eliminar el registro');
            if(!confirmacion){
                e.preventDefault();
            }
        });
    });
})();

(function(){
    setTimeout(function () {
        bootstrap.Alert.getOrCreateInstance(document.querySelector(".alert")).close();
    }, 5000);
})();

