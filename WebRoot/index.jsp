<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	response.sendRedirect("public/toWelcome.do");
%>

 <!-- 
  	response.sendRedirect("user/toLogin.do");
  	拦截器1
  	
  	1.创建拦截器MyInterceptor1.java，实现HandlerInterceptor接口
  	2.在springmvc.xml中配置拦截器
  	  
  	  <mvc:interceptors>
		<mvc:interceptor>
			<mvc:mapping path="/**"/>
			<bean class="com.java.interceptor.MyInterceptor1"></bean>
		</mvc:interceptor>
	  </mvc:interceptors>
  	
  	3.preHandle的true和false问题
  -->



















