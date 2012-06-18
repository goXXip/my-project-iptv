package com.netitv.web;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.netitv.util.Constants;

/**
 * @Todo:对身份认证结果(成功/失败)处理
 * @author: zhuqh
 * @CreateTime:2011-11-7 下午03:50:58
 */
public class AuthenticateResponseServlet  extends HttpServlet {

	private static final long serialVersionUID = -4470253339674915859L;
	
	private static Logger logger = Logger.getLogger(AuthenticateResponseServlet.class);
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		logger.debug("=====AuthenticateResponse begin ========");
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String action_url = request.getParameter("action_url");//身份认证成功后跳转URL
		action_url = URLDecoder.decode(action_url,"utf-8");
		
		String SPID = request.getParameter("SPID");
		String UserID = request.getParameter("UserID");
		String EPGGroupNMB = request.getParameter("EPGGroupNMB");
		String UserGroupNMB = request.getParameter("UserGroupNMB");
		String Result = request.getParameter("Result");
		String Description = request.getParameter("Description");
		String UserToken = request.getParameter("UserToken");
		String ExpiredTime = request.getParameter("ExpiredTime");
		String ReturnInfo = request.getParameter("ReturnInfo");
		String Code = request.getParameter("Code");
		
		if("0".equals(Result)){
			request.getSession().setAttribute(Constants.UserToken, UserToken);
			request.getSession().setAttribute(Constants.UserID, UserID);
			logger.debug("UserToken==="+UserToken);
			logger.info(UserID+",认证成功");
			
			response.sendRedirect(action_url);//跳转
		}else{
			logger.error(UserID+",认证失败");
			request.setAttribute("msg", "认证失败,不能访问本应用,请按首页键返回");
			
			/***** 认证失败跳转到 错误提示页面 begin ***/
			if(action_url.indexOf("/yyzj/filmAction!eduIndex.do")>0){
				RequestDispatcher rd = request.getRequestDispatcher("/yyzj/error.jsp");
				rd.forward(request, response);
			}else{
				RequestDispatcher rd = request.getRequestDispatcher("/crazyenglish/error.jsp");
				rd.forward(request, response);
			}
			/***** 认证失败跳转到 错误提示页面 end ***/
		}
		
		
		
		logger.debug("=====AuthenticateResponse end ========");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
