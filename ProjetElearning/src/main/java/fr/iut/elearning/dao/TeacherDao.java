package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.iut.elearning.model.TeacherModel;

public interface TeacherDao extends JpaRepository<TeacherModel, Integer>{

}
