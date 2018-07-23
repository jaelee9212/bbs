package com.example.bbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.example.bbs.models.DashBoardModel;

@Repository
public class DashBoardDAOImpl implements DashBoardDAO{
	
	Logger logger = LoggerFactory.getLogger(DashBoardDAOImpl.class);
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public DashBoardModel findUserById(int dashboardId) {
		return sqlSession.selectOne("findUserById", dashboardId);
	}
	
	@Override
	public List<DashBoardModel> getAllContents() {
		List<DashBoardModel> models = sqlSession.selectList("getAllContents");
		return models;
	}

	@Override
	public void save(DashBoardModel dashBoardModel) {
		sqlSession.insert("newContent", dashBoardModel);
	}

	@Override
	public void increaseCount(int id) {
		sqlSession.update("increaseCount", id);
	}

	@Override
	public void delete(int id) {
		logger.info("My id = " + id);
		sqlSession.delete("deleteContent", id);
	}

	@Override
	public void update(DashBoardModel dashBoardModel) {
		sqlSession.update("updateContent", dashBoardModel);
		
	}
}
