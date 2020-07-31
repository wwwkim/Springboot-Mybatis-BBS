package com.bbs.starter.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
@Component("needToLoginInterceptor")
public class NeedToLoginInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response, Object handler) throws Exception {
		boolean isLogin = (boolean) request.getAttribute("isLogined");

		if(isLogin==false) {
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().append("<script>");
			response.getWriter().append("alert('Please login to use ');");
			response.getWriter().append("location.replace('/member/login');");
			response.getWriter().append("</script>");

			return false;
		}

		return HandlerInterceptor.super.preHandle(request, response, handler);


	}

}
