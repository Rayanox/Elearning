package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.TeacherDao;
import fr.iut.elearning.model.TeacherModel;

@Service
public class TeacherServiceImpl implements TeacherService{

	@Resource
	private TeacherDao teacherDao;
	
	@Override
	@Transactional
	public TeacherModel create(TeacherModel teacher) {
		TeacherModel createdTeacher = teacher;
		return teacherDao.save(createdTeacher);
	}

	@Override
	@Transactional
	public TeacherModel delete(int id) {
		TeacherModel deletedTeacher = teacherDao.findOne(id);

		teacherDao.delete(deletedTeacher);
		return deletedTeacher;
	}

	@Override
	@Transactional
	public List<TeacherModel> findAll() {
		return teacherDao.findAll();
	}

	@Override
	@Transactional
	public TeacherModel update(TeacherModel teacher) {
		TeacherModel updatedTeacher = teacherDao.findOne(teacher.getId());

		updatedTeacher.setFirstName(teacher.getFirstName());
		updatedTeacher.setLastName(teacher.getLastName());
		return updatedTeacher;
	}

	@Override
	@Transactional
	public TeacherModel findById(int id) {
		return teacherDao.findOne(id);
	}

}
