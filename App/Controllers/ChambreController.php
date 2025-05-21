<?php 

namespace App\Controllers;

use App\Models\Chambre;

class ChambreController
{
    public function index()
    {
        $model = new Chambre();
        $chambres = $model->getAll();
        require_once __DIR__ . '/../Views/chambre/index.php';
    }
}
