-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Трв 11 2016 р., 16:51
-- Версія сервера: 5.6.28-0ubuntu0.15.04.1
-- Версія PHP: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `Books`
--

-- --------------------------------------------------------

--
-- Структура таблиці `books`
--

CREATE TABLE IF NOT EXISTS `books` (
`id` int(10) NOT NULL,
  `id_types` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `books`
--

INSERT INTO `books` (`id`, `id_types`, `name`) VALUES
(1, 1, 'Вступ до вищої матем'),
(2, 2, 'C# для чайників');

-- --------------------------------------------------------

--
-- Структура таблиці `chapters`
--

CREATE TABLE IF NOT EXISTS `chapters` (
`id` int(10) NOT NULL,
  `id_book` int(10) NOT NULL,
  `bb_content` text NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `chapters`
--

INSERT INTO `chapters` (`id`, `id_book`, `bb_content`, `title`) VALUES
(1, 0, '<span></span>fasgfbfs<sub>fgafg<sup>afgrg</sup></sub><sup>aregreag</sup><br>', ''),
(2, 0, '<span></span>fasgfbfs<sub>fgafg<sup>уатщуащцйиа фа щкмими у </sup></sub><sup>щкимщикщгми мищ<sub>щимищг</sub></sup><br>Просто набір символів<br>', 'Вища математи як вона є'),
(3, 0, '<span></span><span wbb="wbbid_38"><img src="https://pp.vk.me/c635103/v635103765/13133/gfjvANebiGU.jpg" height="372" width="558"><span>﻿</span></span><br>', 'Рівень 2. Від неука до Ромчика)'),
(4, 0, '<span></span><span wbb="wbbid_38"><span wbb="wbbid_40"><img src="https://pp.vk.me/c633831/v633831793/2a974/qijrzz4NRxE.jpg"><span>﻿</span></span><span>﻿</span></span><br>', 'Рівень 3. Латентний вчитель математики'),
(5, 0, '<span></span><span wbb="wbbid_38"><span wbb="wbbid_40"><iframe src="http://www.youtube.com/embed/9n92tQu5dKk" frameborder="0" height="480" width="640"></iframe> Тест відео....)<span>﻿</span></span><span>﻿</span></span><br>', 'Рівень 4. Перманентний задрот, або латен'),
(6, 1, '<span></span>wefefwef<br>', 'Рівень 4. Перманентний задрот, або латен'),
(7, 1, '<span></span>wefefwefoafvkpfsv<u>nadofnofk<strike>ofnoadfnv</strike></u><i>fdp npfi</i><br>', 'Рівень 5. f'),
(8, 2, '<span wbb="wbbid_38"><p style="text-align:center"><span><font size="4">C# для чайничків</font>﻿</span></p><span>﻿</span><img src="http://fs66.www.ex.ua/show/195404840/195404840.png" height="375" width="375"><span>﻿</span></span><span></span><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt eget leo at porta. Donec a commodo neque, a luctus nulla. Aliquam ac libero commodo, consectetur quam id, maximus turpis. Quisque mattis accumsan tortor, vel congue neque ullamcorper nec. Curabitur at enim accumsan, ultricies lectus quis, ullamcorper tellus. Donec tristique <br>odio leo, id vehicula lectus interdum ut. Ut faucibus at augue eu euismod. Suspendisse sed tortor lobortis, vehicula magna sit amet, accumsan mi. Suspendisse eros massa, lobortis quis ex ac, sollicitudin placerat lectus. Morbi dignissim lorem vel pulvinar vulputate. Quisque malesuada ligula quis nisi blandit efficitur. Proin eu vehicula tortor. Mauris molestie tortor dolor, ac aliquet ipsum hendrerit vel.<br><font face="Lucida Sans Unicode" size="6"><br>Phasellus ultrices erat sapien, ut maximus justo vehicula non. Pellentesque vitae ante felis. Maecenas viverra magna eget dui sagittis efficitur. Vestibulum porta viverra turpis, consectetur pulvinar velit. <br>Sed fermentum egestas malesuada. Mauris non felis non nisl ornar&nbsp; laoreet. Mauris eu sagittis odio, id maximus neque. Praesent a vestibulum turpis. Nulla nulla massa, posuere eu erat id, rutrum <br>tristique est.<br></font><br>Aliquam ac velit id risus semper blandit id eget nulla. Vivamus <br>sollicitudin, ante id facilisis eleifend, diam metus egestas magna, <br>aliquam vestibulum dolor enim quis turpis. Phasellus vel sodales orci, a<br> faucibus ex. Quisque scelerisque ultrices erat, vel mattis odio <br>suscipit vel. Vestibulum semper risus eget felis malesuada, nec <br>tincidunt neque convallis. Vivamus ac erat sed nisi rhoncus tincidunt. <br>Suspendisse ex erat, iaculis sed est ut, mattis rhoncus mi. Nulla <br>varius, odio eu mollis sagittis, ex augue vulputate elit, ut dignissim <br>elit elit at massa.<br><br>Vivamus ultrices magna quis nibh cursus convallis. Vivamus vitae rutrum <br>risus. Curabitur suscipit, lorem id lobortis laoreet, justo nibh <br>sagittis nisi, vitae semper metus nisi non ante. Nam commodo ex ac magna<br> placerat tempus. Quisque condimentum dolor sit amet ullamcorper <br>gravida. Aenean et fermentum sapien. Nullam sed tincidunt dolor, nec <br>ullamcorper neque. Sed tempus vestibulum velit. In aliquet non mauris eu<br> scelerisque. Sed id venenatis libero. Aenean elementum lacinia eros sit<br> amet euismod. Vestibulum a nisi ipsum. Duis lacinia congue velit, ac <br>blandit diam lacinia in.<br><br>Maecenas in metus dignissim, iaculis velit in, egestas mauris. Quisque <br>elit nisl, ultricies sit amet congue sed, venenatis dignissim purus. Sed<br> sit amet euismod odio. Mauris elementum est diam, eu semper neque <br>fermentum a. Fusce ut enim eget urna consequat finibus finibus sed <br>velit. Praesent at urna dolor. Maecenas sagittis consectetur ante. <br>Suspendisse sit amet consectetur lorem, quis elementum leo. Nulla at <br>turpis tortor. Nam id dapibus lacus. Nunc aliquam maximus magna sed <br>porttitor. Nunc eget lacinia quam. Sed nec justo eros.<br><br>Proin imperdiet sapien nulla, eget aliquet dui ullamcorper id. Morbi <br>vehicula felis diam, non sollicitudin leo iaculis vitae. Class aptent <br>taciti sociosqu ad litora torquent per conubia nostra, per inceptos <br>himenaeos. Aliquam in ultrices est. Vestibulum rhoncus nunc a urna <br>vestibulum interdum. Nam at auctor lectus. Cras porta nisi convallis, <br>hendrerit arcu ut, tempus neque. Aliquam dapibus felis a bibendum <br>auctor. Morbi nulla enim, aliquet ut est et, volutpat vulputate dui. <br>Cras at nunc justo. Curabitur nulla neque, finibus at ante ut, <br>ullamcorper consectetur ex. Lorem ipsum dolor sit amet, consectetur <br>adipiscing elit. Curabitur sed congue tortor.<br><br>Maecenas tristique convallis felis, at euismod augue. Donec eu tortor <br>elit. Phasellus eget nisi eget turpis consequat ultrices ac vel nibh. <br>Nulla non nunc sit amet est aliquam accumsan sed ut ante. Quisque <br>rhoncus, massa vel cursus ultrices, neque mi condimentum nisl, vel <br>vestibulum ipsum ipsum vel leo. Suspendisse potenti. Nam hendrerit <br>aliquet velit eu aliquam. Quisque ut hendrerit lacus. Vivamus molestie <br>dignissim metus eget fermentum. Fusce viverra sem nec augue posuere <br>ornare aliquam eget magna. Aliquam erat volutpat. Duis accumsan mauris <br>erat, in dictum nunc tincidunt eget. Phasellus ultrices lectus risus, in<br> sagittis sapien placerat vel. Aenean non augue eu diam volutpat <br>lobortis et facilisis neque. Mauris id dui sed neque bibendum cursus.<br><br>Duis sem turpis, ornare aliquet tellus lobortis, porttitor dignissim <br>velit. Ut et nisi id augue facilisis eleifend. Proin euismod, dolor sed <br>placerat cursus, diam augue porta nisi, eget finibus nunc elit nec <br>lorem. Etiam eu quam ultricies, dictum metus a, efficitur ex. Praesent <br>vestibulum euismod risus, ac sollicitudin dolor faucibus sit amet. <br>Curabitur aliquam erat quis magna accumsan, at fringilla erat <br>vestibulum. Ut vehicula neque a sem fringilla, vestibulum laoreet orci <br>bibendum. Cras fringilla lectus id ornare vestibulum. Suspendisse elit <br>magna, tincidunt id erat sed, finibus finibus ante. Maecenas condimentum<br> neque tellus, ut posuere dolor mattis convallis. Donec pellentesque nec<br> elit ut aliquam. Donec ornare, sapien dictum molestie consequat, ipsum <br>odio cursus elit, sit amet ullamcorper felis ante eu ante. Nulla <br>facilisi. Donec sit amet dui vitae erat commodo sagittis.<br></span><br>', 'Розділ 1'),
(9, 2, '<span wbb="wbbid_38"></span><span><font color="#ff0000" face="Tahoma" size="4">Maecenas tristique convallis felis, at euismod augue. Donec eu tortor <br>elit. Phasellus eget nisi eget turpis consequat ultrices ac vel nibh. <br>Nulla non nunc sit amet est aliquam accumsan sed ut ante. Quisque <br>rhoncus, massa vel cursus ultrices, neque mi condimentum nisl, vel <br>vestibulum ipsum ipsum vel leo. Suspendisse potenti. Nam hendrerit <br>aliquet velit eu aliquam. Quisque ut hendrerit lacus. Vivamus molestie <br>dignissim metus eget fermentum. Fusce viverra sem nec augue posuere <br>ornare aliquam eget magna. Aliquam erat volutpat. Duis accumsan mauris <br>erat, in dictum nunc tincidunt eget. Phasellus ultrices lectus risus, in<br> sagittis sapien placerat vel. Aenean non augue eu diam volutpat <br>lobortis et facilisis neque. Mauris id dui sed neque bibendum cursus.</font><br><br><iframe src="http://www.youtube.com/embed/lisiwUZJXqQ" frameborder="0" height="480" width="640"></iframe><br><br>Duis sem turpis, ornare aliquet tellus lobortis, porttitor dignissim <br>velit. Ut et nisi id augue facilisis eleifend. Proin euismod, dolor sed <br>placerat cursus, diam augue porta nisi, eget finibus nunc elit nec <br>lorem. Etiam eu quam ultricies, dictum metus a, efficitur ex. Praesent <br>vestibulum euismod risus, ac sollicitudin dolor faucibus sit amet. <br>Curabitur aliquam erat quis magna accumsan, at fringilla erat <br>vestibulum. Ut vehicula neque a sem fringilla, vestibulum laoreet orci <br>bibendum. Cras fringilla lectus id ornare vestibulum. Suspendisse elit <br>magna, tincidunt id erat sed, finibus finibus ante. Maecenas condimentum<br> neque tellus, ut posuere dolor mattis convallis. Donec pellentesque nec<br> elit ut aliquam. Donec ornare, sapien dictum molestie consequat, ipsum <br>odio cursus elit, sit amet ullamcorper felis ante eu ante. Nulla <br>facilisi. Donec sit amet dui vitae erat commodo sagittis.<br></span><br>', 'Розділ 2');

-- --------------------------------------------------------

--
-- Структура таблиці `results`
--

CREATE TABLE IF NOT EXISTS `results` (
`id` int(10) NOT NULL,
  `id_test` int(10) NOT NULL,
  `mark` int(3) NOT NULL,
  `time` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `results`
--

INSERT INTO `results` (`id`, `id_test`, `mark`, `time`, `name`, `date`) VALUES
(9, 4, 3, '3', 'Ро', '2016-05-11 16:49:59');

-- --------------------------------------------------------

--
-- Структура таблиці `tests`
--

CREATE TABLE IF NOT EXISTS `tests` (
`id` int(10) NOT NULL,
  `path` varchar(40) NOT NULL,
  `name` varchar(20) NOT NULL,
  `id_chapter` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `tests`
--

INSERT INTO `tests` (`id`, `path`, `name`, `id_chapter`) VALUES
(4, 'tests/z.tf', 'z', 6);

-- --------------------------------------------------------

--
-- Структура таблиці `types`
--

CREATE TABLE IF NOT EXISTS `types` (
`id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Вища математика'),
(2, 'Програмування');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `books`
--
ALTER TABLE `books`
 ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `chapters`
--
ALTER TABLE `chapters`
 ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `results`
--
ALTER TABLE `results`
 ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `tests`
--
ALTER TABLE `tests`
 ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `types`
--
ALTER TABLE `types`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `books`
--
ALTER TABLE `books`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `chapters`
--
ALTER TABLE `chapters`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблиці `results`
--
ALTER TABLE `results`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблиці `tests`
--
ALTER TABLE `tests`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблиці `types`
--
ALTER TABLE `types`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
