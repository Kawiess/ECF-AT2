<h2>Liste des activités</h2>

<table border="1" cellpadding="8" cellspacing="0">
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
