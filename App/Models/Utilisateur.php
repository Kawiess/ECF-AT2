<?php

namespace App\Models;

use App\Core\Database;
use PDO;

// Modèle pour interagir avec les utilisateurs de la BDD.
class Utilisateur extends Database
{
    /**
     * Recherche un utilisateur par email et vérifie le mot de passe.
     * 
     * @param string $email : Identifiant de l'utilisateur
     * @param string $password : Mot de passe en clair à vérifier
     * @return array|null Retourne les données de l'utilisateur si le mot de passe est correct, sinon null.
     */
    public function findByEmail(string $email, string $password) : ?array
    {
        $stmt = $this->db()->prepare("SELECT * FROM utilisateur WHERE email = :email LIMIT 1");
        $stmt->execute(['email' => $email]);
        $user = $stmt->fetch(PDO::FETCH_ASSOC);
        
        // Vérification.
        if ($user && password_verify($password, $user['password'])) {
            return $user;
        } else {
            return null;
        }
    }

    // Vérifie l'existence d'un email.
    public function emailExists(string $email): bool
    {
        $stmt = $this->db()->prepare("SELECT COUNT(*) FROM utilisateur WHERE email = :email");
        $stmt->execute(['email' => $email]);
        return $stmt->fetchColumn() > 0;
    }

    /**
     * Crée un utilisateur en hachant le mot de passe automatiquement.
     * 
     * @param array $data Doit contenir les clés : email, password (en clair), nom, prénom, rôle
     * @return bool Succès ou échec de l'insertion
     */
    public function create(array $data): bool
    {
        $hashedPassword = password_hash($data['password'], PASSWORD_DEFAULT);
        $stmt = $this->db()->prepare("
            INSERT INTO utilisateur (email, password, nom, prenom, role) 
            VALUES (:email, :password, :nom, :prenom, :role)
        ");
        return $stmt->execute([
            'email' => $data['email'],
            'password' => $hashedPassword,
            'nom' => $data['nom'],
            'prenom' => $data['prenom'],
            'role' => $data['role'],
        ]);
    }

    // Mise à jour du mot de passe d'un utilisateur
    public function modifyPassword(string $email, string $password): bool
    {
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
        $stmt = $this->db()->prepare("
            UPDATE utilisateur 
            SET password = :password 
            WHERE email = :email
        ");
        return $stmt->execute([
            'email' => $email,
            'password' => $hashedPassword
        ]);
    }
}
