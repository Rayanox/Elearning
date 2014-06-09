package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.SubjectModel;

public interface SubjectService {

	
	public SubjectModel create(SubjectModel subject);
	public SubjectModel delete(int id);
	public List<SubjectModel> findAll();
	public SubjectModel update(SubjectModel subject);
	public SubjectModel findById(int id);
}
