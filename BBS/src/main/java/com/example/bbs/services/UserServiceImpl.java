package com.example.bbs.services;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.example.bbs.dao.UserDAO;
import com.example.bbs.models.DashBoardModel;
import com.example.bbs.models.UserModel;
import com.example.bbs.sessionUtil.SessionUtil;

@Service
public class UserServiceImpl implements UserService{
	
	@Inject
	UserDAO userDAO;

	Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Override
	public boolean pwdCheck(String pwd, HttpSession session) {
		UserModel user = (UserModel)session.getAttribute("user");
		if(!user.isMatchPassword(pwd)) {
			return false;
		}
		return true;
	}

	@Override
	public UserModel findUser(UserModel userModel) {
		logger.info("before DAO : " + userModel);
		UserModel user = userDAO.findUser(userModel.getUsername());
		logger.info("after DAO : " + user);
		if (user != null) {
			if(!user.getPwd().equals(userModel.getPwd())) {
				user = null;
			}
		}
		return user;
	}

	@Override
	public UserModel getUser(String username) {
		UserModel user =  userDAO.findUser(username);
		return user;
	}

	@Override
	public void saveUser(UserModel userModel) {
		userDAO.createUser(userModel);
		
	}

	@Override
	public void updateUser(UserModel loginUser) {
		userDAO.updateUser(loginUser);
		
	}




}
