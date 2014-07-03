package fr.iut.elearning.service;

import java.util.List;

import fr.iut.elearning.model.Subject;

public interface SubjectService {

	
	public Subject create(Subject subject);
	public Subject delete(int id);
	public List<Subject> findAll();
	public Subject update(Subject subject);
	public Subject findById(int id);
}
