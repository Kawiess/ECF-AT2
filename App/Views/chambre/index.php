<h2>Liste des chambres</h2>

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
                <td><?= ucfirst($chambre['vue']) ?></td>
                <td><?= $chambre['capacite'] ?> personnes</td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
