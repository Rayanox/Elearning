package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.iut.elearning.model.CoursePlanning;

public interface CoursePlanningDao extends JpaRepository<CoursePlanning, Integer>{

	
	@Query("SELECT c FROM CoursePlanning c WHERE c.teacherId = :teacher_id")
	public CoursePlanning findTeacherNextCourse(@Param("teacher_id") int teacherId);
}
