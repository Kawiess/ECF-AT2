<?php

namespace App\Models;

use App\Core\Database;
use PDO;

class Chambre extends Database
{
    public function getAll(): array
    {
        $stmt = $this->db()->query('SELECT * FROM chambre');
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
