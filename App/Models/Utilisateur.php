<?php

namespace App\Models;

use Core\Database;
use PDO;

// Modèle pour interagir avec les utilisateurs de la BDD.
class Utilisateur extends Database
{
    // Recherche utilisateur.
    public function findByEmail($email) : ?array
    {
        $sql = "SELECT * FROM utilisateurs WHERE email = :email";
        $stmt = $this->db()->prepare($sql);
        $stmt->execute(['email' => $email]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
