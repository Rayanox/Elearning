package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.StudentDao;
import fr.iut.elearning.model.StudentModel;

@Service
public class StudentServiceImpl implements StudentService{

	@Resource
	private StudentDao studentDao;
	
	@Override
	@Transactional
	public StudentModel create(StudentModel student) {
		StudentModel createdStudent = student;
		return studentDao.save(createdStudent);
	}

	@Override
	@Transactional
	public StudentModel delete(int id) {
		StudentModel deletedStudent = studentDao.findOne(id);

		studentDao.delete(deletedStudent);
		return deletedStudent;
	}

	@Override
	@Transactional
	public List<StudentModel> findAll() {
		return studentDao.findAll();
	}

	@Override
	@Transactional
	public StudentModel update(StudentModel student) {
		StudentModel updatedStudent= studentDao.findOne(student.getId());

		updatedStudent.setFirstName(student.getFirstName());
		updatedStudent.setLastName(student.getLastName());
		return updatedStudent;
	}

	@Override
	@Transactional
	public StudentModel findById(int id) {
		return studentDao.findOne(id);
	}

}
