-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-06-2024 a las 16:35:33
-- Versión del servidor: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admin_marvel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `year` int(4) NOT NULL,
  `description` varchar(999) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `films`
--

INSERT INTO `films` (`id`, `title`, `year`, `description`, `image`) VALUES
(1, 'The Avengers', 2012, 'Cuando un enemigo inesperado surge como una gran amenaza para la seguridad mundial, Nick Fury, director de la Agencia SHIELD, decide reclutar a un equipo para salvar al mundo de un desastre casi seguro.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ugX4WZJO3jEvTOerctAWJLinujo.jpg'),
(2, 'The Incredible Hulk', 2008, 'El científico Bruce Banner recorre el mundo tratando de encontrar una cura a su problema, en busca de un antídoto que le permita librarse de su Alter Ego. Perseguido por el ejército y por su propia rabia interna, es incapaz de sacar de su cabeza a Betty Ross. Así que se decide a volver a la civilización, donde debe enfrentarse a una criatura creada cuando el agente de la KGB, Emil Blonsky, se expone a una dosis superior de la radiación que convirtió a Bruce en Hulk. Incapaz de volver a su estado humano, Emil hace responsable a Hulk de su aterradora condición, mientras que la ciudad de Nueva York se convierte en el escenario de la última batalla entre las dos criaturas más poderosas que jamás han pisado la Tierra.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/p4NYZXVtgKf6aiH65QzzkUVJcsd.jpg'),
(3, 'Iron Man', 2008, 'El multimillonario fabricante de armas Tony Stark debe enfrentarse a su turbio pasado después de sufrir un accidente con una de sus armas. Equipado con una armadura de última generación tecnológica, se convierte en \'El hombre de hierro\' para combatir el mal a escala global.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tFCTNx7foAsUQpgu2x1KjAJD1wT.jpg'),
(4, 'Iron Man 2', 2010, 'El mundo sabe que el multimillonario Tony Stark es Iron Man, el superhéroe enmascarado. Sometido a presiones por parte del gobierno, la prensa y la opinión pública para que comparta su tecnología con el ejército, Tony es reacio a desvelar los secretos de la armadura de Iron Man porque teme que esa información pueda caer en manos indeseables.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/p5LXVALvoTZA5cmxjOmjJBGtWfQ.jpg'),
(5, 'Iron Man 3', 2013, 'El descarado y brillante empresario Tony Stark/Iron Man se enfrentará a un enemigo cuyo poder no conoce límites. Cuando Stark comprende que su enemigo ha destruido su universo personal, se embarca en una angustiosa búsqueda para encontrar a los responsables. Este viaje pondrá a prueba su entereza una y otra vez. Acorralado, Stark tendrá que sobrevivir por sus propios medios, confiando en su ingenio y su instinto para proteger a las personas que quiere.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/upQED5VfXknJDEQsc4p2w9EEaGs.jpg'),
(6, 'Vengadores: La era de Ultrón', 2015, 'Cuando Tony Stark intenta reactivar un programa caído en desuso cuyo objetivo es mantener la paz, las cosas empiezan a torcerse y los héroes más poderosos de la Tierra, incluyendo a Iron Man, Capitán América, Thor, El Increíble Hulk, Viuda Negra y Ojo de Halcón, tendrán que afrontar la prueba definitiva cuando el destino del planeta se ponga en juego. Cuando el villano Ultron emerge, le corresponderá a Los Vengadores detener sus terribles planes, que junto a incómodas alianzas llevarán a una inesperada acción que allanará el camino para una épica y única aventura.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/71wSx6MQm8EbMNDi3vVaD8nD9SL.jpg'),
(7, 'Vengadores: Infinity War', 2018, 'El todopoderoso Thanos ha despertado con la promesa de arrasar con todo a su paso, portando el Guantelete del Infinito, que le confiere un poder incalculable. Los únicos capaces de pararle los pies son los Vengadores y el resto de superhéroes de la galaxia, que deberán estar dispuestos a sacrificarlo todo por un bien mayor. Capitán América e Ironman deberán limar sus diferencias, Black Panther apoyará con sus tropas desde Wakanda, Thor y los Guardianes de la Galaxia e incluso Spider-Man se unirán antes de que los planes de devastación y ruina pongan fin al universo. ¿Serán capaces de frenar el avance del titán del caos?', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ksBQ4oHQDdJwND8H90ay8CbMihU.jpg'),
(8, 'Vengadores: Endgame', 2019, 'Después de los eventos devastadores de \'Vengadores: Infinity War\', el universo está en ruinas debido a las acciones de Thanos. Con la ayuda de los aliados que quedaron, los Vengadores deberán reunirse una vez más para intentar deshacer sus acciones y restaurar el orden en el universo de una vez por todas, sin importar cuáles sean las consecuencias... Cuarta y última entrega de la saga \"Vengadores\".', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/br6krBFpaYmCSglLBWRuhui7tPc.jpg'),
(9, 'Capitana Marvel ', 2019, 'La historia sigue a Carol Danvers mientras se convierte en uno de los héroes más poderosos del universo, cuando la Tierra se encuentra atrapada en medio de una guerra galáctica entre dos razas alienígenas. Situada en los años 90, \'Capitana Marvel\' es una historia nueva de un período de tiempo nunca antes visto en la historia del Universo Cinematográfico de Marvel.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/d3p5JuwN7dG0TvrN5h4ZY4tMOEX.jpg'),
(10, 'Thor', 2011, 'Thor es un arrogante y codicioso guerrero cuya imprudencia desata una antigua guerra. Por ese motivo, su padre Odín lo castiga desterrándolo a la Tierra para que viva entre los hombres y descubra así el verdadero sentido de la humildad. Cuando el villano más peligroso de su mundo envía a la Tierra a las fuerzas más oscuras de Asgard, Thor se dará cuenta de lo que realmente hace falta para ser un verdadero héroe', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qFAVW4XJaxhj7PcpiUI5hhO9bOX.jpg'),
(11, 'Thor: el mundo oscuro', 2013, 'Thor lucha por restablecer el orden en el cosmos, pero una antigua raza liderada por el vengativo Malekith regresa con el propósito de volver a sumir el universo en la oscuridad. Se trata de un villano con el que ni siquiera Odín y Asgard se atreven a enfrentarse; por esa razón, Thor tendrá que emprender un viaje muy peligroso, durante el cual se reunirá con Jane Foster y la obligará a sacrificarlo todo para salvar el mundo.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/gPAmH41VpK5UPaNhAiNJePzrL8z.jpg'),
(12, 'Spider-Man: Homecoming', 2017, 'Peter Parker comienza a experimentar su recién descubierta identidad como el superhéroe Spider-Man. Después de la experiencia vivida con los Vengadores, Peter regresa a casa, donde vive con su tía. Bajo la atenta mirada de su mentor Tony Stark, Peter intenta mantener una vida normal como cualquier joven de su edad, pero interrumpe en su rutina diaria el nuevo villano Vulture y, con él, lo más importante de la vida de Peter comenzará a verse amenazado.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/yJfPC6pjSJ5VOsVyXhx5PXBe0mR.jpg'),
(13, 'Spider-Man: No Way Home', 2021, 'Por primera vez en la historia cinematográfica de Spider-Man, nuestro héroe, vecino y amigo es desenmascarado, y por tanto, ya no es capaz de separar su vida normal de los enormes riesgos que conlleva ser un superhéroe. Cuando pide ayuda al Doctor Strange, los riesgos pasan a ser aún más peligrosos, obligándole a descubrir lo que realmente significa ser él.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/osYbtvqjMUhEXgkuFJOsRYVpq6N.jpg'),
(14, 'Black Panther', 2018, '\"Black Panther\" cuenta la historia de T\'Challa quien, después de los acontecimientos de \"Capitán América: Civil War\", vuelve a casa, a la nación de Wakanda, aislada y muy avanzada tecnológicamente, para ser proclamado Rey. Pero la reaparición de un viejo enemigo pone a prueba el temple de T\'Challa como Rey y Black Panther ya que se ve arrastrado a un conflicto que pone en peligro todo el destino de Wakanda y del mundo', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8TjvIO8ZJPKrMKXEjOVGNSzuO6q.jpg'),
(15, 'Guardianes de la galaxia', 2014, 'El temerario aventurero Peter Quill es objeto de un implacable cazarrecompensas después de robar una misteriosa esfera codiciada por Ronan, un poderoso villano cuya ambición amenaza todo el universo. Para poder escapar del incansable Ronan, Quill se ve obligado a pactar una complicada tregua con un cuarteto de disparatados inadaptados: Rocket, un mapache armado con un rifle, Groot, un humanoide con forma de árbol, la letal y enigmática Gamora y el vengativo Drax the Destroyer. Pero cuando Quill descubre el verdadero poder de la esfera, deberá hacer todo lo posible para derrotar a sus extravagantes rivales en un intento desesperado de salvar el destino de la galaxia.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rzEmtM8qrvRKNdJUUiizdNHTccV.jpg'),
(16, 'Guardianes de la galaxia Vol. 2', 2017, 'Una poderosa raza alienígena contrata a los Guardianes para que protejan sus valiosas baterías de energía, pero, cuando Rocket las roba, los alienígenas envían a sus tropas de combate a vengarse de ellos. Mientras tratan de escapar con vida, intentan resolver el misterio de los verdaderos orígenes de Peter Quill.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kdg6Y06jfq9FV7qknWNcKLYtBJn.jpg'),
(17, 'Viuda negra', 2021, 'Natasha Romanoff, alias Viuda Negra, se enfrenta a las partes más oscuras de su historia cuando surge una peligrosa conspiración con vínculos con su pasado. Perseguida por una fuerza que no se detendrá ante nada para acabar con ella, Natasha debe enfrentarse a su historia como espía y a las relaciones rotas que dejó a su paso mucho antes de convertirse en una Vengadora.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/oggEsESyLjVGD7jbIdBfa2hFUrx.jpg'),
(18, 'Eternals', 2021, 'Hace millones de años, los seres cósmicos conocidos como los Celestiales comenzaron a experimentar genéticamente con los humanos. Su intención era crear individuos superpoderosos que hicieran únicamente el bien, pero algo salió mal y aparecieron los Desviantes, destruyendo y creando el caos a su paso. Ambas razas se han enfrentado en una eterna lucha de poder a lo largo de la historia. En medio de esta guerra, Ikaris y Sersi tratarán de vivir su propia historia de amor.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xQPGccKT1vo234v8s8hCDB05zZB.jpg'),
(19, 'Ant-Man', 2015, 'Armado con la asombrosa capacidad de reducir su tamaño a la dimensiones de un insecto, el estafador Scott Lang debe sacar a relucir al héroe que lleva dentro y ayudar a su mentor, el doctor Hank Pym, a proteger de una nueva generación de amenazas el secreto que se esconde tras el traje de Ant-Man, con un casco que le permite comunicarse con las hormigas. A pesar de los obstáculos aparentemente insuperables que les acechan, Pym y Lang deben planear y llevar a cabo un atraco para intentar salvar al mundo.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zwuE28gSXlLFLgueqMe9b7xKy1f.jpg'),
(20, 'Ant-Man y la Avispa', 2018, 'Mientras Scott Lang se convierte en un súper héroe y en un padre, Hope van Dyne y el Dr. Hank Pym presentan una nueva misión urgente que encuentra a Ant-Man luchando junto a The Wasp para descubrir secretos de su pasado.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/bvYI6i9lQ3bsup9PgnMF3YYr8ZR.jpg'),
(21, 'Capitán América: El primer vengador', 2011, 'Nacido durante la Gran Depresión, Steve Rogers creció como un chico enclenque en una familia pobre. Horrorizado por las noticias que llegaban de Europa sobre los nazis, decidió enrolarse en el ejército; sin embargo, debido a su precaria salud, fue rechazado una y otra vez. Enternecido por sus súplicas, el general Chester Phillips le ofrece la oportunidad de tomar parte en un experimento especial: la Operación Renacimiento. Tras meses de preparación y entrenamiento recibe su primera misión como Capitán América. Armado con un escudo indestructible y su inteligencia para la batalla, el Capitán América emprende la guerra contra el mal, como centinela de la libertad y como líder de los Vengadores.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/aCMNSj332pjLVNf2SfnX0w7JL74.jpg'),
(22, 'Capitán América: El soldado de invierno', 2014, 'Capitán América, Viuda Negra y un nuevo aliado, Falcon, se enfrentan a un enemigo inesperado mientras intentan sacar a la luz una conspiración que pone en riesgo al mundo.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6QBRnyvJHD7slOlX6aukvMwcEu.jpg'),
(23, 'Capitán América: Civil War', 2016, '\"Captain America: Civil War” continúa la historia de “Avengers: Age of Ultron”, con Steve Rogers liderando un nuevo equipo de Vengadores en su esfuerzo por proteger a la humanidad. Tras otro incidente internacional relacionado con los Vengadores que ocasiona daños colaterales, la presión política fuerza a crear un sistema de registro y un cuerpo gubernamental para determinar cuándo se requiere los servicios del equipo. El nuevo status quo divide a los Vengadores mientras intentan salvar al mundo de un nuevo y perverso villano.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/fwqAK9Vlh14mWMX3GNMi11P8XR4.jpg'),
(24, 'Doctor Strange', 2016, 'La vida del Dr. Stephen Strange cambia para siempre tras un accidente automovilístico que le deja muy malheridas sus manos. Cuando la medicina tradicional falla, se ve obligado a buscar esperanza y una cura en un lugar impensable: una comunidad aislada en Nepal llamada Kamar-Taj. Rápidamente descubre que éste no es sólo un centro de recuperación, sino también la primera línea de una batalla en contra de fuerzas oscuras y ocultas empeñadas en destruir nuestra realidad. En poco tiempo, Strange, armado con sus poderes mágicos recientemente adquiridos, se ve obligado a elegir entre volver a su antigua vida de riqueza y prestigio o dejarlo todo, para defender el mundo como el mago más poderoso del planeta.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sOsvKTJS0XwtfLsNMO3C0CVWJ4u.jpg'),
(25, 'Thor: Ragnarok', 2017, 'Thor está preso al otro lado del universo sin su poderoso martillo y se enfrenta a una carrera contra el tiempo. Su objetivo es volver a Asgard y parar el Ragnarok porque significaría la destrucción de su planeta natal y el fin de la civilización Asgardiana a manos de una todopoderosa y nueva amenaza, la implacable Hela. Pero, primero deberá sobrevivir a una competición letal de gladiadores que lo enfrentará a su aliado y compañero en los Vengadores, ¡el Increíble Hulk!', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/pGtkLdk4rnF2A3Yz2BHiTgRwMU4.jpg'),
(26, 'Shang-Chi y la leyenda de los Diez Anillos', 2021, 'Adaptación cinematográfica del héroe creado por Steve Englehart y Jim Starlin en 1973, un personaje mitad chino, mitad americano, cuyo característico estilo de combate mezclaba kung-fu, nunchacos y armas de fuego.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/aEUYugjHTxWEPmn8zacTTwQQPT0.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
