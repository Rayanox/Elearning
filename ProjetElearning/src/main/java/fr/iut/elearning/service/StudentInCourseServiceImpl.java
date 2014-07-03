package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.CoursePlanningDao;
import fr.iut.elearning.dao.StudentInCourseDao;
import fr.iut.elearning.model.CoursePlanning;
import fr.iut.elearning.model.StudentInCourse;
@Service
public class StudentInCourseServiceImpl implements StudentInCourseService {

	@Resource
	private StudentInCourseDao courseStudentDao;
	
	@Override
	@Transactional
	public StudentInCourse create(StudentInCourse courseStudent) {
		StudentInCourse createdCourse = courseStudent;
		return courseStudentDao.save(createdCourse);
	}

	@Override
	@Transactional
	public StudentInCourse delete(int id) {
		StudentInCourse deletedCourse = courseStudentDao.findOne(id);

		courseStudentDao.delete(deletedCourse);
		return deletedCourse;
	}

	@Override
	@Transactional
	public List<StudentInCourse> findAll() {
		return courseStudentDao.findAll();
	}

	@Override
	@Transactional
	public StudentInCourse update(StudentInCourse courseStudent) {
		StudentInCourse updatedCourse = courseStudentDao.findOne(courseStudent.getId());

		updatedCourse.setCourseId(courseStudent.getCourseId());
		updatedCourse.setStudentId(courseStudent.getStudentId());
		return updatedCourse;
	}

	@Override
	@Transactional
	public StudentInCourse findById(int id) {
		return courseStudentDao.findOne(id);
	}
	
	@Override
	@Transactional
	public StudentInCourse findStudentNextCourseById(int studentId){
		return courseStudentDao.findStudentNextCourse(studentId);
	}
	
}
