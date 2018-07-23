package com.example.bbs.dao;


import java.util.List;

import com.example.bbs.models.DashBoardModel;
import com.example.bbs.models.UserModel;

public interface UserDAO {
	
	public UserModel findUser(String username); 
	
	public void createUser(UserModel userModel);

	public void updateUser(UserModel loginUser);

	
	
}
