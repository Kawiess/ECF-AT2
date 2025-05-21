<?php

namespace App\Models;

use App\Core\Database;
use PDO;

class Activite extends Database
{
    public function getAll(): array
    {
        $stmt = $this->db()->query('SELECT * FROM activite');
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
