<?php

// Configuration.
require_once __DIR__ . '/../vendor/autoload.php';
require_once __DIR__ . '/../config/config.php';

// Démarrage de la session.
session_name(SESSION_NAME);
session_start([
    'cookie_httponly' => true,
    'cookie_secure' => APP_ENV === 'production',
    'cookie_samesite' => 'Strict'
]);

// Renouvellement session après 30 minutes.
if (!isset($_SESSION['CREATED'])) {
    $_SESSION['CREATED'] = time();
} elseif (time() - $_SESSION['CREATED'] > 1800) {
    session_regenerate_id(true);
    $_SESSION['CREATED'] = time();
}

// Chargement des classes PHP.
spl_autoload_register(function ($class) {
    $classPath = str_replace('\\', DIRECTORY_SEPARATOR, $class);
    $file = __DIR__ . '/../' . $classPath . '.php';
    if (file_exists($file)) {
        require_once $file;
    } else {
        die("Classe introuvable : $class → chemin attendu : $file");
    }
});

// Routage.
use App\Core\Router;
$router = new Router();
$router->dispatch($_SERVER['REQUEST_URI']);
