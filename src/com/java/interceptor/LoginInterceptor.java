package com.java.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.java.bean.MyAccount;



public class LoginInterceptor implements HandlerInterceptor{


	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		
		System.out.println("进入登录的拦截器");
		
		String uri = request.getRequestURI();
		System.out.println("-------"+uri);
		
		boolean flag = false;
		
		//如果为公有页面，则不需拦截
		if(uri.indexOf("public") > -1){
			System.out.println("执行1");
			flag = true;
		
		//如果正在进入登录页，或者进行登录操作，则不需拦截
		}else if(uri.indexOf("/login.do")>-1||uri.indexOf("/toLogin.do")>-1){
			System.out.println("执行2");
			flag = true;
			
		//如果不是公有页面，则判断是否登录
		}else{
			
			MyAccount account = (MyAccount)request.getSession().getAttribute("account");
			if(account!=null){
				System.out.println("执行3-1");
			List<String> list=(List<String>)request.getSession().getAttribute("list2");
					for (int i = 0; i < list.size(); i++) {
						if (uri.indexOf(list.get(i))>-1) {
							flag = true;
							break;
							}
					}
					if(flag==false){
						request.getRequestDispatcher("/WEB-INF/jsp/user/404.jsp").forward(request, response);
						
					}
				//flag = true;
			}else{
				System.out.println("执行3-2");
				request.getRequestDispatcher("/WEB-INF/jsp/user/login.jsp").forward(request, response);
			}
			
		} 
		return flag;
		//return true;
		
	}
	
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		System.out.println("方法2");
		
	}

	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		System.out.println("方法3");
		
	}

}
