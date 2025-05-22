<!-- Entête + barre de navigation -->
<?php 
    $pageTitle = "Liste des chambres";
    include __DIR__ . '/../partials/header.php';
    include __DIR__ . '/../partials/navbar.php';
?>

<!-- Contenu principal -->
<main class="main-content">
    <h2><i class="fas fa-bed"></i> Liste des chambres</h2>

    <!-- Filtrage -->
    <div class="filtre-container">
        <label for="filtre-tab"><i class="fas fa-filter"></i> Filtrer par vue :</label>
        <select id="filtre-tab">
            <option value="">Toutes</option>
            <option value="mer">Mer</option>
            <option value="jardin">Jardin</option>
        </select>
    </div>

    <!-- Liste -->
    <table class="tableaux">
        <thead>
            <tr>
                <th>ID</th>
                <th>Code</th>
                <th>Vue</th>
                <th>Capacité</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($chambres as $chambre): ?>
                <tr>
                    <td><?= htmlspecialchars($chambre['id']) ?></td>
                    <td><?= htmlspecialchars($chambre['code']) ?></td>
                    <td><?= ucfirst(htmlspecialchars($chambre['vue'])) ?></td>
                    <td><?= (int)$chambre['capacite'] ?> personnes</td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <script src="<?= BASE_URL ?>assets/js/filtre-tableaux.js"></script>
</main>

<!-- pied de page -->
<?php include __DIR__ . '/../partials/footer.php'; ?>
