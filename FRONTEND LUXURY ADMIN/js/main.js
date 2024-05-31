function toggleCollapse(id) {
    var element = document.getElementById(id);
    if (element.classList.contains('show')) {
        element.classList.remove('show');
    } else {
        element.classList.add('show');
    }
}

function openModal(id) {
    var modal = document.getElementById(id);
    modal.style.display = "flex";
}

function closeModal(id) {
    var modal = document.getElementById(id);
    modal.style.display = "none";
}
