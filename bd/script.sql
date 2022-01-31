  SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
  SET time_zone = "+00:00";

  CREATE TABLE `Blog` (
    `id` int(11) NOT NULL,
    `name` varchar(20) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  INSERT INTO `Blog` (`id`, `name`) VALUES (1, 'Articulos Java'), (2, 'Articulos Php'), (3, 'Articulos Phyton'), (4, 'Articulos JavaScript');