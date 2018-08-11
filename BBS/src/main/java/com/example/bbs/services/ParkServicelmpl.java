package com.example.bbs.services;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.example.bbs.dao.DashBoardDAO;
import com.example.bbs.dao.ParkDAO;
import com.example.bbs.models.DashBoardModel;
import com.example.bbs.models.ParkModel;

@Service
public class ParkServicelmpl implements ParkService {
	@Inject
	ParkDAO parkDAO;
	
	Logger logger = LoggerFactory.getLogger(ParkServicelmpl.class);
	
	public List<ParkModel> fetchData(){
		List<ParkModel> parkModel = parkDAO.fetchData();
		logger.debug("service log");
		logger.debug(parkModel.toString());
		return parkModel;
	};
}
