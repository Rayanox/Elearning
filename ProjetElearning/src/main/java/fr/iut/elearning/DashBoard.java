package fr.iut.elearning;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.util.JSONPObject;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import fr.iut.elearning.model.Course;
import fr.iut.elearning.model.CoursePlanning;
import fr.iut.elearning.model.Room;
import fr.iut.elearning.model.SessionBean;
import fr.iut.elearning.model.Status;
import fr.iut.elearning.model.Subject;
import fr.iut.elearning.model.Teacher;
import fr.iut.elearning.model.User;
import fr.iut.elearning.service.CoursePlanningService;
import fr.iut.elearning.service.CourseService;
import fr.iut.elearning.service.RoomService;
import fr.iut.elearning.service.SubjectService;
import fr.iut.elearning.service.TeacherService;

/**
 * Handles requests for the professor EDT page.
 */
@Controller
public class DashBoard {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);
	private final Status statusController = Status.Inscrit;

	@Autowired
	public SessionBean sessionBean;

	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private CoursePlanningService coursePlanningService;
	
	@Autowired
	private CourseService courseService;
	
	@Autowired
	private RoomService roomService;

	@Autowired
	public DashBoard(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/DashBoard", method = RequestMethod.GET)
	public String home(Locale locale, Model model,
			HttpServletResponse response, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		session.setAttribute("sessionBean", sessionBean);

		if (!Login.VerificationAccesPage(sessionBean, statusController))
			return "NonAutorise";

		Status statusSession = sessionBean.getStatus();
		return statusSession.equals(Status.Etudiant) ? "DashBoard"
				: "profDashBoard";
	}

	@RequestMapping(value = "/getTeacher/{id}", method = RequestMethod.GET)
	public String getTeacherById(@PathVariable int id, Model model) {
		// session.setAttribute("sessionBean", sessionBean);

		// if(!Login.VerificationAccesPage(sessionBean, statusController))
		// return "NonAutorise";

		model.addAttribute("teacherData", teacherService.findById(id));

		return "DashBoard";
	}

	@RequestMapping(value = "/teacherNextCourse", method = RequestMethod.GET)
	public @ResponseBody JSONObject getTeacherNextCourse(Locale locale, Model model,
			HttpServletResponse response, HttpSession session) {
				
		session.setAttribute("sessionBean", sessionBean);

		List<CoursePlanning> coursePlanning = coursePlanningService.findTeacherNextCourseById(sessionBean.getId());
		
		DateFormat df = new SimpleDateFormat("dd/MM/yyy");
		
		JSONObject jobject = new JSONObject();
		jobject.put("coursePlanning", coursePlanning.get(0));
		jobject.put("date", df.format(coursePlanning.get(0).getSessionDate()));
		return jobject;
	}
	
	@RequestMapping(value = "/teacherNextAssessment", method = RequestMethod.GET)
	public @ResponseBody JSONObject getTeacherNextAssessment(Locale locale, Model model,
			HttpServletResponse response, HttpSession session) {
				
		session.setAttribute("sessionBean", sessionBean);

		List<CoursePlanning> coursePlanning = coursePlanningService.findTeacherNextAssessmentById(sessionBean.getId());
		
		DateFormat df = new SimpleDateFormat("dd/MM/yyy");
		
		JSONObject jobject = new JSONObject();
		jobject.put("coursePlanning", coursePlanning.get(0));
		jobject.put("date", df.format(coursePlanning.get(0).getSessionDate()));
		return jobject;
	}
	
	@RequestMapping(value = "/getCourse", method = RequestMethod.GET)
	public @ResponseBody List<Course> getSubject(Locale locale, Model model, HttpSession session){
		
		session.setAttribute("sessionBean", sessionBean);
		
		List<Course> course = courseService.findAll();
		
		return course;
	}
	
	@RequestMapping(value = "/getRooms", method = RequestMethod.GET)
	public @ResponseBody List<Room> getRooms(Locale locale, Model model, HttpSession session){
		session.setAttribute("session", sessionBean);
		List<Room> rooms = roomService.findAll();
		return rooms;
	}
	
	@RequestMapping(value = "/getTeacherCourses", method = RequestMethod.GET)
	public @ResponseBody JSONObject getTeacherCourses(Locale locale, Model model, HttpSession session){
		
		session.setAttribute("sessionBean", sessionBean);
		
		List<CoursePlanning> coursesPlanning = coursePlanningService.findTeacherNextCourseById(sessionBean.getId());
		
		JSONObject jsonObject = new JSONObject();
		
		DateFormat df = new SimpleDateFormat("dd/MM/yyy");
		
		for (int i = 0; i < coursesPlanning.size(); i++) {
			Course course = courseService.findById(coursesPlanning.get(i).getCourseId());
			Room room = roomService.findById(coursesPlanning.get(i).getRoomId());
			List<Object> listObj = new ArrayList<Object>();
			listObj.add(course);
			listObj.add(room);
			listObj.add(coursesPlanning.get(i));
			listObj.add(df.format(coursesPlanning.get(i).getSessionDate()));
			jsonObject.put(i, listObj);
		}
		
		return jsonObject;
	}
	
	@RequestMapping(value = "/getTeacherAssessment", method = RequestMethod.GET)
	public @ResponseBody JSONObject getTeacherAssessment(Locale locale, Model model, HttpSession session){
		
		session.setAttribute("sessionBean", sessionBean);
		
		List<CoursePlanning> coursesPlanning = coursePlanningService.findTeacherNextAssessmentById(sessionBean.getId());
		
		JSONObject jsonObject = new JSONObject();
		
		DateFormat df = new SimpleDateFormat("dd/MM/yyy");
		
		for (int i = 0; i < coursesPlanning.size(); i++) {
			Course course = courseService.findById(coursesPlanning.get(i).getCourseId());
			Room room = roomService.findById(coursesPlanning.get(i).getRoomId());
			List<Object> listObj = new ArrayList<Object>();
			listObj.add(course);
			listObj.add(room);
			listObj.add(coursesPlanning.get(i));
			listObj.add(df.format(coursesPlanning.get(i).getSessionDate()));
			jsonObject.put(i, listObj);
		}
		
		return jsonObject;
	}
}