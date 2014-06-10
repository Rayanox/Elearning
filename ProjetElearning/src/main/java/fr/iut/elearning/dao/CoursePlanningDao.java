package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.iut.elearning.model.CoursePlanningModel;

public interface CoursePlanningDao extends JpaRepository<CoursePlanningModel, Integer>{

}
