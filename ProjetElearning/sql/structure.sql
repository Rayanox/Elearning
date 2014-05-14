--
-- Structure de la table `Course`
--

CREATE TABLE IF NOT EXISTS `Course` (
  `id_course` int(11) NOT NULL AUTO_INCREMENT,
  `name_course` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
  PRIMARY KEY (`id`),
  KEY `CoursePlanning_ibfk_1` (`course_id`),
  KEY `CoursePlanning_ibfk_2` (`room_id`),
  KEY `CoursePlanning_ibfk_3` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Teacher`
--

CREATE TABLE IF NOT EXISTS `Teacher` (
  `id_teacher` int(11) NOT NULL AUTO_INCREMENT,
  `firstname_teacher` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname_teacher` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_teacher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `CoursePlanning`
--
ALTER TABLE `CoursePlanning`
  ADD CONSTRAINT `CoursePlanning_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `Teacher` (`id_teacher`),
  ADD CONSTRAINT `CoursePlanning_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Course` (`id_course`),
  ADD CONSTRAINT `CoursePlanning_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `Room` (`id_room`);

--
-- Contraintes pour la table `StudentInCourse`
--
ALTER TABLE `StudentInCourse`
  ADD CONSTRAINT `StudentInCourse_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `Course` (`id_course`),
  ADD CONSTRAINT `StudentInCourse_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `Student` (`id_student`);

--
-- Contraintes pour la table `TeacherSubject`
--
ALTER TABLE `TeacherSubject`
  ADD CONSTRAINT `TeacherSubject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `Subject` (`id_subject`),
  ADD CONSTRAINT `TeacherSubject_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `Teacher` (`id_teacher`);
