package com.example.bbs;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.bbs.models.DashBoardModel;
import com.example.bbs.models.UserModel;
import com.example.bbs.services.DashBoardService;
import com.example.bbs.sessionUtil.SessionUtil;

@Controller
public class DashBoardController {

	private static final Logger logger = LoggerFactory.getLogger(DashBoardController.class);
	
	@Inject
	DashBoardService dashBoardService;
	
	@GetMapping("/")
	public String mainDashBoard(Model model, HttpSession session) {
		if(!SessionUtil.isLoginUser(session)) {
			return "user/loginForm";
		}
		List<DashBoardModel> dashboard = dashBoardService.getAllContents();
		model.addAttribute("dashboard", dashboard);
		return "home";
	}
	
	@GetMapping("/api/dashboard")
	@ResponseBody
	public List<DashBoardModel> mainDashBoardData(Model model) {
		List<DashBoardModel> dashboard = dashBoardService.getAllContents();
		model.addAttribute("dashboard", dashboard);
		return dashboard;
	}
	//allows to fetch data to a react application. 
	
	@GetMapping("/createDashboard")
	public String createDashBoard(Model model, HttpSession session) {
		if(!SessionUtil.isLoginUser(session)) {
			return "user/loginForm";
		}
		UserModel user = (UserModel) session.getAttribute(SessionUtil.SESSION_KEY);
		model.addAttribute("user", user);
		return "dashboard/createForm";
	}
	
	@PostMapping("/createDashboard")
	public String createQuery(DashBoardModel dashBoardModel, HttpSession session) {
		if(!SessionUtil.isLoginUser(session)) {
			return "user/loginForm";
		}
		UserModel user = (UserModel) session.getAttribute(SessionUtil.SESSION_KEY);
		dashBoardModel.setUserId(user.getUserId());
		dashBoardService.save(dashBoardModel);
		return "redirect:/";
	}
	
	//increase count
	@GetMapping("/recommendedContent/{id}")
	public String recommendedContent(@PathVariable int id, HttpSession session) {
	
//		dashBoardModel.setCount(dashBoardModel.getCount() + 1);
		//db upDATE
		dashBoardService.increaseCount(id);
		return "redirect:/";
	}
	
	//delete content
    @GetMapping("/deleteDashBoard/{id}/{userId}")
    public String delete(@PathVariable int id, @PathVariable int userId, UserModel userModel, HttpSession session) {
        if(!SessionUtil.isLoginUser(session)) {
            return "redirect:/users/login";
        }
        if(!SessionUtil.isValidUser(session, userId)) {
        	JOptionPane.showMessageDialog(null, "You are not allowed to delete this post!");
        	return "redirect:/";
        }
        dashBoardService.delete(id);
        return "redirect:/";
    }
    
   //update
	@GetMapping("/updateDashBoard/{id}/{userId}")
	public String updateDashBoard(@PathVariable int id, @PathVariable int userId, Model model,HttpSession session) {
        if(!SessionUtil.isLoginUser(session)) {
            return "redirect:/users/login";
        }
        if(!SessionUtil.isValidUser(session, userId)) {
        	JOptionPane.showMessageDialog(null, "You are not allowed to modify this post!");
        	return "redirect:/";
        }
		DashBoardModel dashBoard = dashBoardService.getUserByDashboardId(id);
		model.addAttribute("dashboard", dashBoard);
		return "dashboard/updateForm";
	}
	
	@PostMapping("/updateDashBoard/{content}")
	public String updateContent(@PathVariable String content, DashBoardModel dashBoardModel, HttpSession session) {
        if(!SessionUtil.isLoginUser(session)) {
            return "redirect:/users/login";
        }
		dashBoardModel.setContent(content);
		logger.info(content.toString());
		dashBoardService.update(dashBoardModel);
		return "redirect:/";
	}
	
	//reply
	@GetMapping("/reply/{id}")
	public String replyMain(@PathVariable int id, Model model, HttpSession session) {
		if(!SessionUtil.isLoginUser(session)) {
			return "user/loginForm";
		}
		DashBoardModel dashBoard = dashBoardService.getUserByDashboardId(id);
		model.addAttribute("dashboard", dashBoard);
		return "dashboard/replyMain";
	}
}
