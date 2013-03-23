package com.netitv.web;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.netitv.util.Constants;
import com.netitv.util.HttpUtil;

/**
 *身份认证请求(向VAS平台请求),ReturnURL(认证成功后跳转地址)
 * @CreateTime:2011-10-24 05:30:41
 */
public class AuthenticateServlet  extends HttpServlet{

	private static final long serialVersionUID = -2058552092655034339L;
	
	private static Logger logger = Logger.getLogger(AuthenticateServlet.class);
	
	  /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthenticateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String UserID = HttpUtil.getUserId(request);
		String flag = request.getParameter("flag");//频道标识:(1:孕育早教  2:疯狂英语 3：成人教育)
		String ReturnURL = getRequestPrefix(request)+"/servlet/authenticateResponse";//表示本接口调用成功之后，跳转目标地址
		String action_url = getRequestPrefix(request);
		if("1".equals(flag)){
			action_url += "/yyzj/filmAction!eduIndex.do";
		}
		else if("2".equals(flag)){
			action_url += "/crazyenglish/filmAction!engIndex.do";
		}
		else if("3".equals(flag)){
			action_url += "/crjy/filmAction!crjyIndex.do";
		}
		
		action_url = URLEncoder.encode(action_url, "utf-8");//应用首页地址(跳转到action地址)
		ReturnURL += "?action_url="+action_url;
		
		String requestUrl = Constants.Authenticate_Url+"SPID="+Constants.SPID+"&UserID="+ UserID +"&ReturnURL="+ReturnURL
		+"&Action="+Constants.Authenticate_Action;
		
		logger.info("user_id==="+UserID+",channel flag==="+flag+",ReturnURL==="+ReturnURL+",requestUrl==="+requestUrl);
		
		response.sendRedirect(requestUrl);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	//得到本应用的完整url地址前缀。形如http://ip:port/context 例如http://113.106.86.84:8080/iptv
	private String getRequestPrefix(HttpServletRequest request){
		return request.getScheme()+"://"+ request.getServerName()+":"+request.getServerPort()+request.getContextPath();
	}

}
