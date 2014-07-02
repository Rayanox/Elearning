package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.SubjectDao;
import fr.iut.elearning.model.Subject;

@Service
public class SubjectServiceImpl implements SubjectService{

	@Resource
	private SubjectDao subjectDao;
	
	@Override
	@Transactional
	public Subject create(Subject subject) {
		Subject createdSubject = subject;
		return subjectDao.save(createdSubject);
	}

	@Override
	@Transactional
	public Subject delete(int id) {
		Subject deletedSubject = subjectDao.findOne(id);

		subjectDao.delete(deletedSubject);
		return deletedSubject;
	}

	@Override
	@Transactional
	public List<Subject> findAll() {
		return subjectDao.findAll();
	}

	@Override
	@Transactional
	public Subject update(Subject subject) {
		Subject updatedSubject = subjectDao.findOne(subject.getId());

		updatedSubject.setSubjectName(subject.getSubjectName());
		return updatedSubject;
	}

	@Override
	@Transactional
	public Subject findById(int id) {
		return subjectDao.findOne(id);
	}

}