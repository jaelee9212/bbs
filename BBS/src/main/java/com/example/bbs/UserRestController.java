package com.example.bbs;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.bbs.models.DashBoardModel;
import com.example.bbs.models.UserModel;
import com.example.bbs.services.DashBoardService;
import com.example.bbs.services.UserService;

@RestController
@RequestMapping("/api")
public class UserRestController {
	
	@Inject
	UserService userService;
	@Inject
	DashBoardService dashBoardService;
	
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
}
