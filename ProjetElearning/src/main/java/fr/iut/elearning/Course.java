package fr.iut.elearning;

import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import fr.iut.elearning.model.CoursePlanning;
import fr.iut.elearning.model.SessionBean;
import fr.iut.elearning.model.Status;
import fr.iut.elearning.model.Student;
import fr.iut.elearning.model.StudentInAssessment;
import fr.iut.elearning.model.StudentInCourse;
import fr.iut.elearning.service.CoursePlanningService;
import fr.iut.elearning.service.CourseService;
import fr.iut.elearning.service.StudentInAssessmentService;
import fr.iut.elearning.service.StudentInCourseService;
import fr.iut.elearning.service.StudentService;

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

	@Autowired
	private StudentInCourseService studentInCourseService;
	

	@Autowired
	private StudentService studentService;
	
	@Autowired
	private CourseService courseStudentService;

	@RequestMapping(value = "/Course", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);

		session.setAttribute("sessionBean", sessionBean);
		Status statusSession = sessionBean.getStatus();

		if (!Login.VerificationAccesPage(sessionBean, statusController))
			return new ModelAndView("NonAutorise");

		ModelAndView mav = new ModelAndView(statusSession.equals(Status.Etudiant) ? "course" : "profCourse");
		
if(statusSession.equals(Status.Etudiant)) {
			
			java.util.List<fr.iut.elearning.model.Course> courseList = courseStudentService.findAll();
			mav.addObject("courseList", courseList);
			
			Student currentStudent = studentService.findById(sessionBean.getId());
			
			List<StudentInCourse> studentInCourseList = studentInCourseService.findAll();
			
			List<fr.iut.elearning.model.Course> listCourseRegistred = new ArrayList<fr.iut.elearning.model.Course>();
			List<Integer>listcourseIdsInStudentInCourseForStudent = new ArrayList<Integer>();
			
			for (StudentInCourse studentInCourse : studentInCourseList) {
				if(studentInCourse.getStudentId() == currentStudent.getIdUser())
					listcourseIdsInStudentInCourseForStudent.add(studentInCourse.getCourseId());
			}
			
			
			
			for (fr.iut.elearning.model.Course course : courseList) {
				System.out.println(course.getNameCourse());
				if(listcourseIdsInStudentInCourseForStudent.contains(course.getId()))
					listCourseRegistred.add(course);
				
				
			}
			mav.addObject("listCourseRegistred", listCourseRegistred);
			return mav;
		}
		
		
		return mav;
	}

	@RequestMapping(value = "/addCourseStudent", method = RequestMethod.POST)
	public String CourseStudent(Locale locale, Model model,
			@RequestParam int course, HttpSession session) {

		session.setAttribute("sessionBean", sessionBean);

		StudentInCourse courseStudent = new StudentInCourse();

		courseStudent.setStudentId(sessionBean.getId());
		courseStudent.setCourseId(course);
				
		courseService.create(courseStudent);

		return "redirect:Course";
	}

	@RequestMapping(value = "/addEvalStudent", method = RequestMethod.POST)
	public String EvalStudent(Locale locale, Model model,
			@RequestParam int eval, HttpSession session) {

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
			@RequestParam Date date, @RequestParam String dashBoard,
			HttpSession session) {

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

		String dashBoardValue = "0";
		if (dashBoard.equals(dashBoardValue)) {
			return "profCourse";
		} else {
			return "profDashBoard";
		}
	}

	@RequestMapping(value = "/deleteCourse", method = RequestMethod.POST)
	public @ResponseBody String deleteCourse(Locale locale, Model model,
			@RequestParam int courseToDelete, HttpServletRequest request,
			HttpSession session) {

		coursePlanningService.delete(courseToDelete);

		return "profCourse";
	}

}