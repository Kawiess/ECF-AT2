<?php

namespace App\Core;

// Classe de base des contrôleurs.
class Controller
{
    // Affichage.
    protected function view($view, $data = [])
    {
        extract($data);
        $viewPath = __DIR__ . '/../views/' . $view . '.php';
        if (file_exists($viewPath)) {
            require $viewPath;
        } else {
            echo "Vue introuvable : $view";
        }
    }

    // Redirection.
    protected function redirect($path)
    {
        header("Location: " . BASE_URL . ltrim($path, '/'));
        exit;
    }
}
