<?php

namespace App\Controllers;

// Page d'accueil.
class HomeController
{
    public function index()
    {
        require_once __DIR__ . '/../Views/home.php';
    }
}
