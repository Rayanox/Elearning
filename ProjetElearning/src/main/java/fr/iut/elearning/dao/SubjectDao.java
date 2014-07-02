package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.iut.elearning.model.Subject;

public interface SubjectDao extends JpaRepository<Subject, Integer>{

}
