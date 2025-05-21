<?php

// Configuration.
require_once '../config/config.php';

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
