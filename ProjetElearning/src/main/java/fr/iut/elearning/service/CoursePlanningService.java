package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.CoursePlanningModel;

public interface CoursePlanningService {

	public CoursePlanningModel create(CoursePlanningModel coursePlanning);
	public CoursePlanningModel delete(int id);
	public List<CoursePlanningModel> findAll();
	public CoursePlanningModel update(CoursePlanningModel coursePlanning);
	public CoursePlanningModel findById(int id);
}
