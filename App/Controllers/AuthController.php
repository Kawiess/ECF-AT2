<?php

namespace App\Controllers;

use App\Models\Utilisateur;

// Contrôleur d'authentification de l'utilisateur.
class AuthController
{
    // Page de connexion.
    public function login()
    {
        session_start();
        require_once __DIR__ . '/../Views/auth/login.php';
    }

    // Traite la connexion utilisateur.
    public function connexion()
    {
        session_start();
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $email = trim($_POST['email'] ?? '');
            $password = trim($_POST['password'] ?? '');
            if (empty($email) || empty($password)) {
                $_SESSION['error'] = "Tous les champs sont obligatoires.";
                header('Location: ' . BASE_URL . 'auth/connexion');
                exit;
            }
            $model = new Utilisateur();
            $user = $model->findByEmail($email, $password);
            if ($user && password_verify($password, $user['password'])) {
                $_SESSION['user'] = [
                    'id' => $user['id'],
                    'email' => $user['email'],
                    'nom' => $user['nom'] ?? '',
                ];
                header('Location: ' . BASE_URL);
                exit;
            } else {
                $_SESSION['error'] = "Identifiants incorrects.";
                header('Location: ' . BASE_URL . 'auth/connexion');
                exit;
            }
        } else {
            include __DIR__ . '/../Views/auth/login.php';
        }
    }

    // Déconnexion.
    public function logout()
    {
        session_start();
        session_destroy();
        header('Location: ' . BASE_URL . 'auth/login');
        exit;
    }

    // Page d'inscription.
    public function register()
    {
        session_start();
        require_once __DIR__ . '/../Views/auth/register.php';
    }

    // Inscription désactivée !
    public function inscription_old()
    {
        session_start();
        include __DIR__ . '/../Views/auth/register.php';
    }
}
