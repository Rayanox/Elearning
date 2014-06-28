package fr.iut.elearning;

import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.iut.elearning.model.SessionBean;
import fr.iut.elearning.model.Status;
import fr.iut.elearning.model.Teacher;
import fr.iut.elearning.service.TeacherService;

/**
 * Handles requests for the professor EDT page.
 */
@Controller
public class DashBoard {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private final Status statusController = Status.Inscrit;
	
	@Autowired
    public SessionBean sessionBean;
	
	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	public DashBoard(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/DashBoard", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletResponse response, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		session.setAttribute("sessionBean", sessionBean);

		if(!Login.VerificationAccesPage(sessionBean, statusController))
			return "NonAutorise";
		
		
		Status statusSession = sessionBean.getStatus();
		return statusSession.equals(Status.Etudiant) ? "DashBoard" : "profDashBoard";
	}

	@RequestMapping(value = "/getTeacher/{id}", method = RequestMethod.GET)
	public String getTeacherById(@PathVariable int id, Model model) {
//		session.setAttribute("sessionBean", sessionBean);
		
//		if(!Login.VerificationAccesPage(sessionBean, statusController))
//			return "NonAutorise";
		
		model.addAttribute("teacherData", teacherService.findById(id));
		
		return "DashBoard";
	}		
}