package com.example.bbs.services;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.bbs.models.DashBoardModel;
import com.example.bbs.models.UserModel;

public interface UserService {
	
	public UserModel findUser(UserModel userModel);
	
	public UserModel getUser(String username);
	
	public boolean pwdCheck(String pwd, HttpSession session);

	public void saveUser(UserModel userModel);

	public void updateUser(UserModel loginUser);
}
