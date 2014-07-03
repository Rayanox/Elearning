package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.iut.elearning.model.Teacher;

public interface TeacherDao extends JpaRepository<Teacher, Integer>{

}
