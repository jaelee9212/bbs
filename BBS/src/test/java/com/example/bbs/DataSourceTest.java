package com.example.bbs;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

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
public class DataSourceTest {
	
	public static final Logger logger = LoggerFactory.getLogger(DataSourceTest.class);
	
	@Inject
	private DataSource dataSource;
	
	@Test
	public void dataSourceTest() throws Exception {
		try (Connection conn = dataSource.getConnection()) {
            logger.info("Mysql DB Test : " + conn);
        } catch (Exception e) {
            e.printStackTrace(); //show error stack
        }
	}
}
