package com.netitv.service;

import java.util.List;

import com.netitv.domain.AdministratorInfo;

public interface AdministratorInfoService {
	
	List<AdministratorInfo> findByName(String username);

}
