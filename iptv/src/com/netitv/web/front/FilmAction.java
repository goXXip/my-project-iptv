package com.netitv.web.front;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.netitv.domain.Asset;
import com.netitv.domain.Film;
import com.netitv.domain.OrderDetail;
import com.netitv.service.AssetService;
import com.netitv.service.FilmService;
import com.netitv.service.OrderDetailService;
import com.netitv.util.BaseAction;
import com.netitv.util.BeanFactory;
import com.netitv.util.CommonsUtil;
import com.netitv.util.Constants;
import com.netitv.util.HttpUtil;
import com.netitv.util.PageBean;

public class FilmAction extends BaseAction<Film>{

	private static final long serialVersionUID = 2892468747171603948L;
	
	private static Logger logger = Logger.getLogger(FilmAction.class);
	
	private Film film ;
	private String toAuthenticationUrl;//身份认证url
	private String toAuthUrl;//鉴权url
	private String playUrl;//视频播放url
	private String hdIndexUrl;//高清首页
	
	/**
	 *@Todo:孕育早教首页
	 *@CreateTime:2012-2-6 上午09:36:56
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String eduIndex(){
		
		/*********记录访问参数信息********************/
		logAccessInformation("孕育早教");
		
		String returnUrl = checkLogin("1");//检查是否已登录(通过认证)
		if(returnUrl != null){
			return returnUrl;
		}
		
		String localIp = request.getParameter("localIp");
		String userID = request.getParameter("userId");
		String backUrl = request.getParameter("backUrl");
		if(localIp == null){
			localIp = getLocalIp();
		}
		request.setAttribute("prefix", localIp);
		
		if(checkHD(localIp)){//是否为高清
			String hdIndexUrl_yyzj = getRequestPrefix()+"/yyzj_hd/filmAction!eduIndex.do?userId="+userID+"&backUrl="+backUrl+"&localIp="+localIp;
			this.setHdIndexUrl(hdIndexUrl_yyzj);
			return "eduIndex_hd";
		}
		
		FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
		PageBean pageBean = filmService.findByPage(5, 1,"1");
		List<Object> filmList = pageBean.getItems();
		request.setAttribute("filmList", filmList);
		
		if( filmList != null && filmList.size()> 0 ){
			Film fi = (Film) filmList.get(0);
			List<Asset> assetList = fi.getAssetList();
			if(assetList != null && assetList.size()>0){
				Asset asset = assetList.get(0);
				Integer fileId  = asset.getFileId();
				request.setAttribute("defaultPlayID", fileId);//默认播放视频ID
			}
		}
		
		pageBean = filmService.findByPage(5, 2,"1");
		List<Object> relativeList = pageBean.getItems();
		request.setAttribute("relativeList", relativeList);
		
