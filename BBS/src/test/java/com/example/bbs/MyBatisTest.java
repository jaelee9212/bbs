package com.example.bbs;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class MyBatisTest {

	public static final Logger logger = LoggerFactory.getLogger(DataSourceTest.class);
	
	@Inject
	private SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void factoryTest() {
		System.out.println(sqlSessionFactory);
	}
	
	@Test
	public void dataSourceTest() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
	}

}
