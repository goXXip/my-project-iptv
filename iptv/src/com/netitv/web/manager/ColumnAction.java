package com.netitv.web.manager;

import java.io.IOException;
import java.util.List;

import com.netitv.domain.Channel;
import com.netitv.domain.Column;
import com.netitv.service.ChannelService;
import com.netitv.service.ColumnService;
import com.netitv.util.BaseAction;
import com.netitv.util.BeanFactory;

public class ColumnAction  extends BaseAction<Column> {

	private static final long serialVersionUID = -2409389987672016650L;
	
	private Column column;
	private String channelSelect; //频道选择
	
	private String name;  //影片标题
	
	public String list() {
		
		ColumnService columnService = (ColumnService) BeanFactory.getBeanByName("columnService");
		
		this.pageBean = columnService.findByPage(pageSize, curPage,channelSelect,name);
		
    	ChannelService channelService = (ChannelService) BeanFactory.getBeanByName("channelService");
    	List<Channel> channelList = channelService.findAll();
    	request.setAttribute("channelList", channelList);
		
		return "list";
	}
	

	public String addPrepare() {
		
		String channelID = request.getParameter("channelSelect");
		Integer channel_id = (channelID != null && !"".equals(channelID)) ?Integer.parseInt(channelID):0;
		
		this.column = new Column();
		column.setId(0);
		column.setChannelId(channel_id);
		
    	ChannelService channelService = (ChannelService) BeanFactory.getBeanByName("channelService");
    	List<Channel> channelList = channelService.findAll();
    	request.setAttribute("channelList", channelList);
		
		return "addPrepare";
	}

	public String save() throws IOException {

		ColumnService columnService = (ColumnService) BeanFactory.getBeanByName("columnService");
		String channel_id = request.getParameter("channel_id");
		Integer channelID = Integer.valueOf(channel_id);
		column.setChannelId(channelID);
		
		if( column.getId() == 0 ){
			columnService.save(column);
		}else{
			columnService.update(column);
		}
		
		this.channelSelect = channel_id;

		return "saved";
	}
	
	public String modifyPrepare(){
    	
		ColumnService columnService = (ColumnService) BeanFactory.getBeanByName("columnService");
		
    	String idStr = request.getParameter("id");
    	int id = 0 ;
    	
    	if(idStr != null){
    		id = Integer.parseInt(idStr);
    	}
    	
    	this.column = columnService.findById(id);
    	
    	ChannelService channelService = (ChannelService) BeanFactory.getBeanByName("channelService");
    	List<Channel> channelList = channelService.findAll();
    	request.setAttribute("channelList", channelList);
    	
    	return "modifyPrepare";
    }
    
    public String delete(){
    	
    	String idStr = request.getParameter("id");
    	int id = 0 ;
    	if(idStr != null){
    		id = Integer.parseInt(idStr);
    	}
    	
    	ColumnService columnService = (ColumnService) BeanFactory.getBeanByName("columnService");
    	
    	this.column = columnService.findById(id);
    	columnService.delete(id);
    	
    	this.channelSelect = String.valueOf(column.getChannelId());
    	
    	return "deleted";
    }

	public Column getColumn() {
		return column;
	}

	public void setColumn(Column column) {
		this.column = column;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getChannelSelect() {
		return channelSelect;
	}
	
	public void setChannelSelect(String channelSelect) {
		this.channelSelect = channelSelect;
	}
    
}
