package com.netitv.web.manager;

import java.io.IOException;
import java.util.List;

import com.netitv.domain.Channel;
import com.netitv.service.ChannelService;
import com.netitv.util.BaseAction;
import com.netitv.util.BeanFactory;

public class ChannelAction  extends BaseAction<Channel> {

	private static final long serialVersionUID = -1446874222653344887L;
	
	private Channel channel;
	
	public String list() throws IOException {

		ChannelService channelService = (ChannelService) BeanFactory.getBeanByName("channelService");
		
    	List<Channel> channelList = channelService.findAll();
    	
    	request.setAttribute("channelList", channelList);
    	
    	return "list";
	}
	
	public String addPrepare() {
		
		return "addPrepare";
	}
	
	public String save() throws IOException {

		ChannelService channelService = (ChannelService) BeanFactory.getBeanByName("channelService");
		
		if( channel.getId() == 0 ){
			channelService.save(channel);
		}else{
			channelService.update(channel);
		}

		return "saved";
	}
	
	public String modifyPrepare(){
    	
		ChannelService channelService = (ChannelService) BeanFactory.getBeanByName("channelService");
		
    	String idStr = request.getParameter("id");
    	int id = 0 ;
    	
    	if(idStr != null){
    		id = Integer.parseInt(idStr);
    	}
    	
    	this.channel = channelService.findById(id);
    	
    	return "modifyPrepare";
    }
    
    public String delete(){
    	
    	String idStr = request.getParameter("id");
    	int id = 0 ;
    	if(idStr != null){
    		id = Integer.parseInt(idStr);
    	}
    	
    	ChannelService channelService = (ChannelService) BeanFactory.getBeanByName("channelService");
    	
    	channelService.delete(id);
    	
    	return "deleted";
    }

	public Channel getChannel() {
		return channel;
	}

	public void setChannel(Channel channel) {
		this.channel = channel;
	}
}
