<!-- Entête + barre de navigation -->
<?php 
    $pageTitle = "Liste des chambres";
    include __DIR__ . '/../partials/header.php';
    include __DIR__ . '/../partials/navbar.php';
?>

<!-- Contenu principal -->
<main class="main-content">
    <h2><i class="fas fa-person-hiking"></i> Liste des activités</h2>

    <!-- Filtrage -->
    <div class="filtre-container">
        <label for="filtre-tab"><i class="fas fa-filter"></i> Filtrer par type :</label>
        <select id="filtre-tab">
            <option value="">Toutes</option>
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
                <th>ID Séjour</th>
                <th>Type activité</th>
                <th>Code d'activité</th>
                <th>Date</th>
                <th>Heure de début</th>
                <th>Heure de fin</th>
                <th>Nombre</th>
                <th>Informations</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($listeActivites as $activite): ?>
                <tr>
                    <td><?= htmlspecialchars($activite['id']) ?></td>
                    <td><?= htmlspecialchars($activite['id_sejour']) ?></td>
                    <td><?= htmlspecialchars($activite['type_activite']) ?></td>
                    <td><?= htmlspecialchars($activite['code_activite']) ?></td>
                    <td><?= $activite['date'] ?></td>
                    <td><?= $activite['heure_debut'] ?></td>
                    <td><?= $activite['heure_fin'] ?></td>
                    <td><?= $activite['nb_personnes'] ?> personnes</td>
                    <td><?= htmlspecialchars($activite['informations']) ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <script src="<?= BASE_URL ?>assets/js/filtre-tableaux.js"></script>
</main>

<!-- pied de page -->
<?php include __DIR__ . '/../partials/footer.php'; ?>
