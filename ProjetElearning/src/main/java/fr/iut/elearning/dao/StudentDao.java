package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.iut.elearning.model.Student;

public interface StudentDao extends JpaRepository<Student, Integer>{

}
