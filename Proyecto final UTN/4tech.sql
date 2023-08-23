-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-08-2023 a las 01:19:37
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `4tech`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` varchar(250) NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, 'Conoce Biolink', 'eguna en lo món, senyor, per fort que fos, que yo no manifestàs a la majestat vostra per la molta amor e voluntat que tinch de servir-vos.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'No seria cosa neguna en lo món, senyor, per fort que fos, que yo no manifestàs a la majestat vostra per la molta amor e voluntat que tinch de servir-vos. Per bé que sia cosa de gran dolor, yo vull obeir lo manament que·m fa la altesa vostra.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'p6kcmdovxfv9xoj1tcjg'),
(2, 'Recorrido virtual', 'Είπε, κι εμάς μάς έκοψε μεμιάς τα ήπατά μας το μουγκρητό του το βαρύ κι η όψη η γιγαντένια.\r\n\r\n', 'Είπε, κι εμάς μάς έκοψε μεμιάς τα ήπατά μας το μουγκρητό του το βαρύ κι η όψη η γιγαντένια. Όμως του απολογήθηκα κι αυτά τα λόγια του είπα· Από την Τροία ερχόμαστε, Αχαιοί που μύριοι ανέμοι μάς πέταξαν στης θάλασσας τα τρίσβαθα τα πλάτια.\r\n\r\n', 'jxbaw5mzamwrofou1cnb'),
(3, '4-TECH inversiones', '孫子曰：凡先處戰地而待敵者佚，後處戰地而趨戰者勞。', '孫子曰：凡先處戰地而待敵者佚，後處戰地而趨戰者勞。 故善戰者，致人而不致于人。 能使敵人自至者，利之也；能使敵不得至者，害之也。 故敵佚能勞之，飽能飢之，安能動之。\r\n\r\n 故善戰者，致人而不致于人。 \r\n\r\n', 'pwe1hhdyynzlach6m8l7'),
(16, '#1 en ventas', '', '1234\r\n', 'yrnpln1jv2ejfqderkkd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE IF NOT EXISTS `testimonios` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `comentario` varchar(250) NOT NULL,
  `ubicacion` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`id`, `usuario`, `comentario`, `ubicacion`) VALUES
(1, 'Roberto', '4 Tech, la mejor inversion actualmente', 'San Luis, Argentina'),
(2, 'daniel duda', 'Ya me suscribí a Biolink.', 'CABA, Argentina'),
(4, 'C.J.Wallace', '"Ya me suscribí para obtener Biolink".', 'Los Ángeles, California.'),
(6, 'Benjamín', '"Square-4D ha superado todas mis expectativas".', 'Madrid, España'),
(8, 'Francisco', '"4-TECH será sin duda, la startup más grande de                                     latinoamérica"', ' México D.F.'),
(10, 'daniel', 'El proyecto final para UTN esta quedando buenisimo', 'villa pueyrredon, argentina'),
(11, 'Jazmin99', 'Lo mejor en tecnología.', 'Merlo, San Luis'),
(25, 'Ezequiel77', 'lallallalallalaa', 'ccccccccc'),
(26, 'duda93', '"Tengo el proyecto terminado"', 'Salta, Argentina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'daniel', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'matias', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'flavia', '81dc9bdb52d04dc20036dbd8313ed055');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
