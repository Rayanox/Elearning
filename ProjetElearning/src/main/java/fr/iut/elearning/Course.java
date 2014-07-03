package fr.iut.elearning;

import java.sql.Date;
import java.sql.Time;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.iut.elearning.model.CoursePlanning;
import fr.iut.elearning.model.SessionBean;
import fr.iut.elearning.model.Status;
import fr.iut.elearning.model.StudentInAssessment;
import fr.iut.elearning.model.StudentInCourse;
import fr.iut.elearning.service.CoursePlanningService;
import fr.iut.elearning.service.StudentInAssessmentService;
import fr.iut.elearning.service.StudentInCourseService;

/**
 * Handles requests for the professor EDT page.
 */
@Controller
public class Course {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);
	private final Status statusController = Status.Inscrit;
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@Autowired
	public SessionBean sessionBean;
	
	@Autowired
	private CoursePlanningService coursePlanningService;
	@Autowired
	private StudentInCourseService courseService;
	@Autowired
	private StudentInAssessmentService assessmentService;

	@RequestMapping(value = "/Course", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);

		session.setAttribute("sessionBean", sessionBean);

		if (!Login.VerificationAccesPage(sessionBean, statusController))
			return "NonAutorise";

		Status statusSession = sessionBean.getStatus();
		return statusSession.equals(Status.Etudiant) ? "course" : "profCourse";
	}

	@RequestMapping(value = "/addCourseStudent", method = RequestMethod.POST)
	public String CourseStudent(Locale locale, Model model,
			@RequestParam int course,HttpSession session) {

		session.setAttribute("sessionBean", sessionBean);
		
		StudentInCourse courseStudent = new StudentInCourse();
		
		courseStudent.setStudentId(sessionBean.getId());
		courseStudent.setCourseId(course);
		
		
		courseService.create(courseStudent);
		
		return "course";
	}
	
	@RequestMapping(value = "/addEvalStudent", method = RequestMethod.POST)
	public String EvalStudent(Locale locale, Model model,
			@RequestParam int eval,HttpSession session) {

		session.setAttribute("sessionBean", sessionBean);
		
		StudentInAssessment assessmentStudent = new StudentInAssessment();
		
		assessmentStudent.setStudentId(sessionBean.getId());
		assessmentStudent.setCourseId(eval);
		
		
		assessmentService.create(assessmentStudent);
		
		return "course";
	}
	
	@RequestMapping(value = "/addCourse", method = RequestMethod.POST)
	public String addCourse(Locale locale, Model model,
			@RequestParam int course, @RequestParam int rooms,
			@RequestParam Time beginTime, @RequestParam Time endTime,
			@RequestParam Date date, HttpSession session) {

		session.setAttribute("sessionBean", sessionBean);
		
		CoursePlanning coursePlanning = new CoursePlanning(); 
		
		coursePlanning.setTeacherId(sessionBean.getId());
		coursePlanning.setCourseId(course);
		coursePlanning.setRoomId(rooms);
		coursePlanning.setBeginTime(beginTime);
		coursePlanning.setEndTime(endTime);
		coursePlanning.setSessionDate(date);
		coursePlanning.setType("course");
		
		coursePlanningService.create(coursePlanning);
		
		return "profDashBoard";
	}
	
	@RequestMapping(value = "/addAssessment", method = RequestMethod.POST)
	public String AddAssessement (Locale locale, Model model,
			@RequestParam int course, @RequestParam int rooms,
			@RequestParam Time beginTime, @RequestParam Time endTime,
			@RequestParam Date date, HttpSession session){
		
		session.setAttribute("sessionBean", sessionBean);
		
		CoursePlanning coursePlanning = new CoursePlanning(); 
		
		coursePlanning.setTeacherId(sessionBean.getId());
		coursePlanning.setCourseId(course);
		coursePlanning.setRoomId(rooms);
		coursePlanning.setBeginTime(beginTime);
		coursePlanning.setEndTime(endTime);
		coursePlanning.setSessionDate(date);
		coursePlanning.setType("assessement");
		
		coursePlanningService.create(coursePlanning);
		
		return "profDashBoard";
	}

}