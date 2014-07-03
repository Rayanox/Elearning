package fr.iut.elearning.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.iut.elearning.dao.StudentInAssessmentDao;
import fr.iut.elearning.dao.StudentInCourseDao;
import fr.iut.elearning.model.StudentInAssessment;
import fr.iut.elearning.model.StudentInCourse;

@Service
public class StudentInAssessmentServiceImpl implements StudentInAssessmentService {

	@Resource
	private StudentInAssessmentDao assessmentStudentDao;
	
	@Override
	@Transactional
	public StudentInAssessment create(StudentInAssessment assessmentStudent) {
		StudentInAssessment createdCourse = assessmentStudent;
		return assessmentStudentDao.save(assessmentStudent);
	}

	@Override
	@Transactional
	public StudentInAssessment delete(int id) {
		StudentInAssessment deletedCourse = assessmentStudentDao.findOne(id);

		assessmentStudentDao.delete(deletedCourse);
		return deletedCourse;
	}

	@Override
	@Transactional
	public List<StudentInAssessment> findAll() {
		return assessmentStudentDao.findAll();
	}

	@Override
	@Transactional
	public StudentInAssessment update(StudentInAssessment assessmentStudent) {
		StudentInAssessment updatedCourse = assessmentStudentDao.findOne(assessmentStudent.getId());

		updatedCourse.setCourseId(assessmentStudent.getCourseId());
		updatedCourse.setStudentId(assessmentStudent.getStudentId());
		return updatedCourse;
	}

	@Override
	@Transactional
	public StudentInAssessment findById(int id) {
		return assessmentStudentDao.findOne(id);
	}

	@Override
	@Transactional
	public StudentInAssessment findStudentNextCourseById(int studentId) {
		return assessmentStudentDao.findStudentNextCourse(studentId);
	}


}
