package com.example.bbs.services;

import java.util.List;

import com.example.bbs.models.DashBoardModel;

public interface DashBoardService {
	
	public DashBoardModel getUserByDashboardId(int dashboardId);
	
	public List<DashBoardModel> getAllContents();

	public void save(DashBoardModel dashBoardModel);

	public void delete(int id);

	public void increaseCount(int id);

	public void update(DashBoardModel dashBoardModel);

}
