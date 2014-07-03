-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 02 Juillet 2014 à 13:39
-- Version du serveur: 5.5.37-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `elearning`
--

-- --------------------------------------------------------

--
-- Structure de la table `Course`
--

CREATE TABLE IF NOT EXISTS `Course` (
  `id_course` int(11) NOT NULL AUTO_INCREMENT,
  `name_course` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_course`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `Course`
--

INSERT INTO `Course` (`id_course`, `name_course`) VALUES
(1, 'Maths'),
(2, 'Anglais'),
(3, 'Management');

-- --------------------------------------------------------

--
-- Structure de la table `CoursePlanning`
--

CREATE TABLE IF NOT EXISTS `CoursePlanning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `session_date` date NOT NULL,
  `begin_time` time NOT NULL,
  `end_time` time NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CoursePlanning_ibfk_1` (`course_id`),
  KEY `CoursePlanning_ibfk_2` (`room_id`),
  KEY `CoursePlanning_ibfk_3` (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Structure de la table `Room`
--

CREATE TABLE IF NOT EXISTS `Room` (
  `id_room` int(11) NOT NULL AUTO_INCREMENT,
  `name_room` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `building` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`id_room`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `Room`
--

INSERT INTO `Room` (`id_room`, `name_room`, `building`, `capacity`) VALUES
(1, 'A102', 'A', 20),
(2, 'A103', 'A', 18),
(3, 'A203', 'A', 25),
(4, 'A204', 'A', 30);

-- --------------------------------------------------------

--
-- Structure de la table `Student`
--

CREATE TABLE IF NOT EXISTS `Student` (
  `id_student` int(11) NOT NULL AUTO_INCREMENT,
  `firstname_student` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname_student` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `StudentInCourse`
--

CREATE TABLE IF NOT EXISTS `StudentInCourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `StudentInCourse_ibfk_1` (`student_id`),
  KEY `StudentInCourse_ibfk_2` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Subject`
--

CREATE TABLE IF NOT EXISTS `Subject` (
  `id_subject` int(11) NOT NULL AUTO_INCREMENT,
  `name_subject` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_subject`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `Teacher`
--

CREATE TABLE IF NOT EXISTS `Teacher` (
  `id_teacher` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_teacher`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `Teacher`
--

INSERT INTO `Teacher` (`id_teacher`, `firstName`, `lastName`) VALUES
(1, 'Hussam', 'Chaudhry'),
(2, 'Victor', 'Yaaa'),
(3, 'Waqas', 'Chaudhry'),
(4, 'Arnaud', 'Arnaud');

-- --------------------------------------------------------

--
-- Structure de la table `TeacherSubject`
--

CREATE TABLE IF NOT EXISTS `TeacherSubject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TeacherSubject_ibfk_1` (`teacher_id`),
  KEY `TeacherSubject_ibfk_2` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  `login` varchar(256) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `User`
--

INSERT INTO `User` (`id`, `email`, `firstName`, `lastName`, `password`, `login`, `status`) VALUES
(1, 'oto@mail.com', 'toto', 'toot', 'salut', 'toto', 1),
(2, 'rayane@hotmail.fr', 'Rayane', 'BEN-HMIDANE', '0000', 'Rayanox', 1),
(3, 'max@hotmail.fr', 'Max', 'Boulanger', 'admin', 'admin', 0),
(4, 'arnaud@hotmail.fr', 'Arnaud', 'Nauwynck', 'arnaud', 'arnaud', 2),
(5, 'user@hotmail.fr', 'User', 'UserName', 'using', 'user', 1);

-- --------------------------------------------------------

--
-- Structure de la table `UserStatus`
--

CREATE TABLE IF NOT EXISTS `UserStatus` (
  `id` int(11) NOT NULL DEFAULT '0',
  `status` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `UserStatus`
--

INSERT INTO `UserStatus` (`id`, `status`) VALUES
(0, 'Admin'),
(1, 'Student'),
(2, 'Teacher');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `CoursePlanning`
--
ALTER TABLE `CoursePlanning`
  ADD CONSTRAINT `CoursePlanning_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Course` (`id_course`),
  ADD CONSTRAINT `CoursePlanning_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `Room` (`id_room`),
  ADD CONSTRAINT `CoursePlanning_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `Teacher` (`id_teacher`);

--
-- Contraintes pour la table `StudentInCourse`
--
ALTER TABLE `StudentInCourse`
  ADD CONSTRAINT `StudentInCourse_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `Student` (`id_student`),
  ADD CONSTRAINT `StudentInCourse_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `Course` (`id_course`);

--
-- Contraintes pour la table `TeacherSubject`
--
ALTER TABLE `TeacherSubject`
  ADD CONSTRAINT `TeacherSubject_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `Teacher` (`id_teacher`),
  ADD CONSTRAINT `TeacherSubject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `Subject` (`id_subject`);

--
-- Contraintes pour la table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `User_ibfk_1` FOREIGN KEY (`status`) REFERENCES `UserStatus` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
