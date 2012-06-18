package com.netitv.service.impl;

import java.util.List;

import com.netitv.dao.ChannelDao;
import com.netitv.domain.Channel;
import com.netitv.service.ChannelService;

public class ChannelServiceImpl implements ChannelService {
	
	private ChannelDao channelDao;

	public int delete(int id) {
		// TODO Auto-generated method stub
		return channelDao.delete(id);
	}

	public Channel findById(int id) {
		// TODO Auto-generated method stub
		return channelDao.findById(id);
	}

	public int save(Channel channel) {
		// TODO Auto-generated method stub
		return channelDao.save(channel);
	}

	public int update(Channel channel) {
		// TODO Auto-generated method stub
		return channelDao.update(channel);
	}

	public void setChannelDao(ChannelDao channelDao) {
		this.channelDao = channelDao;
	}

	public List<Channel> findAll() {
		// TODO Auto-generated method stub
		return channelDao.findAll();
	}

}
