package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.iut.elearning.model.Course;

public interface CourseDao extends JpaRepository<Course, Integer> {

}
