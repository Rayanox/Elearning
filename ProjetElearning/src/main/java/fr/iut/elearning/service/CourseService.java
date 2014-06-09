package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.CourseModel;

public interface CourseService {

	public CourseModel create(CourseModel course);
	public CourseModel delete(int id);
	public List<CourseModel> findAll();
	public CourseModel update(CourseModel course);
	public CourseModel findById(int id);
}
