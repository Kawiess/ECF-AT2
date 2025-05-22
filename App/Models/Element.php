<?php

namespace App\Models;

use App\Core\Database;
use PDO;

class Element extends Database
{
    public function getAll(): array
    {
        $stmt = $this->db()->query('SELECT * FROM element');
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
