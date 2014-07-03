package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.TeacherDao;
import fr.iut.elearning.model.Teacher;

@Service
public class TeacherServiceImpl implements TeacherService{

	@Resource
	private TeacherDao teacherDao;
	
	@Override
	@Transactional
	public Teacher create(Teacher teacher) {
		Teacher createdTeacher = teacher;
		return teacherDao.save(createdTeacher);
	}

	@Override
	@Transactional
	public Teacher delete(int id) {
		Teacher deletedTeacher = teacherDao.findOne(id);

		teacherDao.delete(deletedTeacher);
		return deletedTeacher;
	}

	@Override
	@Transactional
	public List<Teacher> findAll() {
		return teacherDao.findAll();
	}

	@Override
	@Transactional
	public Teacher update(Teacher teacher) {
		Teacher updatedTeacher = teacherDao.findOne(teacher.getId());

		updatedTeacher.setFirstName(teacher.getFirstName());
		updatedTeacher.setLastName(teacher.getLastName());
		return updatedTeacher;
	}

	@Override
	@Transactional
	public Teacher findById(int id) {
		return teacherDao.findOne(id);
	}

}
