package com.netitv.web.manager;

import java.util.List;

import com.netitv.domain.AdministratorInfo;
import com.netitv.service.AdministratorInfoService;
import com.netitv.util.BaseAction;
import com.netitv.util.BeanFactory;
import com.netitv.util.CommonsUtil;
import com.netitv.util.Constants;

public class LoginAction extends BaseAction<AdministratorInfo> {

	private static final long serialVersionUID = -5228751711050015959L;

	public String login() {

		String username = request.getParameter("j_username");
		String password = request.getParameter("j_password");
		
		AdministratorInfoService administratorInfoService =  (AdministratorInfoService) BeanFactory.getBeanByName("administratorInfoService");

		List<AdministratorInfo> userlist = administratorInfoService.findByName(username);
		
		if (userlist == null || userlist.size() == 0) {
			request.setAttribute("errormessge", "该用户不存在");
			return "login";
		}

		AdministratorInfo administratorInfo = userlist.get(0);
		if (administratorInfo.getPassword().equals(CommonsUtil.md5(password))) {
		} else {
			request.setAttribute("errormessge", "密码不正确");
			return "login";
		}
		
		session.setAttribute(Constants.AdministratorInfo,administratorInfo);
		
		return "login_success";
	}
	
	public String logout(){
		
		session.removeAttribute(Constants.AdministratorInfo);
		session.invalidate();
		
		return "logout";
		
	}

}
