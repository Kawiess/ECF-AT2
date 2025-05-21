<?php

namespace App\Models;

use App\Core\Database;

class User {
    public static function findByEmail($email) {
        $pdo = Database::connect();
        $stmt = $pdo->prepare("SELECT * FROM users WHERE email = ?");
        $stmt->execute([$email]);
        return $stmt->fetch();
    }
}
