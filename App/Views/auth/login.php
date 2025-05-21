<!-- 
//! A reprendre ! 
-->

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion - Gîte Pim</title>
    <link rel="stylesheet" href="/assets/style.css">
</head>
<body>
    <div class="login-container">
        <h2>Connexion au panneau d’administration</h2>
        <?php if (!empty($error)) : ?>
            <p class="error"><?= htmlspecialchars($error) ?></p>
        <?php endif; ?>
        <form action="<?= BASE_URL ?>auth/loginPost" method="post">
            <label for="email">Adresse e-mail :</label>
            <input type="email" name="email" id="email" required>
            <label for="password">Mot de passe :</label>
            <input type="password" name="password" id="password" required>
            <button type="submit">Se connecter</button>
        </form>
    </div>
</body>
</html>
