package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.iut.elearning.model.CourseModel;

public interface CourseDao extends JpaRepository<CourseModel, Integer> {

}
