package com.netitv.service.impl;

import java.util.List;

import com.netitv.dao.AdministratorInfoDao;
import com.netitv.domain.AdministratorInfo;
import com.netitv.service.AdministratorInfoService;

public class AdministratorInfoServiceImpl implements AdministratorInfoService {
	
	private AdministratorInfoDao administratorInfoDao;

	public List<AdministratorInfo> findByName(String username) {
		// TODO Auto-generated method stub
		return administratorInfoDao.findByName(username);
	}

	public void setAdministratorInfoDao(AdministratorInfoDao administratorInfoDao) {
		this.administratorInfoDao = administratorInfoDao;
	}

}
