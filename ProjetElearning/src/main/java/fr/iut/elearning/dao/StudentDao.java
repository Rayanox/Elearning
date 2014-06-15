package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.iut.elearning.model.StudentModel;

public interface StudentDao extends JpaRepository<StudentModel, Integer>{

}
