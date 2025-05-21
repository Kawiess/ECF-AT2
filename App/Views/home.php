<!-- Entête + barre de navigation -->
<?php 
    $pageTitle = "Bienvenue au Gîte Pim";
    include __DIR__ . '/partials/header.php';
    include __DIR__ . '/partials/navbar.php';
?>

<!-- Contenu -->
<main class="main-content">
    <section class="welcome-section">
        <div class="logo-container">
            <img src="<?= BASE_URL ?>assets/logo.png" alt="Logo Gîte Pim" class="logo-image" />
        </div>
        <h1>
            <i class="fas fa-home icon-home"></i>
            Bienvenue au Gîte Pim
        </h1>
        <p class="welcome-text">
            Votre panneau d’administration centralisé et sécurisé pour gérer chambres, activités et réservations.
        </p>
    </section>
    <section class="actions">
        <a href="<?= BASE_URL ?>chambre" class="btn btn-green">
            <i class="fas fa-bed"></i> Gérer les chambres
        </a>
        <a href="<?= BASE_URL ?>activite" class="btn btn-blue">
            <i class="fas fa-person-hiking"></i> Gérer les activités
        </a>
    </section>
</main>

<!-- pied de page -->
<?php include __DIR__ . '/partials/footer.php'; ?>
