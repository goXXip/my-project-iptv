package com.netitv.web.manager;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;

import net.sf.json.JSONArray;

import org.apache.log4j.Logger;

import com.netitv.dao.ChannelDao;
import com.netitv.dao.ColumnDao;
import com.netitv.dao.ImageInfoDao;
import com.netitv.domain.Asset;
import com.netitv.domain.Channel;
import com.netitv.domain.Column;
import com.netitv.domain.Film;
import com.netitv.domain.ImageInfo;
import com.netitv.service.AssetService;
import com.netitv.service.ChannelService;
import com.netitv.service.FilmService;
import com.netitv.util.BaseAction;
import com.netitv.util.BeanFactory;
import com.netitv.util.CommonsUtil;

/**
 * 你只需要在action中定义File file;String fileContentType;String fileFileName
 * @Todo:TODO
 * @author: zhuqh
 * @CreateTime:2011-11-10 下午05:59:42
 */
public class FilmAction  extends BaseAction<Film>{
	
	private static final long serialVersionUID = -2058552092655034339L;
	
	private static Logger logger = Logger.getLogger(FilmAction.class);
	
	private Film film;
	
	private File smallImg;
	private File bigImg;
	private File smallImg_hd;
	private File bigImg_hd;
	private String smallImgFileName;    //文件名(小图)  
	private String bigImgFileName;    //文件名 (大图) 
	private String smallImg_hdFileName;    //文件名(高清小图)  
	private String bigImg_hdFileName;    //文件名 (高清大图) 
	private String channelSelect; //频道编号
	
	  /**
     * @see HttpServlet#HttpServlet()
     */
    public FilmAction() {
        super();
    }
    
    public String list(){
    	
    	FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
    	this.pageBean = filmService.findByPage(pageSize, curPage,channelSelect);
    	
    	ChannelService channelService = (ChannelService) BeanFactory.getBeanByName("channelService");
    	List<Channel> channelList = channelService.findAll();
    	request.setAttribute("channelList", channelList);
    	
    	return "list";
    }
    
    public String addPrepare(){
    	
    	FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
    	List<Channel> channelList = filmService.listAllChannel();
    	request.setAttribute("channelList", channelList);
    	
    	return "addPrepare";
    	
    }
    
    public String save() throws IOException{
    	
    	FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
    	
    	if(film.getId()== null || film.getId() ==0 ){
    		film.setUploadDate(Calendar.getInstance().getTime());
    		film.setModifyDate(Calendar.getInstance().getTime());
    		
    		ImageInfo smallImage = saveImage(smallImg,smallImgFileName);
        	ImageInfo bigImage = saveImage(bigImg,bigImgFileName);
    		ImageInfo smallImageHD = saveImage(smallImg_hd,smallImg_hdFileName);
        	ImageInfo bigImageHD = saveImage(bigImg_hd,bigImg_hdFileName);
        	
        	film.setSmallImage(smallImage);
        	film.setBigImage(bigImage);
        	film.setSmallImage_HD(smallImageHD);
        	film.setBigImage_HD(bigImageHD);
        	
        	writeFilmImage(film);//生成影片海报图片
        	
    		filmService.save(film);
    		
    		logger.debug("保存影片成功。");
    	}else{
    		
    		/***************** 标清图片处理 begin ********************/
    		if(film.getSmallImage() != null){
    			int id  = film.getSmallImage().getId();
    			ImageInfoDao imageInfoDao = (ImageInfoDao) BeanFactory.getBeanByName("imageInfoDao");
    			imageInfoDao.delete(id);
    		}
    		
    		if(film.getBigImage() != null ){
    			int id  = film.getBigImage().getId();
    			ImageInfoDao imageInfoDao = (ImageInfoDao) BeanFactory.getBeanByName("imageInfoDao");
    			imageInfoDao.delete(id);
    		}
    		
    		if(smallImg != null){
    			ImageInfo smallImage = saveImage(smallImg,smallImgFileName);
    			film.setSmallImage(smallImage);
    		}else{
    			Film f = filmService.findById(film.getId());
    			ImageInfo smallImg  = f.getSmallImage();
    			film.setSmallImage(smallImg);
    		}
    		
    		if(bigImg != null){
    			ImageInfo bigImage = saveImage(bigImg,bigImgFileName);
            	film.setBigImage(bigImage);
    		}else{
    			Film f = filmService.findById(film.getId());
    			ImageInfo bigImg  = f.getBigImage();
    			film.setBigImage(bigImg);
    		}
    		/***************** 标清图片处理  end  ********************/
    		
    		/***************** 高清图片处理 begin ********************/
    		if(film.getSmallImage_HD() != null){
    			int id  = film.getSmallImage_HD().getId();
    			ImageInfoDao imageInfoDao = (ImageInfoDao) BeanFactory.getBeanByName("imageInfoDao");
    			imageInfoDao.delete(id);
    		}
    		
    		if(film.getBigImage_HD() != null ){
    			int id  = film.getBigImage_HD().getId();
    			ImageInfoDao imageInfoDao = (ImageInfoDao) BeanFactory.getBeanByName("imageInfoDao");
    			imageInfoDao.delete(id);
    		}
    		
    		if(smallImg_hd != null){
    			ImageInfo smallImageHD = saveImage(smallImg_hd,smallImg_hdFileName);
    			film.setSmallImage_HD(smallImageHD);
    		}else{
    			Film f = filmService.findById(film.getId());
    			ImageInfo smallImageHD  = f.getSmallImage_HD();
    			film.setSmallImage_HD(smallImageHD);
    		}
    		
    		if(bigImg_hd != null){
    			ImageInfo bigImageHD = saveImage(bigImg_hd,bigImg_hdFileName);
            	film.setBigImage_HD(bigImageHD);
    		}else{
    			Film f = filmService.findById(film.getId());
    			ImageInfo bigImageHD  = f.getBigImage_HD();
    			film.setBigImage_HD(bigImageHD);
    		}
    		/***************** 高清图片处理 end ********************/
    		
    		Film f = filmService.findById(film.getId());
    		film.setUploadDate(f.getUploadDate());
    		film.setModifyDate(Calendar.getInstance().getTime());
    		writeFilmImage(film);//生成影片海报图片
        	
    		filmService.update(film);
    		
    		logger.debug("修改影片成功。");
    	}
    	
    	
    	return "saved";
    }
    
