package com.netitv.web.front;

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
import com.netitv.util.PageBean;

public class FilmAction extends BaseAction<Film>{

	private static final long serialVersionUID = 2892468747171603948L;
	
	private static Logger logger = Logger.getLogger(FilmAction.class);
	
	private Film film ;
	private String toAuthenticationUrl;//身份认证url
	private String toAuthUrl;//鉴权url
	
	/**
	 *@Todo:孕育早教首页
	 *@CreateTime:2012-2-6 上午09:36:56
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String eduIndex(){
		
		String returnUrl = checkLogin("1");//检查是否已登录(通过认证)
		if(returnUrl != null){
			return returnUrl;
		}
		
		String localIp = request.getParameter("localIp");
		if(localIp == null || "".equals(localIp)){
			localIp = getLocalIp();
		}else{
			localIp = CommonsUtil.htmlEncoder(localIp);
		}
		request.setAttribute("prefix", localIp);
		
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
	 *@CreateTime:2011-12-12 上午10:05:02
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String engIndex(){
		
		String returnUrl = checkLogin("2");//检查是否已登录(通过认证)
		if(returnUrl != null){
			return returnUrl;
		}
		
		String localIp = request.getParameter("localIp");
		if(localIp == null || "".equals(localIp)){
			localIp =  getLocalIp();
		}else{
			localIp = CommonsUtil.htmlEncoder(localIp);
		}
		request.setAttribute("prefix", localIp);
		
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
	 *@CreateTime:2012-7-24 上午10:05:02
	 */
	@SuppressWarnings("unchecked")
	public String crjyIndex(){
		
		String returnUrl = checkLogin("3");//检查是否已登录(通过认证)
		if(returnUrl != null){
			return returnUrl;
		}
		
		String localIp = request.getParameter("localIp");
		if(localIp == null || "".equals(localIp)){
			localIp =  getLocalIp();
		}else{
			localIp = CommonsUtil.htmlEncoder(localIp);
		}
		request.setAttribute("prefix", localIp);
		
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
	 *列出影片下所有资产(即将所有视频文件列出,连续剧列表,如：第一集、第二集、第三集......点击"观看"按钮触发)
	 *@param filmId 影片ID ,channelId:频道ID
	 *@CreateTime:2011-12-12 上午10:05:37
	 * @return
	 */
	public String listAssetByFilmId(){
		
		try {
			String filmId = request.getParameter("filmId");//影片ID
			String channelId = request.getParameter("channelId");//频道ID
			
			Integer filmID = Integer.parseInt(filmId);
			FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
			this.film = filmService.findById(filmID);
			String contentID = film.getContentId();
			Integer columnID = film.getColumnId();
			
			/************************检查是否已订购产品 及订购的产品是否过期  begin *****************************/
			String userID = (String) request.getSession().getAttribute(Constants.UserID);
			OrderDetailService orderDetailService = (OrderDetailService) BeanFactory.getBeanByName("orderDetailService");
			OrderDetail  orderDetail = orderDetailService.findByContentIdAndUserId(userID, channelId);
			if( orderDetail == null){//未订购
				this.setToAuthUrl(getRequestPrefix()+"/servlet/serviceAuth?ContentID="+contentID+"&filmId="+filmID+"&channelId="+channelId);
				return "toAuth";
			}
			
			String serendtime = orderDetail.getSerendtime();
			boolean expiredFlag = checkExpired(serendtime,"yyyyMMddHHmmss");//检查产品服务是否过期
			if(expiredFlag){
				request.setAttribute("msg", "您订购的产品已过期,请重新订购");
				return "error";
			}
			/************************检查是否已订购产品 及订购的产品是否过期 end *****************************/
			
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
			logger.error(e.getMessage());
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		
		return "listAsset";
	}
	
	public String listAsset(){
		
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
			logger.error(e.getMessage());
		}catch (Exception e) {
			logger.error(e.getMessage());
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
	 * 检查是否已登录 
	 * @param channelId 频道标识  1:孕育早教 2:疯狂英语 3:成人教育
	 */
	private String checkLogin(String channelId){
		
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
}