		return "eduIndex";
	}
	
	/**
	 *@Todo:疯狂英语首页
	 *@author:zhuqh
	 *@CreateTime:2011-12-12 上午10:05:02
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String engIndex(){
		
		/*********记录访问参数信息********************/
		logAccessInformation("疯狂英语");
		
		String returnUrl = checkLogin("2");//检查是否已登录(通过认证)
		if(returnUrl != null){
			return returnUrl;
		}
		
		String localIp = request.getParameter("localIp");
		String userID = request.getParameter("userId");
		String backUrl = request.getParameter("backUrl");
		if(localIp == null){
			localIp =  getLocalIp();
		}
		request.setAttribute("prefix", localIp);
		
		if(checkHD(localIp)){//是否为高清
			String hdIndexUrl_yyzj = getRequestPrefix()+"/crazyenglish_hd/filmAction!engIndex.do?userId="+userID+"&backUrl="+backUrl+"&localIp="+localIp;
			this.setHdIndexUrl(hdIndexUrl_yyzj);
			return "engIndex_hd";
		}
		
		FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
		PageBean pageBean = filmService.findByPage(5, 1,"2");
		List<Object> filmList = pageBean.getItems();
		request.setAttribute("filmList", filmList);
		
		if( filmList != null && filmList.size()> 0 ){
			Film fi = (Film) filmList.get(0);
			List<Asset> assetList = fi.getAssetList();
			if(assetList != null && assetList.size()>0){
				Asset asset = assetList.get(0);
				Integer fileId  = asset.getFileId();
				request.setAttribute("defaultPlayID", fileId);//默认播放视频ID
			}
		}
		
		pageBean = filmService.findByPage(5, 2,"2");
		List<Object> relativeList = pageBean.getItems();
		request.setAttribute("relativeList", relativeList);
		
		return "engIndex";
		
	}
	
	/**
	 *@Todo:成人教育首页
	 *@author:zhuqh
	 *@CreateTime:2012-7-24 上午10:05:02
	 */
	@SuppressWarnings("unchecked")
	public String crjyIndex(){
		
		/*********记录访问参数信息********************/
		logAccessInformation("成人教育");
		
		String returnUrl = checkLogin("3");//检查是否已登录(通过认证)
		if(returnUrl != null){
			return returnUrl;
		}
		
		String localIp = request.getParameter("localIp");
		String userID = request.getParameter("userId");
		String backUrl = request.getParameter("backUrl");
		if(localIp == null){
			localIp =  getLocalIp();
		}
		request.setAttribute("prefix", localIp);
		
		if(checkHD(localIp)){//是否为高清
			String hdIndexUrl_yyzj = getRequestPrefix()+"/crjy_hd/filmAction!crjyIndex.do?userId="+userID+"&backUrl="+backUrl+"&localIp="+localIp;
			this.setHdIndexUrl(hdIndexUrl_yyzj);
			return "crjyIndex_hd";
		}
		
		FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
		PageBean pageBean = filmService.findByPage(5, 1,"3");
		List<Object> filmList = pageBean.getItems();
		request.setAttribute("filmList", filmList);
		
		if( filmList != null && filmList.size()> 0 ){
			Film fi = (Film) filmList.get(0);
			List<Asset> assetList = fi.getAssetList();
			if(assetList != null && assetList.size()>0){
				Asset asset = assetList.get(0);
				Integer fileId  = asset.getFileId();
				request.setAttribute("defaultPlayID", fileId);//默认播放视频ID
			}
		}
		
		pageBean = filmService.findByPage(5, 2,"3");
		List<Object> relativeList = pageBean.getItems();
		request.setAttribute("relativeList", relativeList);
		
		return "crjyIndex";
	}
	
	/**
	 *@Todo:按栏目列出影片
	 *@author:zhuqh
	 *@CreateTime:2011-12-12 上午10:05:13
	 * @return
	 */
	public String listFilmByColumnId(){
		
		/***** 检查是否已登录(通过认证) begin ****/
		String channelId = request.getParameter("channelId");//频道编号 (1:孕育早教 2：疯狂英语)
		String returnUrl = null;
		if("1".equals(channelId)){
			returnUrl = checkLogin("1");
		}
		else if("2".equals(channelId)){
			returnUrl = checkLogin("2");
		}else{
			returnUrl = checkLogin("3");
		}
		if(returnUrl != null){
			return returnUrl;
		}
		/***** 检查是否已登录(通过认证) end ****/
		
		int pageSize = 9;
		if("1".equals(channelId)){
			pageSize = 12;
		}
		String pageSizeStr = request.getParameter("pageSize");
		if(pageSizeStr != null){
			pageSize = Integer.parseInt(pageSizeStr);
		}
		
		String columnId = request.getParameter("columnId");
		Integer columnID = Integer.parseInt(columnId);
		
		FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
		this.pageBean = filmService.findByPage(pageSize, curPage,columnID);
		
		request.setAttribute("columnID", columnID);
		
		return "listByColumn";
	}
	
	/**
	 *@Todo:影片详情
	 *@author:zhuqh
	 *@param filmId 影片ID
	 *@CreateTime:2011-12-12 上午10:05:28
	 * @return
	 */
	public String detail(){
		
		String filmId = request.getParameter("filmId"); 
		Integer filmID = Integer.parseInt(filmId);
		
		FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
		this.film = filmService.findById(filmID);
		Integer columnID = film.getColumnId();
		
		String from = request.getParameter("from");
		if("index".equals(from)){
			request.setAttribute("from", "index");
		}else{
			request.setAttribute("from", "column");
		}
		
		/**************** 查询相关影片   *********************/
		List<Film>  relativeList = filmService.listFilmByRand(4,columnID,filmID);
		request.setAttribute("relativeList", relativeList);
		
		request.setAttribute("columnID", columnID);
	
		return "detail";
	}
	
	/**
	 *@Todo:
	 *列出影片下所有资产(即将所有视频文件列出,连续剧列表,如：第一集、第二集、第三集......点击"观看"按钮触发)
	 *@author:zhuqh
	 *@param filmId 影片ID ,channelId:频道ID
	 *@CreateTime:2011-12-12 上午10:05:37
	 * @return
	 */
	public String listAssetByFilmId_back(){
		
		String filmId = request.getParameter("filmId");//影片ID
		Integer filmID = Integer.parseInt(filmId);
		String channelId = request.getParameter("channelId");//频道ID
		
		FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
		this.film = filmService.findById(filmID);
		Integer columnID = film.getColumnId();
		String contentID = film.getContentId();
		
		AssetService assetService = (AssetService) BeanFactory.getBeanByName("assetService");
		this.pageBean = assetService.findAssetListByFilmId(7,curPage,filmID);
		
		String userID = (String) request.getSession().getAttribute(Constants.UserID);
		OrderDetailService orderDetailService = (OrderDetailService) BeanFactory.getBeanByName("orderDetailService");
		OrderDetail  orderDetail = orderDetailService.findByContentIdAndUserId(userID, channelId);
		if( orderDetail == null){//未订购
			this.setToAuthUrl(getRequestPrefix()+"/servlet/serviceAuth?ContentID="+contentID+"&filmId="+filmID+"&channelId="+channelId);
			return "toAuth";
		}else{
			
			String serendtime = orderDetail.getSerendtime();
			boolean expiredFlag = checkExpired(serendtime,"yyyyMMddHHmmss");//检查产品服务是否过期
			if(expiredFlag){
				request.setAttribute("msg", "您订购的产品已过期,请重新订购");
				return "error";
			}
			request.setAttribute("filmID", filmID);
			request.setAttribute("contentID", contentID);
			request.setAttribute("columnID", columnID);
			
			return "listAsset";
		}
	}
	
	public String listAssetByFilmId(){
		
		try {
			String filmId = request.getParameter("filmId");//影片ID
			Integer filmID = Integer.parseInt(filmId);
			
			FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
			this.film = filmService.findById(filmID);
			String contentID = film.getContentId();
			Integer columnID = film.getColumnId();
			
			AssetService assetService = (AssetService) BeanFactory.getBeanByName("assetService");
			this.pageBean = assetService.findAssetListByFilmId(7,curPage,filmID);
			
			String localIp = getLocalIp();
			
			String from = request.getParameter("from");
			if("index".equals(from)){
				request.setAttribute("from", "index");
			}else{
				request.setAttribute("from", "column");
			}
				
			request.setAttribute("filmID", filmID);
			request.setAttribute("contentID", contentID);
			request.setAttribute("localIp", localIp);
			request.setAttribute("columnID", columnID);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "listAsset";
	}
	
	/**
	 *@Todo:如鉴权不通过，则进行订购(跳转到订购确认页面)
	 *@CreateTime:2012-2-7 下午04:19:41
	 * @return
	 */
	public String orderConfirm(){
		
		String filmId = request.getParameter("filmId");
		Integer filmID = Integer.parseInt(filmId);
		
		FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
		this.film = filmService.findById(filmID);
		
		if(film == null){
			logger.error("filmId====="+filmId+"影片不存在");
			return "error";
		}
		
		return "orderConfirm";
	}
	
	/**
	 * 检查是否为高清
	 */
	public boolean checkHD( String localIp){
		
		if(localIp!=null && (localIp.indexOf("defaultwghd")>0 || localIp.indexOf("defaultwebkit")>0)){
			return true;
		}
		return false;
	}
	
	/**
	 * 检查是否已登录 
	 * @param channelId 频道标识  1:孕育早教 2:疯狂英语 3:成人教育
	 */
	private String checkLogin(String channelId){
		
		request.getSession().setAttribute("UserToken","UserToken");
		Object  UserToken = request.getSession().getAttribute("UserToken");
		if( UserToken == null){
			String userId = request.getParameter("userId");
			if( userId== null){
				userId = getUserId();
			}
			this.setToAuthenticationUrl(getRequestPrefix()+"/servlet/authenticate?flag="+channelId+"&userId="+userId);
			return "toAuthentication";
		}
		return null;
	}
	
	/**
	 * http请求头(前缀)
	 */
	private String getRequestPrefix(){
		return request.getScheme()+"://"+ request.getServerName()+":"+request.getServerPort()+request.getContextPath();
	}
	
	/****
	 * 记录访问参数信息
	 * @param channelName 频道名称
	 */
	private void logAccessInformation(String channelName){
		String uri = request.getRequestURI();
		Date time  = Calendar.getInstance().getTime();
		String visitTime = CommonsUtil.dateToString(time,"yyyy-MM-dd HH:mm:ss");
		String client = request.getRemoteAddr();
		log("====="+channelName+"======"+visitTime+"======="+ client+"====begin=================");
		
		log("uri==========="+uri);
		String referer = request.getHeader("Referer");
		log("Referer======="+referer);
		
		String params = request.getQueryString();
		log("params=========="+params);
		
		String localIp = request.getParameter("localIp");
		log("localIp======"+localIp);
		request.setAttribute("prefix", localIp);
		
		String userID = request.getParameter("userId");
		log("userID======"+userID);
		
		String backUrl = request.getParameter("backUrl");
		log("backUrl======"+backUrl);
		
		log("======"+channelName+"==========end=================");
	}
	
	/**
	 * 判断日期是否过期(true:过期 false:未过期)
	 * @param expired_time 过期时间
	 * @param pattern 日期格式
	 */
	private boolean checkExpired(String expired_time, String pattern) {
		// TODO Auto-generated method stub
		boolean returnFlag = true;
		if(expired_time != null){
			Date today = Calendar.getInstance().getTime();
			String today_str = CommonsUtil.dateToString(today, pattern);
			if(today_str.compareTo(expired_time) < 0){
				returnFlag = false;
			}
		}
		return returnFlag;
	}
	
	private String getLocalIp(){
		if(session.getAttribute("iptv_localIp")!=null){
			String  iptv_localIp = (String)session.getAttribute("iptv_localIp");
			return iptv_localIp;
		}else{
			return HttpUtil.getCookieValue(request, "localIp");
		}
	}
	
	private String getUserId(){
		if(session.getAttribute("iptv_userId")!=null){
			String  iptv_userId = (String)session.getAttribute("iptv_userId");
			return iptv_userId;
		}else{
			return HttpUtil.getCookieValue(request,"userID");
		}
	}
	
	private void log(String message){
		if(logger.isDebugEnabled()){
			logger.debug(message);
		}
	}
	
	public Film getFilm() {
		return film;
	}

	public void setFilm(Film film) {
		this.film = film;
	}

	public String getToAuthenticationUrl() {
		return toAuthenticationUrl;
	}

	public void setToAuthenticationUrl(String toAuthenticationUrl) {
		this.toAuthenticationUrl = toAuthenticationUrl;
	}

	public String getToAuthUrl() {
		return toAuthUrl;
	}

	public void setToAuthUrl(String toAuthUrl) {
		this.toAuthUrl = toAuthUrl;
	}

	public String getPlayUrl() {
		return playUrl;
	}

	public void setPlayUrl(String playUrl) {
		this.playUrl = playUrl;
	}

	public String getHdIndexUrl() {
		return hdIndexUrl;
	}

	public void setHdIndexUrl(String hdIndexUrl) {
		this.hdIndexUrl = hdIndexUrl;
	}

}
