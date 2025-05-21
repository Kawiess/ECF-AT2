<?php 

namespace App\Controllers;

use App\Models\Activite;

class ActiviteController
{
    public function index()
    {
        $model = new Activite();
        $listeActivites = $model->getAll();
        require_once __DIR__ . '/../Views/activite/index.php';
    }
}
