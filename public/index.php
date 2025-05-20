<?php

// Configuration.
require_once '../config/config.php';

// Démarrage de la session.
session_name(SESSION_NAME);
session_start();

// Routage.
use Core\Router;
$router = new Router();
$router->dispatch($_SERVER['REQUEST_URI']);
