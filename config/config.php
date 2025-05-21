<?php

use Dotenv\Dotenv;

print_r($_ENV);   

// Environnement de travail.
define('APP_ENV', getenv('APP_ENV') ?: 'development');

// Si "dév", on charge le fichier ".env" local.
if (APP_ENV === 'development') {
    echo "<pre>Dev</pre>";
    if (file_exists(__DIR__ . '/../.env')) {
        require_once __DIR__ . '/../vendor/autoload.php';
        $dotenv = Dotenv::createImmutable(__DIR__ . '/../');
        $dotenv->load();
    }
} else {
    echo "<pre>Prod</pre>";
}

print_r($_ENV);
echo "<br>";
print_r($_ENV['DB_HOST']);
echo "<br>";
print_r($_ENV['APP_ENV']);
echo "<br>";
print_r("Host : " .  getenv('DB_HOST'));

// Variables de BDD.
define('DB_HOST', getenv('DB_HOST') ?: 'localhost');
define('DB_NAME', getenv('DB_NAME') ?: 'pim_db');
define('DB_USER', getenv('DB_USER') ?: 'root');
define('DB_PASS', getenv('DB_PASS') ?: 'sgbd');

// Autres variables.
define('BASE_URL', getenv('BASE_URL') ?: '/ecf-at2/public/');
define('SESSION_NAME', getenv('SESSION_NAME') ?: 'pim_admin_session');
define('DEBUG_MODE', getenv('DEBUG_MODE') === '1' ? true : false);

// Fuseau horaire.
date_default_timezone_set('Pacific/Noumea');

// Gestion des erreurs.
if (DEBUG_MODE) {
    ini_set('display_errors', 1);
    error_reporting(E_ALL);
} else {
    ini_set('display_errors', 0);
    error_reporting(0);
}
