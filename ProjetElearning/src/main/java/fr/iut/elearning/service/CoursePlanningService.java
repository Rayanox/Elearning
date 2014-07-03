package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.CoursePlanning;

public interface CoursePlanningService {

	public CoursePlanning create(CoursePlanning coursePlanning);
	public CoursePlanning delete(int id);
	public List<CoursePlanning> findAll();
	public CoursePlanning update(CoursePlanning coursePlanning);
	public CoursePlanning findById(int id);
	public List<CoursePlanning> findTeacherNextCourseById(int teacherId);
	public List<CoursePlanning> findTeacherNextAssessmentById(int id);
}
