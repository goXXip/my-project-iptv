package com.netitv.util;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class SessionIterceptor extends MethodFilterInterceptor  {

	private static final long serialVersionUID = 1039355303525745526L;

	@SuppressWarnings("unchecked")
	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		
//		Action action = (Action) actionInvocation.getAction();
//		if (action instanceof CustomerAction) {
//			return actionInvocation.invoke();
//		}
		
		Object customerInfo =  session.get(Constants.AdministratorInfo);
		if ( customerInfo == null ) {
			return Action.LOGIN;
		} else {
			return actionInvocation.invoke();
		}
		
	}


}
