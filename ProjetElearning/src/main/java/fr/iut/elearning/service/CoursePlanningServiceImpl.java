package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.CoursePlanningDao;
import fr.iut.elearning.model.CoursePlanningModel;

@Service
public class CoursePlanningServiceImpl implements CoursePlanningService{

	@Resource
	private CoursePlanningDao coursePlanningDao;
	
	@Override
	@Transactional
	public CoursePlanningModel create(CoursePlanningModel coursePlanning) {
		CoursePlanningModel createdCoursePlanning = coursePlanning;
		return coursePlanningDao.save(createdCoursePlanning);
	}

	@Override
	@Transactional
	public CoursePlanningModel delete(int id) {
		CoursePlanningModel deletedCoursePlanning = coursePlanningDao.findOne(id);

		coursePlanningDao.delete(deletedCoursePlanning);
		return deletedCoursePlanning;
	}

	@Override
	@Transactional
	public List<CoursePlanningModel> findAll() {
		return coursePlanningDao.findAll();
	}

	@Override
	@Transactional
	public CoursePlanningModel update(CoursePlanningModel coursePlanning) {
		CoursePlanningModel updatedCoursePlanning = coursePlanningDao.findOne(coursePlanning.getId());

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
	public CoursePlanningModel findById(int id) {
		return coursePlanningDao.findOne(id);
	}

}
