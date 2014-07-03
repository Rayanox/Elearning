package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.CoursePlanningDao;
import fr.iut.elearning.model.CoursePlanning;

@Service
public class CoursePlanningServiceImpl implements CoursePlanningService{

	@Resource
	private CoursePlanningDao coursePlanningDao;
	
	@Override
	@Transactional
	public CoursePlanning create(CoursePlanning coursePlanning) {
		CoursePlanning createdCoursePlanning = coursePlanning;
		return coursePlanningDao.save(createdCoursePlanning);
	}

	@Override
	@Transactional
	public CoursePlanning delete(int id) {
		CoursePlanning deletedCoursePlanning = coursePlanningDao.findOne(id);

		coursePlanningDao.delete(deletedCoursePlanning);
		return deletedCoursePlanning;
	}

	@Override
	@Transactional
	public List<CoursePlanning> findAll() {
		return coursePlanningDao.findAll();
	}

	@Override
	@Transactional
	public CoursePlanning update(CoursePlanning coursePlanning) {
		CoursePlanning updatedCoursePlanning = coursePlanningDao.findOne(coursePlanning.getId());

		updatedCoursePlanning.setCourseId(coursePlanning.getCourseId());
		updatedCoursePlanning.setRoomId(coursePlanning.getRoomId());
		updatedCoursePlanning.setTeacherId(coursePlanning.getTeacherId());
		updatedCoursePlanning.setBeginTime(coursePlanning.getBeginTime());
		updatedCoursePlanning.setEndTime(coursePlanning.getEndTime());
		updatedCoursePlanning.setSessionDate(coursePlanning.getSessionDate());
		return updatedCoursePlanning;
	}

	@Override
	@Transactional
	public CoursePlanning findById(int id) {
		return coursePlanningDao.findOne(id);
	}
	
	@Override
	@Transactional
	public List<CoursePlanning> findTeacherNextCourseById(int teacherId){
		return coursePlanningDao.findTeacherNextCourse(teacherId);
	}

	@Override
	@Transactional
	public List<CoursePlanning> findTeacherNextAssessmentById(int teacherId) {
		return coursePlanningDao.findTeacherNextAssessmentById(teacherId);
	}

}
