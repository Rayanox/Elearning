package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.Course;

public interface CourseService {

	public Course create(Course course);
	public Course delete(int id);
	public List<Course> findAll();
	public Course update(Course course);
	public Course findById(int id);
}
