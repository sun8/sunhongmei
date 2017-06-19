package com.trm.mypro.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Component
public class CommonInterceptor extends HandlerInterceptorAdapter {

	public static String RECYCLE_USER_SESSION="RECYCLE_USER_SESSION";
	
	@Override
	@Transactional
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
//		HttpSession session = request.getSession();
//		RecycleUser user = (RecycleUser) session
//				.getAttribute(RECYCLE_USER_SESSION);
//		String ip=(String)request.getAttribute(CommonInterceptor.USER_IP);
//		if (user == null) {
//			if("0:0:0:0:0:0:0:1".equals(ip)){
//				user=recycleUserService.detail(6);
//				session.setAttribute(RECYCLE_USER_SESSION,user);
//			}
//			return false;
//		}
//		request.setAttribute("isfather", (user.getId()+",").equals(user.getAffid())?1:0);
		String path=request.getRequestURI();
		System.out.println("当前路径:"+path);
		return true;
	}

}
