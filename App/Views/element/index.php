<!-- Entête + barre de navigation -->
<?php 
    $pageTitle = "Liste des éléments";
    include __DIR__ . '/../partials/header.php';
    include __DIR__ . '/../partials/navbar.php';
?>

<!-- Contenu principal -->
<main class="main-content">
    <h2><i class="fas fa-bed"></i> Liste des éléments</h2>

    <!-- Filtrage -->
    <div class="filtre-container">
        <label for="filtre-tab"><i class="fas fa-filter"></i> Filtrer par type :</label>
        <select id="filtre-tab">
            <option value="">Tous</option>
            <option value="ba">Bagne</option>
            <option value="ga">Garderie</option>
            <option value="ka">Kayak</option>
            <option value="ra">Randonnée</option>
            <option value="re">Repas</option>
        </select>
    </div>

    <!-- Liste -->
    <table class="tableaux">
        <thead>
            <tr>
                <th>ID</th>
                <th>Code élément</th>
                <th>Type activité</th>
                <th>Capacité</th>
                <th>Image</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($listeElements as $element): ?>
                <tr>
                    <td><?= htmlspecialchars($element['id']) ?></td>
                    <td><?= htmlspecialchars($element['code_element']) ?></td>
                    <td><?= htmlspecialchars($element['type_activite']) ?></td>
                    <td><?= $element['capacite'] ?> personnes</td>
                    <td class="table-image-cell">
                        <?php if (!empty($element['chemin_image'])): ?>
                            <img src="<?= htmlspecialchars(BASE_URL . 'assets/element/' . $element['chemin_image']) ?>" alt="Image de <?= htmlspecialchars($element['code_element']) ?>">
                        <?php else: ?>
                            <img src="<?= BASE_URL ?>assets/default-image.png" alt="Image par défaut">
                        <?php endif; ?>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <script src="<?= BASE_URL ?>assets/js/filtre-tableaux.js"></script>
</main>

<!-- pied de page -->
<?php include __DIR__ . '/../partials/footer.php'; ?>
