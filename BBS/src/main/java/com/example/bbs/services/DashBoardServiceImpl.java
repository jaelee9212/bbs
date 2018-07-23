package com.example.bbs.services;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.example.bbs.dao.DashBoardDAO;
import com.example.bbs.models.DashBoardModel;

@Service
public class DashBoardServiceImpl implements DashBoardService {
	@Inject
	DashBoardDAO dashBoardDAO;
	
	Logger logger = LoggerFactory.getLogger(DashBoardServiceImpl.class);
	
	@Override
	public DashBoardModel getUserByDashboardId(int id) {
		DashBoardModel user =  dashBoardDAO.findUserById(id);
		return user;
	}

	@Override
	public List<DashBoardModel> getAllContents() {
		logger.info("start getAllContents in Service");
		List<DashBoardModel> dashboardContent =  dashBoardDAO.getAllContents();
		logger.info("mylog");
		logger.info(dashboardContent.toString());
		return dashboardContent;
	}

	@Override
	public void save(DashBoardModel dashBoardModel) {
		logger.info("Dashboardmodel data:~~~~~~~~~~~");
		logger.info(dashBoardModel.toString());
		dashBoardDAO.save(dashBoardModel);
	}

	@Override
	public void increaseCount(int id) {
		dashBoardDAO.increaseCount(id);
	}

	@Override
	public void delete(int id) {
		dashBoardDAO.delete(id);
	}

	@Override
	public void update(DashBoardModel dashBoardModel) {
		dashBoardDAO.update(dashBoardModel);
	}


}
