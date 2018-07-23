package com.example.bbs.dao;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.bbs.models.DashBoardModel;
import com.example.bbs.models.UserModel;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Inject
	SqlSession sqlSession;

	@Override
	public UserModel findUser(String username) {
		return sqlSession.selectOne("findUser", username);
	}
	

	
	@Override
	public void createUser(UserModel userModel) {
		sqlSession.insert("createUser", userModel);

	}

	@Override
	public void updateUser(UserModel loginUser) {
		// TODO Auto-generated method stub
		sqlSession.update("updateUser", loginUser);
	}





}
