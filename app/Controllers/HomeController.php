<?php

namespace App\Controllers;

// Classe pour test.
class HomeController
{
    public function index()
    {
        require_once __DIR__ . '/../Views/home.php';
    }
}
