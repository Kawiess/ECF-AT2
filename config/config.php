<?php

use Dotenv\Dotenv;

// Environnement de travail.
define('APP_ENV', getenv('APP_ENV') ?: 'development');

// Si "dév", on charge le fichier ".env" local.
if (APP_ENV === 'development') {
    if (file_exists(__DIR__ . '/../.env')) {
        require_once __DIR__ . '/../vendor/autoload.php';
        $dotenv = Dotenv::createImmutable(__DIR__ . '/../');
        $dotenv->load();
    }
}

// Variables de BDD.
define('DB_HOST', $_ENV['DB_HOST'] ?: 'localhost');
define('DB_NAME', $_ENV['DB_NAME'] ?: 'pim_db');
define('DB_USER', $_ENV['DB_USER'] ?: '');
define('DB_PASS', $_ENV['DB_PASS'] ?: '');

// Autres variables.
define('BASE_URL',      $_ENV['BASE_URL']       ?: '/');
define('SESSION_NAME',  $_ENV['SESSION_NAME']   ?: 'pim_default');
define('DEBUG_MODE',    $_ENV['DEBUG_MODE'] === '1' ? true : false);

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
