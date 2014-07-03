package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.StudentInCourse;;

public interface StudentInCourseService {

	public StudentInCourse create(StudentInCourse courseStudent);
	public StudentInCourse delete(int id);
	public List<StudentInCourse> findAll();
	public StudentInCourse update(StudentInCourse courseStudent);
	public StudentInCourse findById(int id);
	public StudentInCourse findStudentNextCourseById(int studentId);
	
}
