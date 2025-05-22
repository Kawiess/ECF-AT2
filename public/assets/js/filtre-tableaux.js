document.addEventListener('DOMContentLoaded', function () {
    const select = document.getElementById('filtre-tab');
    if (!select) return;
    select.addEventListener('change', function () {
        const filtre = this.value.toLowerCase();
        const lignes = document.querySelectorAll('.tableaux tbody tr');
        lignes.forEach(tr => {
            const colonne = tr.children[2].textContent.trim().toLowerCase();
            tr.style.display = (filtre === "" || colonne === filtre) ? "" : "none";
        });
    });
});
