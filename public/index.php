<?php

// Configuration.
require_once __DIR__ . '/../vendor/autoload.php';
use Dotenv\Dotenv;
$dotenv = Dotenv::createImmutable(__DIR__ . '/../');
$dotenv->load();
define('DB_HOST', $_ENV['DB_HOST']);
define('DB_NAME', $_ENV['DB_NAME']);
define('DB_USER', $_ENV['DB_USER']);
define('DB_PASS', $_ENV['DB_PASS']);
define('BASE_URL', $_ENV['BASE_URL']);
define('SESSION_NAME', $_ENV['SESSION_NAME']);
define('DEBUG_MODE', filter_var($_ENV['DEBUG_MODE'], FILTER_VALIDATE_BOOLEAN));
date_default_timezone_set($_ENV['TIMEZONE']);

// Gestion des erreurs.
if (DEBUG_MODE) {
    ini_set('display_errors', 1);
    error_reporting(E_ALL);
} else {
    ini_set('display_errors', 0);
    error_reporting(0);
}

// Démarrage de la session.
session_name(SESSION_NAME);
session_start();

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
