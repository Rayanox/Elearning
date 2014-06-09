package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.TeacherModel;

public interface TeacherService {

	public TeacherModel create(TeacherModel teacher);
	public TeacherModel delete(int id);
	public List<TeacherModel> findAll();
	public TeacherModel update(TeacherModel teacher);
	public TeacherModel findById(int id);
}
