package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.StudentDao;
import fr.iut.elearning.model.Student;

@Service
public class StudentServiceImpl implements StudentService{

	@Resource
	private StudentDao studentDao;
	
	@Override
	@Transactional
	public Student create(Student student) {
		Student createdStudent = student;
		return studentDao.save(createdStudent);
	}

	@Override
	@Transactional
	public Student delete(int id) {
		Student deletedStudent = studentDao.findOne(id);

		studentDao.delete(deletedStudent);
		return deletedStudent;
	}

	@Override
	@Transactional
	public List<Student> findAll() {
		return studentDao.findAll();
	}

	@Override
	@Transactional
	public Student update(Student student) {
		Student updatedStudent= studentDao.findOne(student.getId());

		updatedStudent.setFirstName(student.getFirstName());
		updatedStudent.setLastName(student.getLastName());
		return updatedStudent;
	}

	@Override
	@Transactional
	public Student findById(int id) {
		return studentDao.findOne(id);
	}

}
