package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.Student;

public interface StudentService {

	
	public Student create(Student student);
	public Student delete(int id);
	public List<Student> findAll();
	public Student update(Student student);
	public Student findById(int id);
}
