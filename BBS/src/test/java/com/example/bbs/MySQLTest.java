package com.example.bbs;

import static org.junit.Assert.assertEquals;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MySQLTest {
	public static final Logger logger = LoggerFactory.getLogger(MySQLTest.class);
	
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://127.0.0.1:3306/bbs";
    private static final String USER = "dani";
    private static final String PWD = "dani";


    //Junit  require public methods, and name should include TEST
    @Test
    public void mySqlConnectTest() throws Exception {
        Class.forName(DRIVER); //retrieve driver
        try (Connection conn = DriverManager.getConnection(URL, USER, PWD)) {
            logger.info("Mysql DB Test : " + conn);
//            assertEquals(conn, "com.mysql.jdbc.JDBC4Connection@5bcea91b");
        } catch (Exception e) {
            e.printStackTrace(); //show error stack
        } // no require to close db.
    }
    // right click on BBS and access to build path ->x configure -> project pace and java compiler change mode from 1.6 to 1.8
   
}