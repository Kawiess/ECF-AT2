<?php 

namespace App\Controllers;

use App\Models\Element;

class ElementController
{
    public function index()
    {
        $model = new Element();
        $listeElements = $model->getAll();
        require_once __DIR__ . '/../Views/element/index.php';
    }
}
