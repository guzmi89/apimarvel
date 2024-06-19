# API con PHP SLIM Y JWT QUE DEVUELVE DATOS SOBRE EL UNIVERSO MARVEL :rocket:
Proyecto basado en el Framwework **PHP Slim** que hace uso de **JWT** (tuupola/slim-jwt-auth) :lock:

## Instalación :wrench:
Primero clonamos el repositorio

```
git clone https://github.com/guzmi89/apimarvel.git
```

Segundo instalamos las dependencias con composer

```
composer update
```

## Configuración :gear:
1- Importar la base de datos (BBDD.sql)

2- Sólo debemos **renombrar el archivo .env.example a .env** y dentro ajustar el valor de la variables.

## Uso :keyboard:
La raíz del API es la carpeta public, en index.php ya disponemos del endpoint /films como endpoint de ejemplo haciendo una consulta a la base de datos mysql.

## Construido con :hammer_and_wrench:
* [SlimPhp](https://github.com/slimphp/Slim) - El framework usado
* [Middleware JWT](https://github.com/tuupola/slim-jwt-auth) - PSR-7 and PSR-15 JWT Authentication Middleware
* [Middleware CORS](https://github.com/tuupola/cors-middleware) - PSR-7 and PSR-15 CORS Middleware
* [phpdotenv](https://github.com/vlucas/phpdotenv) - Librería para el manejo de variables globales de PHP
* [reallySimpleJWT](https://github.com/RobDWaller/ReallySimpleJWT) - Librería para la creación de tokens JWT