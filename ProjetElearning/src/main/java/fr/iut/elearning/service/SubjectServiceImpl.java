package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.SubjectDao;
import fr.iut.elearning.model.SubjectModel;

@Service
public class SubjectServiceImpl implements SubjectService{

	@Resource
	private SubjectDao subjectDao;
	
	@Override
	@Transactional
	public SubjectModel create(SubjectModel subject) {
		SubjectModel createdSubject = subject;
		return subjectDao.save(createdSubject);
	}

	@Override
	@Transactional
	public SubjectModel delete(int id) {
		SubjectModel deletedSubject = subjectDao.findOne(id);

		subjectDao.delete(deletedSubject);
		return deletedSubject;
	}

	@Override
	@Transactional
	public List<SubjectModel> findAll() {
		return subjectDao.findAll();
	}

	@Override
	@Transactional
	public SubjectModel update(SubjectModel subject) {
		SubjectModel updatedSubject = subjectDao.findOne(subject.getId());

		updatedSubject.setSubjectName(subject.getSubjectName());
		return updatedSubject;
	}

	@Override
	@Transactional
	public SubjectModel findById(int id) {
		return subjectDao.findOne(id);
	}

}