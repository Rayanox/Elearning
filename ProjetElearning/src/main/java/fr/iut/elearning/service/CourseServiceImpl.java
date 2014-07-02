package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.CourseDao;
import fr.iut.elearning.model.Course;

@Service
public class CourseServiceImpl implements CourseService{

	@Resource
	private CourseDao courseDao;
	
	@Override
	@Transactional
	public Course create(Course course) {
		Course createdCourse = course;
		return courseDao.save(createdCourse);
	}

	@Override
	@Transactional
	public Course delete(int id) {
		Course deletedCourse = courseDao.findOne(id);

		courseDao.delete(deletedCourse);
		return deletedCourse;
	}

	@Override
	@Transactional
	public List<Course> findAll() {
		return courseDao.findAll();
	}

	@Override
	@Transactional
	public Course update(Course course) {
		Course updatedCourse = courseDao.findOne(course.getId());

		updatedCourse.setNameCourse(course.getNameCourse());
		return updatedCourse;
	}

	@Override
	@Transactional
	public Course findById(int id) {
		return courseDao.findOne(id);
	}

}
