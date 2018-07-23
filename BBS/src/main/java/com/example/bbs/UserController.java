package com.example.bbs;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.bbs.models.UserModel;
import com.example.bbs.services.UserService;
import com.example.bbs.sessionUtil.SessionUtil;

@Controller
public class UserController {
	
	@Inject
	UserService userService;

	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
//	
//	@GetMapping("/profile")
//	public ModelAndView profile(ModelAndView model, HttpSession session) {
//		UserModel user = (UserModel) session.getAttribute(SessionUtil.SESSION_KEY);
//		model.setViewName("profile");
//		model.addObject("user", user);
//		return model;
//	}
	// return object as a model.
	
	@GetMapping("/updateProfile")
	public String updateProfile(Model model, HttpSession session) {
		UserModel user = (UserModel) session.getAttribute(SessionUtil.SESSION_KEY);
		UserModel loginUser = userService.getUser(user.getUsername());
		model.addAttribute("user", loginUser);
		return "user/profile";
	}
	
	@PostMapping("/updateProfile/{aboutMe}")
	public String updateProfile(@PathVariable String aboutMe, UserModel userModel, HttpSession session, Model model) {
		if (!SessionUtil.isLoginUser(session)) {
//			UserModel loginUser = userService.findUser(userModel);
//	        session.setAttribute(SessionUtil.SESSION_KEY, loginUser);
	        userModel.setAboutMe(aboutMe);
	        logger.info("userInfo" + userModel.toString());
	        userService.updateUser(userModel);
	        session.setAttribute(SessionUtil.SESSION_KEY, userModel);
	        return "redirect:/";
		}
        return "redirect:/";
	}
	
	@GetMapping("/lockScreen")
	public String lockScreen(HttpSession session) {
		if(!SessionUtil.isLoginUser(session)) {
			return "user/loginForm";
		}
		return "user/lockScreen";
	}
	@GetMapping("/login")
	public String login() {
		logger.info("starting login()");
		return "user/loginForm";
	}
	
	@PostMapping("/login")
	public String loginProcess(UserModel userModel, HttpSession session, Model model) {
		UserModel loginUser = userService.findUser(userModel);
		if (loginUser != null) {
			logger.info(userModel.getPwd());
//			userService.findUser(userId);
//			if (!SessionUtil.isLoginUser(session)) {
//	            return "redirect:/login";
//	        }
	        session.setAttribute(SessionUtil.SESSION_KEY, loginUser);
	        model.addAttribute("user", loginUser);
	        return "redirect:/";
		}
        return "redirect:/";
	}
	//logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute(SessionUtil.SESSION_KEY);//null
        return "redirect:/";
    }
	// register
	@GetMapping("/register")
	public String createAccount() {
		return "user/createProfile";
	}
	
	@PostMapping("/register")
	public String saveAccount() {
//		UserService.createUser(UserModel userModel)
		return "redirect:/";
	}

}
