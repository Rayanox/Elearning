package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.CourseDao;
import fr.iut.elearning.model.CourseModel;

@Service
public class CourseServiceImpl implements CourseService{

	@Resource
	private CourseDao courseDao;
	
	@Override
	@Transactional
	public CourseModel create(CourseModel course) {
		CourseModel createdCourse = course;
		return courseDao.save(createdCourse);
	}

	@Override
	@Transactional
	public CourseModel delete(int id) {
		CourseModel deletedCourse = courseDao.findOne(id);

		courseDao.delete(deletedCourse);
		return deletedCourse;
	}

	@Override
	@Transactional
	public List<CourseModel> findAll() {
		return courseDao.findAll();
	}

	@Override
	@Transactional
	public CourseModel update(CourseModel course) {
		CourseModel updatedCourse = courseDao.findOne(course.getId());

		updatedCourse.setNameCourse(course.getNameCourse());
		return updatedCourse;
	}

	@Override
	@Transactional
	public CourseModel findById(int id) {
		return courseDao.findOne(id);
	}

}
