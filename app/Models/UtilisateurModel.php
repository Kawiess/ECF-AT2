<?php

namespace App\Models;

use Core\Database;

// Modèle pour interagir avec les utilisateurs de la BDD.
class UtilisateurModel
{
    protected \PDO $db;

    // Constructeur.
    public function __construct()
    {
        $this->db = Database::db();
    }

    // Recherche utilisateur.
    public function findByEmail(string $email): ?array
    {
        $sql = 'SELECT * FROM utilisateurs WHERE email = :email LIMIT 1';
        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(':email', $email, \PDO::PARAM_STR);
        $stmt->execute();
        $user = $stmt->fetch(\PDO::FETCH_ASSOC);

        return $user ?: null;
    }
}
