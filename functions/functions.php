<?php
//Añado la clase de la DB.
require __DIR__ . '/../config/Db.php';

//Cargo dependencias
require __DIR__ . '/../vendor/autoload.php';

use ReallySimpleJWT\Token;

//Cargo las variables de entorno desde el .env
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__. '/../');
$dotenv->load();

//Devuelve los resultados de una consulta
function getConnection($sql, $params = []) {
    $conexion           = new Db;
    $resultado          = $conexion->query($sql, $params);
    return $resultado;
}

//Genera un access token JWT con expiración de 12 meses
function generate_access_JWT($permisos,$email) {
    
    $payload = [
        'iat' => time(),
        'exp' => time() + 3600*24*30*12,
        'email' => $email,
        'permisos' => $permisos,
        'type' => 'access'
    ];

    $token = Token::customPayload($payload, $_ENV['SECRET_JWT']);
    return $token;
}
?>