    private void writeFilmImage(Film film){
    	
    	ImageInfo bigImageInfo  = film.getBigImage();
    	if( bigImageInfo != null ){
    		int image_id = bigImageInfo.getId();
    		String suffix = bigImageInfo.getSuffix();
    		
    		String bigImagePath = request.getSession().getServletContext().getRealPath("/uploadImages")+ CommonsUtil.getPathSymbol()+image_id +"."+ suffix ;
    		CommonsUtil.writeImageInfo(bigImageInfo,bigImagePath);
    	}
    	
    	ImageInfo smallImageInfo  = film.getSmallImage();
    	if( smallImageInfo != null ){
    		int image_id = smallImageInfo.getId();
    		String suffix = smallImageInfo.getSuffix();
    		
    		String smallImagePath = request.getSession().getServletContext().getRealPath("/uploadImages")+ CommonsUtil.getPathSymbol()+ image_id +"."+ suffix ;
    		CommonsUtil.writeImageInfo(smallImageInfo,smallImagePath);
    	}
    	
    	ImageInfo bigImage_HD  = film.getBigImage_HD();
    	if( bigImage_HD != null ){
    		int image_id = bigImage_HD.getId();
    		String suffix = bigImage_HD.getSuffix();
    		
    		String bigImagePath = request.getSession().getServletContext().getRealPath("/uploadImages")+ CommonsUtil.getPathSymbol()+image_id +"."+ suffix ;
    		CommonsUtil.writeImageInfo(bigImage_HD,bigImagePath);
    	}
    	
    	ImageInfo smallImage_HD  = film.getSmallImage_HD();
    	if( smallImage_HD != null ){
    		int image_id = smallImage_HD.getId();
    		String suffix = smallImage_HD.getSuffix();
    		
    		String smallImagePath = request.getSession().getServletContext().getRealPath("/uploadImages")+ CommonsUtil.getPathSymbol()+ image_id +"."+ suffix ;
    		CommonsUtil.writeImageInfo(smallImage_HD,smallImagePath);
    	}
    }
    
