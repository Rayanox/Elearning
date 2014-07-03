package fr.iut.elearning;

import java.sql.Date;
import java.sql.Time;
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

import fr.iut.elearning.model.CoursePlanning;
import fr.iut.elearning.model.SessionBean;
import fr.iut.elearning.model.Status;
import fr.iut.elearning.service.CoursePlanningService;

/**
 * Handles requests for the professor EDT page.
 */
@Controller
public class Control {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private final Status statusController = Status.Inscrit;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@Autowired
    public SessionBean sessionBean;
	
	@Autowired
	private CoursePlanningService coursePlanningService;
	
	@RequestMapping(value = "/Control", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		session.setAttribute("sessionBean", sessionBean);

		if(!Login.VerificationAccesPage(sessionBean, statusController))
			return "NonAutorise";
		
		Status statusSession = sessionBean.getStatus();
		return statusSession.equals(Status.Etudiant) ? "control" : "profExam";
	}

	@RequestMapping(value = "/addAssessment", method = RequestMethod.POST)
	public String AddAssessement(Locale locale, Model model,
			@RequestParam int course, @RequestParam int rooms,
			@RequestParam Time beginTime, @RequestParam Time endTime,
			@RequestParam Date date, @RequestParam String dashBoardAssessment,
			HttpSession session) {

		session.setAttribute("sessionBean", sessionBean);

		CoursePlanning coursePlanning = new CoursePlanning();

		coursePlanning.setTeacherId(sessionBean.getId());
		coursePlanning.setCourseId(course);
		coursePlanning.setRoomId(rooms);
		coursePlanning.setBeginTime(beginTime);
		coursePlanning.setEndTime(endTime);
		coursePlanning.setSessionDate(date);
		coursePlanning.setType("assessment");

		coursePlanningService.create(coursePlanning);

		String dashBoardAssessmentValue = "0";
		if (dashBoardAssessment.equals(dashBoardAssessmentValue)) {
			return "profExam";
		} else {
			return "profDashBoard";
		}
	}

	@RequestMapping(value = "/deleteAssessment", method = RequestMethod.POST)
	public @ResponseBody String deleteAssessment(Locale locale, Model model,
			@RequestParam int assessmentToDelete, HttpServletRequest request,
			HttpSession session) {

		coursePlanningService.delete(assessmentToDelete);

		return "profExam";
	}

}
