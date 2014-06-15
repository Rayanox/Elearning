package fr.iut.elearning;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import antlr.collections.List;
import fr.iut.elearning.model.User;
import fr.iut.elearning.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/listUsers", method=RequestMethod.GET)
	public ModelAndView usersListPage() {
		ModelAndView mav = new ModelAndView("usersList");
		java.util.List<User> usersList = userService.findAll();
		mav.addObject("usersList", usersList);
		
		for (User user : usersList) {
			System.out.println("Login = "+user.getLogin());
			System.out.println("Password = "+user.getPassword());
		}
		
		return mav;
	}

}
