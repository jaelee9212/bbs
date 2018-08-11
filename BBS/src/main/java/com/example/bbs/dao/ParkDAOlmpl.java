package com.example.bbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.example.bbs.models.ParkModel;

@Repository
public class ParkDAOlmpl implements ParkDAO {
	Logger logger = LoggerFactory.getLogger(ParkDAOlmpl.class);
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ParkModel> fetchData() {
		List<ParkModel> parks = sqlSession.selectList("fetchData");
		logger.debug("dao log");
		logger.debug("My id = " + parks.toString());
		return parks;
	}
}
