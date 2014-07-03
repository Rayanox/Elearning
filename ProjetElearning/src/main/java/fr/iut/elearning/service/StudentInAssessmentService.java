package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.StudentInAssessment;

public interface StudentInAssessmentService {

	public StudentInAssessment create(StudentInAssessment assessmentStudent);
	public StudentInAssessment delete(int id);
	public List<StudentInAssessment> findAll();
	public StudentInAssessment update(StudentInAssessment assessmentStudent);
	public StudentInAssessment findById(int id);
	public StudentInAssessment findStudentNextCourseById(int studentId);
	
}
