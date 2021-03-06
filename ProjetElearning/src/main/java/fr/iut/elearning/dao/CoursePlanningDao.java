package fr.iut.elearning.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.iut.elearning.model.CoursePlanning;

public interface CoursePlanningDao extends JpaRepository<CoursePlanning, Integer>{

	@Query("SELECT c FROM CoursePlanning c WHERE c.teacherId = :teacher_id AND type = 'course' AND session_date >= curdate() ORDER BY session_date ASC, begin_time ASC")
	public List<CoursePlanning> findTeacherNextCourse(
			@Param("teacher_id") int teacherId);

	@Query("SELECT c FROM CoursePlanning c WHERE c.teacherId = :teacher_id AND type = 'assessment' AND session_date >= curdate() ORDER BY session_date ASC, begin_time ASC")
	public List<CoursePlanning> findTeacherNextAssessmentById(
			@Param("teacher_id") int teacherId);

}
