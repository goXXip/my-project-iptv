package com.netitv.web;

import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import com.netitv.dao.FilmDao;
import com.netitv.domain.Film;
import com.netitv.domain.ImageInfo;
import com.netitv.service.FilmService;
import com.netitv.util.BeanFactory;
import com.netitv.util.CommonsUtil;
import com.netitv.util.PageBean;

/**
 * @Todo:执行初始化操作，生成图片(容器启动时执行该servlet,完成初始化操作)
 * @CreateTime:2012-2-6 上午09:39:51
 */
public class InitServlet  extends HttpServlet {

	private static final long serialVersionUID = -4497424293514449821L;

    @Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
    	
    	ServletContext context = config.getServletContext();
    	
		System.out.println("--------生成孕育早教频道图片   begin--------");
			generatePicture("1",context);
		System.out.println("--------生成孕育早教频道图片   end--------");
			
		System.out.println("--------生成疯狂英语频道图片   begin--------");
			generatePicture("2",context);
		System.out.println("--------生成疯狂英语频道图片   end--------");
		
		super.init(config);
		
	}
    
    /**
     * 
     *@Todo:生成海报图片
     *@author:zhuqh
     *@CreateTime:2012-2-6 上午11:27:33
     * @param channelNumber 频道编号
     * @param context 上下文
     */
    private void generatePicture(String channelNumber,ServletContext context){
    	
    	FilmService filmService = (FilmService) BeanFactory.getBeanByName("filmService");
		FilmDao filmDao = (FilmDao) BeanFactory.getBeanByName("filmDao");
		
		int rowsCount = filmDao.getTotalRowsCount(channelNumber);
		int pageSize = 10;
		int pageCount = (rowsCount + pageSize - 1)/pageSize ;
		
		for (int i = 1; i <= pageCount; i++ ) {
			
			PageBean pageBean = filmService.findByPage(pageSize, i ,channelNumber);
			List<Object>   list = pageBean.getItems();
			for (Object object : list) {
				Film film = (Film) object;
				writeFilmImage(film,context);//生成影片海报图片
			}
		}
    }
    
    /**
     *@Todo:生成影片图片
     *@author:zhuqh
     *@CreateTime:2012-2-6 上午11:09:57
     * @param film
     * @param context
     */
	private void writeFilmImage(Film film,ServletContext context){
    	
    	ImageInfo bigImageInfo  = film.getBigImage();
    	if(bigImageInfo != null ){
    		int image_id = bigImageInfo.getId();
    		String suffix = bigImageInfo.getSuffix();
    		
    		String bigImagePath = context.getRealPath("/uploadImages")+ CommonsUtil.getPathSymbol()+image_id +"."+ suffix ;
    		CommonsUtil.writeImageInfo(bigImageInfo,bigImagePath);
    	}
    	
    	ImageInfo smallImageInfo  = film.getSmallImage();
    	if( smallImageInfo != null ){
    		int image_id = smallImageInfo.getId();
    		String suffix = smallImageInfo.getSuffix();
    		
    		String smallImagePath = context.getRealPath("/uploadImages")+ CommonsUtil.getPathSymbol()+ image_id +"."+ suffix ;
    		CommonsUtil.writeImageInfo(smallImageInfo,smallImagePath);
    	}
    }
	
	

}
