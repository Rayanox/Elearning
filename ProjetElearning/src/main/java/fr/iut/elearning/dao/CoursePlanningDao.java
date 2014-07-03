package fr.iut.elearning.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.iut.elearning.model.CoursePlanning;

public interface CoursePlanningDao extends
		JpaRepository<CoursePlanning, Integer> {

	@Query("SELECT c FROM CoursePlanning c WHERE c.teacherId = :teacher_id AND type = 'course' AND now() >= session_date AND begin_time >= now()")
	public List<CoursePlanning> findTeacherNextCourse(
			@Param("teacher_id") int teacherId);

	@Query("SELECT c FROM CoursePlanning c WHERE c.teacherId = :teacher_id AND type = 'assessment' AND now() >= session_date AND begin_time >= now()")
	public List<CoursePlanning> findTeacherNextAssessmentById(
			@Param("teacher_id") int teacherId);
}
