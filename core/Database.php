<?php

namespace Core;

// Bibliothèque d'accès aux BDD.
use PDO;
use PDOException;

// Classe pour gérer l'accès aux BDD.
class Database
{
    protected static $db;

    // Constructeur.
    public function __construct()
    {
        if (!self::$db) {
            try {
                self::$db = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);
                self::$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                self::$db->exec('SET NAMES utf8');
            } catch (\PDOException $e) {
                die('Erreur connexion BDD : ' . $e->getMessage());
            }
        }
    }

    // Accesseur.
    protected function db()
    {
        return self::$db;
    }
}
