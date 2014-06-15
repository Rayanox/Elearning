package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.iut.elearning.model.SubjectModel;

public interface SubjectDao extends JpaRepository<SubjectModel, Integer>{

}