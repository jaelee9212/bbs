package com.example.bbs;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.example.bbs.dao.UserDAO;
import com.example.bbs.models.UserModel;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class UserDAOImplTest {

	@Inject
	private UserDAO userDAO;
	
	@Test
	public void findUserTest() throws Exception{
		System.out.println("**********************");
		UserModel user = userDAO.findUser(1);
		System.out.println(user);
	}
	
}
