package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.iut.elearning.model.StudentInAssessment;
import fr.iut.elearning.model.StudentInCourse;

public interface StudentInAssessmentDao extends JpaRepository<StudentInAssessment, Integer>{

	
	@Query("SELECT c FROM StudentInAssessment c WHERE c.studentId = :student_id")
	public StudentInAssessment findStudentNextCourse(@Param("student_id") int studentId);
}

