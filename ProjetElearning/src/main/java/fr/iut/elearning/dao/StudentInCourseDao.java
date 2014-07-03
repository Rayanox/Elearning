package fr.iut.elearning.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.iut.elearning.model.StudentInCourse;

public interface StudentInCourseDao extends JpaRepository<StudentInCourse, Integer>{

	
	@Query("SELECT c FROM StudentInCourse c WHERE c.studentId = :student_id")
	public StudentInCourse findStudentNextCourse(@Param("student_id") int studentId);
}