    private ImageInfo saveImage(File file,String filename) {
		// TODO Auto-generated method stub
		if(file == null)  return null;
		try {
			FileInputStream input = new FileInputStream(file);
			ImageInfo imageInfo = new ImageInfo();
			imageInfo.setBlob(CommonsUtil.InputStreamToByte(input));
			imageInfo.setName(filename);
			String  suffix = CommonsUtil.getExt(filename);
			imageInfo.setSuffix(suffix);
			ImageInfoDao imageInfoDao = (ImageInfoDao) BeanFactory.getBeanByName("imageInfoDao");
			imageInfo = imageInfoDao.save(imageInfo);
			return imageInfo;
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}

	public String modifyPrepare(){
    	
    	FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
    	String idStr = request.getParameter("id");
    	int id = 0 ;
    	
    	if(idStr != null){
    		id = Integer.parseInt(idStr);
    	}
    	
    	this.film = filmService.findById(id);
    	
    	writeFilmImage(film);//生成影片海报图片
    	
    	int columnid = film.getColumnId();
    	Column column  = filmService.findColumnByColumnid(columnid);
    	request.setAttribute("columninfo", column);
    	
    	List<Channel> channelList = filmService.listAllChannel();
    	request.setAttribute("channelList", channelList);
    
    	return "modifyPrepare";
    }
    
    public String delete(){
    	
    	String idStr = request.getParameter("id");
    	int id = 0 ;
    	if(idStr != null){
    		id = Integer.parseInt(idStr);
    	}
    	
    	FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
    	filmService.delete(id);
    	
    	return "deleted";
    }
    
    public String assetList(){
    	String idStr = request.getParameter("id");
    	int filmId = 0 ;
    	if(idStr != null){
    		filmId = Integer.parseInt(idStr);
    	}
    	
    	AssetService assetService = (AssetService) BeanFactory.getBeanByName("assetService");
    	List<Asset> assetList = assetService.findAssetListByFilmId(filmId);
    	
    	FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
    	Film film = filmService.findById(filmId);
    	int columnId = film.getColumnId();
    	
    	ColumnDao columnDao = (ColumnDao) BeanFactory.getBeanByName("columnDao");
    	Column column = columnDao.findById(columnId);
    	if(column != null){
    		int channelid = column.getChannelId();
    		ChannelDao channelDao = (ChannelDao) BeanFactory.getBeanByName("channelDao");
        	Channel  channel = channelDao.findById(channelid);
        	
        	request.setAttribute("cur_channel", channel);
        	request.setAttribute("cur_column", column);
        	request.setAttribute("cur_film", film);
    	}
    	
    	ChannelService channelService = (ChannelService) BeanFactory.getBeanByName("channelService");
    	List<Channel> channelList = channelService.findAll();
    	request.setAttribute("channelList", channelList);
    	 
    	request.setAttribute("assetList", assetList);
    	request.setAttribute("filmID", filmId);
    	
    	return "assetList";
    }
    
    @SuppressWarnings("unchecked")
	public String findColumnsByChannelId(){

		String channelId = request.getParameter("channelId");
		Integer channelID = Integer.parseInt(channelId);

		FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
		List<Column> columnList = filmService.findColumnsByChannelId(channelID);

		List<Map> returnList = new ArrayList<Map>();
		for (Column column : columnList) {
			Map map = new HashMap();
			map.put("id", column.getId());
			map.put("name", column.getName());
			returnList.add(map);
		}

		String ajaxData = JSONArray.fromObject(returnList).toString();
		request.setAttribute("ajaxData", ajaxData);
		
		return "columnList";
    }
    
    /**
     *@Todo:置顶/取消置顶操作
     *@author:朱庆辉
     *@CreateTime:2012-4-5 下午04:31:05
     * @return
     */
    public String top(){
    	
    	String idStr = request.getParameter("id");
    	int filmId = 0 ;
    	if(idStr != null){
    		filmId = Integer.parseInt(idStr);
    	}
    	
    	String flag = request.getParameter("flag");
    	
    	FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
    	filmService.updateTopStatus(filmId,flag);
    	
    	return "top";
    }

	public Film getFilm() {
		return film;
	}

	public void setFilm(Film film) {
		this.film = film;
	}

	public File getSmallImg() {
		return smallImg;
	}

	public void setSmallImg(File smallImg) {
		this.smallImg = smallImg;
	}

	public File getBigImg() {
		return bigImg;
	}

	public void setBigImg(File bigImg) {
		this.bigImg = bigImg;
	}

	public String getSmallImgFileName() {
		return smallImgFileName;
	}

	public void setSmallImgFileName(String smallImgFileName) {
		this.smallImgFileName = smallImgFileName;
	}

	public String getBigImgFileName() {
		return bigImgFileName;
	}

	public void setBigImgFileName(String bigImgFileName) {
		this.bigImgFileName = bigImgFileName;
	}

	public File getSmallImg_hd() {
		return smallImg_hd;
	}

	public void setSmallImg_hd(File smallImgHd) {
		smallImg_hd = smallImgHd;
	}

	public File getBigImg_hd() {
		return bigImg_hd;
	}

	public void setBigImg_hd(File bigImgHd) {
		bigImg_hd = bigImgHd;
	}

	public String getSmallImg_hdFileName() {
		return smallImg_hdFileName;
	}

	public void setSmallImg_hdFileName(String smallImgHdFileName) {
		smallImg_hdFileName = smallImgHdFileName;
	}

	public String getBigImg_hdFileName() {
		return bigImg_hdFileName;
	}

	public void setBigImg_hdFileName(String bigImgHdFileName) {
		bigImg_hdFileName = bigImgHdFileName;
	}

	public String getChannelSelect() {
		return channelSelect;
	}

	public void setChannelSelect(String channelSelect) {
		this.channelSelect = channelSelect;
	}
}
