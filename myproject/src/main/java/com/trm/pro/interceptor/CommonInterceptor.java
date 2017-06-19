package com.trm.pro.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.trm.pro.entity.Userinfo;

@Component
public class CommonInterceptor extends HandlerInterceptorAdapter {

	public static String RECYCLE_USER_SESSION="RECYCLE_USER_SESSION";
	
	@Override
	@Transactional
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		Userinfo userinfo = (Userinfo) session.getAttribute("userinfo");
		if(userinfo == null){
			request.getRequestDispatcher("/Home/index").forward(request, response);
			return false;
		}else{
			return true;
		}
	}

}
