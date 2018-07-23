package com.example.bbs.dao;

import java.util.List;

import com.example.bbs.models.DashBoardModel;

public interface DashBoardDAO {

	public DashBoardModel findUserById(int id); 
	
	public List<DashBoardModel> getAllContents();

	public void save(DashBoardModel dashDoardModel);

	public void increaseCount(int id);

	public void delete(int id); 
	
	public void update(DashBoardModel dashBoardModel);
}
