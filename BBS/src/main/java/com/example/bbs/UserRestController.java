package com.example.bbs;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.bbs.models.DashBoardModel;
import com.example.bbs.models.ParkModel;
import com.example.bbs.models.UserModel;
import com.example.bbs.services.DashBoardService;
import com.example.bbs.services.ParkService;
import com.example.bbs.services.UserService;

@RestController
@RequestMapping("/api")
public class UserRestController {
	private static final Logger logger = LoggerFactory.getLogger(UserRestController.class);
	@Inject
	UserService userService;
	@Inject
	DashBoardService dashBoardService;
	@Inject 
	ParkService parkService;
	
	@GetMapping("/getUser")
	public UserModel getUser() {
		return userService.getUser("evan");
	}
	
	@GetMapping("/getDashboard")
	public DashBoardModel getDashboard() {
		return dashBoardService.getUserByDashboardId(1);
	}
	//controller�� default�� view�� ������ void���� "/..."�� �� �ٽú�����.
	//String�̳� object�� return�Ұ�� jsp��� �� ���� ��Ű�����
	
	@GetMapping("/fetchData")
	public List<ParkModel> fetchData(Model model) {
		List<ParkModel> parkModel = parkService.fetchData();
		System.out.println("test data: " + parkModel);
		model.addAttribute("park", parkModel);
		return parkModel;
	}
}
