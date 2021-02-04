package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class BizInterceptor extends HandlerInterceptorAdapter {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String menuId = request.getRequestURI().replaceAll("/", "").replaceAll(".do", "");
		String upMenuId = menuId.substring(0, menuId.length() - 3);
		
		logger.debug("menuId::" + menuId);
		logger.debug("upMenuId::" + upMenuId);
		
		request.getSession().setAttribute("menuId", menuId);
		request.getSession().setAttribute("upMenuId", upMenuId);

		return super.preHandle(request, response, handler);
	}
}
