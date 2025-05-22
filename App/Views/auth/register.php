<!-- Entête + barre de navigation -->
<?php 
    $pageTitle = "Inscription";
    include __DIR__ . '/../partials/header.php';
    include __DIR__ . '/../partials/navbar.php';
?>

<!-- Message d'erreur (éventuel) -->
<?php if (!empty($_SESSION['error'])): ?>
    <div class="error">
        <i class="fas fa-exclamation-triangle" aria-hidden="true"></i>
        <?= htmlspecialchars($_SESSION['error']) ?>
    </div>
    <?php unset($_SESSION['error']); ?>
<?php endif; ?>

<!-- Contenu principal -->
<main class="main-content">
    <h2><i class="fas fa-user-plus"></i> Création de compte</h2>
    <form action="<?= BASE_URL ?>auth/inscription" method="post" class="auth-form">
        <label for="email">Adresse e-mail :</label>
        <input type="email" name="email" required>
        <label for="password">Mot de passe :</label>
        <input type="password" name="password" required>
        <button type="submit">S’inscrire</button>
    </form>
</main>

<!-- pied de page -->
<?php include __DIR__ . '/../partials/footer.php'; ?>
