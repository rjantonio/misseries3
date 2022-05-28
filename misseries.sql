-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2022 a las 17:47:22
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `misseries`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `idg` int(11) NOT NULL,
  `genero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`idg`, `genero`) VALUES
(1, 'Comedia'),
(2, 'Aventura'),
(3, 'Thriller'),
(4, 'Terror'),
(5, 'Drama'),
(6, 'Ciencia Ficción'),
(7, 'Fantasía'),
(8, 'Animación'),
(41, 'Misterio'),
(42, 'Hola');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece`
--

CREATE TABLE `pertenece` (
  `ids` int(11) NOT NULL,
  `idg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pertenece`
--

INSERT INTO `pertenece` (`ids`, `idg`) VALUES
(1, 2),
(1, 4),
(1, 7),
(1, 8),
(2, 2),
(2, 4),
(2, 6),
(2, 7),
(3, 1),
(3, 6),
(3, 8),
(4, 5),
(4, 7),
(5, 2),
(5, 5),
(5, 6),
(6, 6),
(7, 3),
(7, 6),
(8, 1),
(8, 3),
(8, 7),
(9, 1),
(9, 5),
(10, 4),
(10, 6),
(11, 2),
(12, 2),
(13, 2),
(14, 5),
(14, 8),
(15, 1),
(15, 2),
(15, 6),
(15, 7),
(16, 1),
(17, 3),
(17, 4),
(18, 6),
(19, 6),
(20, 4),
(20, 7),
(21, 4),
(22, 4),
(24, 3),
(25, 2),
(25, 3),
(26, 2),
(26, 5),
(27, 4),
(27, 5),
(28, 3),
(28, 4),
(28, 5),
(29, 7),
(30, 1),
(31, 3),
(31, 6),
(31, 7),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(35, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie`
--

CREATE TABLE `serie` (
  `ids` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `fecha` date DEFAULT NULL,
  `temporadas` tinyint(4) NOT NULL DEFAULT 1,
  `puntuacion` float(6,2) NOT NULL DEFAULT 0.00,
  `argumento` text NOT NULL,
  `plataforma` varchar(100) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `serie`
--

INSERT INTO `serie` (`ids`, `titulo`, `fecha`, `temporadas`, `puntuacion`, `argumento`, `plataforma`, `poster`) VALUES
(1, 'Hunters', '2019-02-15', 2, 1.00, 'Este es un buen argumento', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BZWEwZTcyNjctMjAzZC00ZGU0LWIxYWQtMDAwMmU1NzQ1ZjQ3XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg'),
(2, 'The Umbrella Academy', '2019-02-11', 1, 7.00, 'fadsgfdsg', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BNTFhOTk1NTgtYWM1ZS00NWI1LTgzYzAtYmE5MjZiMDE0NzlhXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(3, 'Star Trek: Picard', '2019-02-15', 2, 10.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BMjAzYmQ4NTUtMGVjOS00OWRhLTlmYjktZDlkZTk2OGQ2YjE5XkEyXkFqcGdeQXVyODkzNTgxMDg@._V1_SX704_CR0,0,704,999_AL_.jpg'),
(4, 'Silicon Valley', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'HBO', 'https://m.media-amazon.com/images/M/MV5BOTcwNzU2MGEtMzUzNC00MzMwLWJhZGItNDY3NDllYjU5YzAyXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_SY1000_SX675_AL_.jpg'),
(5, 'The Mandalorian', '2019-02-15', 1, 4.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Disney+', 'https://m.media-amazon.com/images/M/MV5BMWI0OTJlYTItNzMwZi00YzRiLWJhMjItMWRlMDNhZjNiMzJkXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(6, 'Gravity Falls', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Disney+', 'https://m.media-amazon.com/images/M/MV5BMTEzNDc3MDQ2NzNeQTJeQWpwZ15BbWU4MDYzMzUwMDIx._V1_SY1000_CR0,0,641,1000_AL_.jpg'),
(7, 'Castlevania', '2019-02-15', 1, 4.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BYWUwN2UwYTktMDk4OC00YTg0LThmNTItNWE3ZjQxOTIxZTg3XkEyXkFqcGdeQXVyNTE1NjY5Mg@@._V1_.jpg'),
(8, 'Stranger Things', '2020-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMjEzMDAxOTUyMV5BMl5BanBnXkFtZTgwNzAxMzYzOTE@._V1_.jpg'),
(9, 'The Marvelous Mrs. Maisel', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BZTFhMDdmODEtN2UwOS00ZjQwLTgxMGYtM2JlMGM3YTUyM2FjXkEyXkFqcGdeQXVyMTYzMDM0NTU@._V1_.jpg'),
(10, 'Daredevil', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BODcwOTg2MDE3NF5BMl5BanBnXkFtZTgwNTUyNTY1NjM@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(11, 'Iron Fist', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMjI5Mjg1NDcyOV5BMl5BanBnXkFtZTgwMjAxOTQ5MTI@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(12, 'Jessica Jones', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMjQxNzkzMzMyM15BMl5BanBnXkFtZTgwNDIyNjc3NjE@._V1_.jpg'),
(13, 'Luke Cage', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMjAxOTM3NjEwMV5BMl5BanBnXkFtZTgwNTkyOTY4NTM@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(14, 'The Big Bang Theory', '2019-02-15', 1, 5.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BY2FmZTY5YTktOWRlYy00NmIyLWE0ZmQtZDg2YjlmMzczZDZiXkEyXkFqcGdeQXVyNjg4NzAyOTA@._V1_SY1000_CR0,0,666,1000_AL_.jpg'),
(15, 'Dirk Gently', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMTU3MDkzNzM5NF5BMl5BanBnXkFtZTgwMzEyNTgyMDI@._V1_.jpg'),
(16, 'Brooklyn Nine-Nine', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BNzVkYWY4NzYtMWFlZi00YzkwLThhZDItZjcxYTU4ZTMzMDZmXkEyXkFqcGdeQXVyODUxOTU0OTg@._V1_.jpg'),
(17, 'iZombie', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BODdjNjRhOWUtMTA3NC00NTJmLTg4ZWUtZWJiNzNmMzZiN2NiXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SY1000_CR0,0,666,1000_AL_.jpg'),
(18, 'Star Trek: Discovery', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BOTg5MzA1MjAwNV5BMl5BanBnXkFtZTgwNzAwMDU5NjM@._V1_SY1000_CR0,0,694,1000_AL_.jpg'),
(19, 'Lost in Space', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BYzZkOTY4MDgtODI5Mi00ZjA4LWJkODgtYzBiOGE3MWNhZWFmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(20, 'Locke & Key', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BNjZkNzY4M2ItOWY0Ni00Y2ViLWE1NjItOTIyYzZjMzg5M2E1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(21, 'Swamp Thing', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Movistar+', 'https://m.media-amazon.com/images/M/MV5BNWRiZTMxZTUtYzI2NS00YTk1LWJhM2MtYzU2NGQ4YzA1MmNiXkEyXkFqcGdeQXVyMjYwNDA2MDE@._V1_.jpg'),
(22, 'Evil', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Movistar+', 'https://m.media-amazon.com/images/M/MV5BYjE5MjM5MzUtNjg4MS00ZWVkLTgyZWUtMGRjNzc1MzdiODNkXkEyXkFqcGdeQXVyMTMwNzQ2MDM@._V1_SY1000_CR0,0,666,1000_AL_.jpg'),
(23, 'The Exorcist', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BMjEzNjI5Njg4MV5BMl5BanBnXkFtZTgwMjkwMjU2MzI@._V1_SY1000_CR0,0,673,1000_AL_.jpg'),
(24, 'Jack Ryan', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BNDg1Zjc4YzktMmRmZi00ZWJmLWJiYzgtYjg3MmE0OTM1NzY5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,679,1000_AL_.jpg'),
(25, 'The Boys', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BMjdjOTliZTQtM2FhNS00Mjk3LWJiOTgtMWJlMTg4MDgyNzc1XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg'),
(26, 'Watchmen', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'HBO', 'https://m.media-amazon.com/images/M/MV5BYjhhZDE3NjgtMjkzNC00NzI3LWJhOTItMWQ5ZjljODA5NWNkXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_SY1000_CR0,0,666,1000_AL_.jpg'),
(27, 'The Haunting of Hill House', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMTU4NzA4MDEwNF5BMl5BanBnXkFtZTgwMTQxODYzNjM@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(28, 'Servant', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Apple TV', 'https://m.media-amazon.com/images/M/MV5BNjQ2MzIzMGMtN2I4Yi00NzdkLWE1NTAtMTI0NWZiNzAwMDM5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg'),
(29, 'Amazing Stories', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Apple TV', 'https://m.media-amazon.com/images/M/MV5BMzY3NGI0MWUtYTBmZC00MDEyLTgyMjItZTY5YzIzZjcxNGQ4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SY1000_CR0,0,666,1000_AL_.jpg'),
(30, 'Mythic Quest', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Apple TV', 'https://m.media-amazon.com/images/M/MV5BYjUyMmJjZmUtY2VhZi00YTY0LTg5NmMtYzU3NDM4N2YzNzk3XkEyXkFqcGdeQXVyNDk3ODk4OQ@@._V1_SY1000_CR0,0,689,1000_AL_.jpg'),
(31, 'El ministerio del Tiempo', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Movistar+', 'https://m.media-amazon.com/images/M/MV5BM2RlMTZkYzYtYmQ4Mi00MTFlLTgzMzItMjUzNTZiN2U2YTY2XkEyXkFqcGdeQXVyODY0OTUyOTg@._V1_.jpg'),
(32, 'Parks and Recreation', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BMjA5MjUxNDgwNF5BMl5BanBnXkFtZTgwMDI5NjMwNDE@._V1_.jpg'),
(33, 'Frasier', '2019-02-15', 3, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', NULL, 'https://m.media-amazon.com/images/M/MV5BNzViNjNkZDktMTE5Yi00NjRmLWEyYTYtZjQ5ZWM5OThlMzJlXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SY1000_SX746_AL_.jpg'),
(34, 'Friends', '2019-02-15', 1, 2.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', NULL, 'https://m.media-amazon.com/images/M/MV5BNDVkYjU0MzctMWRmZi00NTkxLTgwZWEtOWVhYjZlYjllYmU4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg'),
(35, 'How I met your mother', '2019-02-15', 1, 4.00, 'On the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', NULL, 'https://m.media-amazon.com/images/M/MV5BZWJjMDEzZjUtYWE1Yy00M2ZiLThlMmItODljNTAzODFiMzc2XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SY1000_CR0,0,666,1000_AL_.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idu` int(11) NOT NULL,
  `usuario` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `perfil` tinyint(4) NOT NULL DEFAULT 0,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idu`, `usuario`, `password`, `email`, `nombre`, `perfil`, `imagen`) VALUES
(1, 'antonio', 'kiko', 'rj.antonio2000@gmail.com', 'Antonio ruiz jimenez', 0, NULL),
(10, 'asdf', 'asdf', 'asdf', 'fda asdf asdf ', 0, NULL),
(12, 'profesor', '1234', 'iescampanillas@gmail.com', 'Antonio antonio antonio', 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idg`);

--
-- Indices de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD PRIMARY KEY (`ids`,`idg`),
  ADD KEY `fk_pertenece_genero` (`idg`);

--
-- Indices de la tabla `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`ids`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `idg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `serie`
--
ALTER TABLE `serie`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD CONSTRAINT `fk_pertenece_genero` FOREIGN KEY (`idg`) REFERENCES `genero` (`idg`),
  ADD CONSTRAINT `fk_pertenece_serie` FOREIGN KEY (`ids`) REFERENCES `serie` (`ids`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
