<?php

namespace App\Controllers;

use Core\Controller;
use App\Models\Utilisateur;

// Contrôleur d'authentification de l'utilisateur.
class AuthController extends Controller
{
    protected Utilisateur $userModel;

    // Constructeur.
    public function __construct()
    {
        session_start();
        $this->userModel = new Utilisateur();
    }

    // Page de connexion.
    public function loginForm(): void
    {
        if ($this->isLogged()) {
            header('Location: /dashboard');
            exit;
        }
        $this->render('auth/login');
    }

    // ...
    public function login()
    {
        require_once __DIR__ . '/../Views/auth/login.php';
    }

    // Connexion (tentative).
    public function login2(): void
    {
        // Vérification accès.
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            header('Location: /login');
            exit;
        }

        // Lecture champs.
        $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
        $password = $_POST['password'] ?? '';
        if (!$email || !$password) {
            $this->render('auth/login', ['error' => 'Email et mot de passe obligatoires']);
            return;
        }

        // Vérification base.
        $user = $this->userModel->findByEmail($email);
        if (!$user || !password_verify($password, $user['password'])) {
            $this->render('auth/login', ['error' => 'Identifiants invalides']);
            return;
        }

        // Authentification réussie
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['user_role'] = $user['role'];
        session_regenerate_id(true);

        // Redirection.
        header('Location: /dashboard');
        exit;
    }

    // Déconnexion.
    public function logout(): void
    {
        session_start();
        $_SESSION = [];
        session_destroy();
        setcookie(session_name(), '', time() - 3600);
        header('Location: /login');
        exit;
    }

    // Utilisateur connecté ?
    public function isLogged(): bool
    {
        return isset($_SESSION['user_id']);
    }

    // Rôle utilisateur ?
    public function isAdmin(): bool
    {
        return $this->isLogged() && ($_SESSION['user_role'] === 'admin');
    }
}
