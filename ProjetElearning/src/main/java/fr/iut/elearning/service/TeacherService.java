package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.Teacher;

public interface TeacherService {

	public Teacher create(Teacher teacher);
	public Teacher delete(int id);
	public List<Teacher> findAll();
	public Teacher update(Teacher teacher);
	public Teacher findById(int id);
}
