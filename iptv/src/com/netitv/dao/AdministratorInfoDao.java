package com.netitv.dao;

import java.util.List;

import com.netitv.domain.AdministratorInfo;

public interface AdministratorInfoDao {
	
	List<AdministratorInfo> findByName(String username);

}
