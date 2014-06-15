package fr.iut.elearning;

import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.iut.elearning.model.SessionBean;
import fr.iut.elearning.model.Status;
import fr.iut.elearning.model.User;
import fr.iut.elearning.service.UserService;

/**
 * Handles requests for the professor EDT page.
 */
@Controller
public class Login {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);
	private final Status statusController = Status.Visiteur;
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@Autowired
	public SessionBean sessionBean;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String home(Locale locale, Model model,
			HttpServletResponse response, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);

		session.setAttribute("sessionBean", sessionBean);

		if (!Login.VerificationAccesPage(sessionBean, statusController))
			return "NonAutorise";

		response.addCookie(new Cookie("idSession", ""));

		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String homePost(Locale locale, Model model,
			@RequestParam String username, @RequestParam String password,
			HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);

		session.setAttribute("sessionBean", sessionBean);

		if (!Login.VerificationAccesPage(sessionBean, statusController))
			return "NonAutorise";

		ModelAndView mav = new ModelAndView("usersList");
		java.util.List<User> usersList = userService.findAll();
		mav.addObject("usersList", usersList);

		boolean connected = false;
		for (User user : usersList) {
			System.out.println("Login = " + user.getLogin());
			System.out.println("Password = " + user.getPassword());
			if (user.getLogin().equals(username)) {
				if (user.getPassword().equals(password)) {
					connected = true;
					sessionBean.setStatus(extractStatus(user.getStatus()));
				}

				break;
			}
		}

		if (connected) {
			return "DashBoard";
		}else {
			return "login";
		}
		
	}

	private Status extractStatus(int status) {
		switch(status) {
			case 0:
				return Status.Admin;
			case 1: 
				return Status.Etudiant;				
			case 2: 
				return Status.Professeur;
			default:
				return Status.Visiteur;
		}
	}

	public static boolean VerificationAccesPage(SessionBean s,
			Status statusController) {
		
		System.out.println("Statut du bean = "+s.getStatus()+
				"Statut du controller = "+statusController);
		
		
		
		if (s.getStatus().equals(statusController)
				|| (statusController.equals(Status.Inscrit) && (s.getStatus().equals(Status.Etudiant) || s.getStatus().equals(Status.Professeur)))
				|| s.getStatus().equals(Status.Admin)
				|| statusController.equals(Status.All)) {
			return true;
		} else {
			return false;
		}
	}

}