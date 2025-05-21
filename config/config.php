<?php

// Accès BDD.
define('DB_HOST', 'localhost');
define('DB_NAME', 'pim_db');
define('DB_USER', 'root');
define('DB_PASS', 'sgbd');

// Autres paramètres.
define('BASE_URL', '/ecf-at2/public/');
define('SESSION_NAME', 'pim_admin_session');
define('DEBUG_MODE', true);
date_default_timezone_set('Pacific/Noumea');

// Gestion des erreurs.
if (DEBUG_MODE) {
    ini_set('display_errors', 1);
    error_reporting(E_ALL);
} else {
    ini_set('display_errors', 0);
    error_reporting(0);
}
