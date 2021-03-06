package fr.iut.elearning;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.iut.elearning.model.SessionBean;
import fr.iut.elearning.model.Status;

@Controller
public class Deconnexion {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private final Status statusController = Status.All;
		/**
		 * Simply selects the home view to render by returning its name.
		 */
		
		@Autowired
		public SessionBean sessionBean;

		@RequestMapping(value = "/Deconnexion", method = RequestMethod.GET)
		public String home(Locale locale, Model model, HttpSession session) {
			logger.info("Welcome home! The client locale is {}.", locale);
					
			session.setAttribute("sessionBean", sessionBean);

			if(!Login.VerificationAccesPage(sessionBean, statusController))
				return "NonAutorise";
			sessionBean.setStatus(Status.Visiteur);
			sessionBean.setLogin("");
			
			return "home";
		}
		
	
}
