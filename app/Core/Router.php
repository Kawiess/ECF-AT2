<?php

namespace App\Core;

// Classe pour le routage.
class Router
{
    public function dispatch($uri)
    {
        // Info.
        echo "Routage de l'URI : $uri";

        // Nettoyage de l’URI.
        $uri = parse_url($uri, PHP_URL_PATH);
        $uri = trim($uri, '/');
        $base = trim(parse_url(BASE_URL, PHP_URL_PATH), '/');
        if (!empty($base) && str_starts_with($uri, $base)) {
            $uri = substr($uri, strlen($base));
            $uri = ltrim($uri, '/');
        }

        // Recherche contrôleurs.
        $segments       = explode('/', $uri);
        $controllerName = !empty($segments[0]) ? ucfirst($segments[0]) . 'Controller' : 'HomeController';
        $methodName     = $segments[1] ?? 'index';
        $params         = array_slice($segments, 2);
        $controllerClass = 'App\\Controllers\\' . $controllerName;
        $controllerFile  = __DIR__ . '/../controllers/' . $controllerName . '.php';

        // Renvoie si existe.
        if (file_exists($controllerFile)) {
            require_once $controllerFile;
            if (class_exists($controllerClass)) {
                $controller = new $controllerClass();
                if (method_exists($controller, $methodName)) {
                    call_user_func_array([$controller, $methodName], $params);
                    return;
                }
            }
        }

        // Sinon : erreur 404.
        http_response_code(404);
        echo "Page introuvable.";
    }
}
