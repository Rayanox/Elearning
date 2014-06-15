package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.StudentModel;

public interface StudentService {

	
	public StudentModel create(StudentModel student);
	public StudentModel delete(int id);
	public List<StudentModel> findAll();
	public StudentModel update(StudentModel student);
	public StudentModel findById(int id);
}
