package com.netitv.dao;

import java.util.List;

import com.netitv.domain.Channel;

public interface ChannelDao {

	public Channel findById(int id);
	
	public int save(Channel channel);

	public int delete(int id);

	public int update(Channel channel);

	public List<Channel> findAll();
}
