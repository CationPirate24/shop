<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>注册账号</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="<%=basePath%>AmazeUI-2.4.2/assets/css/amazeui.css" />
		<link href="<%=basePath%>css/dlstyle.css" rel="stylesheet" type="text/css">
	</head>

	<body>

		<div class="login-boxtitle">
			<a href="home.html"><img alt="logo" src="<%=basePath%>pic/_o/50/a7/735e2614e3911e621f0446e54597_204_52.c5.png" /></a>
		</div>

		<div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg"><span></span><img src="<%=basePath%>img/big.jpg" /></div>
				<div class="login-box">

							<h3 class="title">注册账号</h3>

							<div class="clear"></div>
						
						<div class="login-form">
						  <form action="regiest.do" method="post">
							   <div class="user-name">
								    <label for="user"><i class="am-icon-user"></i></label>
								    <input type="text" name="username" id="username1" placeholder="用户名">
                 </div>
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="password" id="password1" placeholder="请输入密码"/>
                 </div>
                  <div class="user-pass">
								    <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
								    <input type="password" name="passwordRepeat" id="passwordRepeat1" placeholder="确认密码">
                 </div>	
             
           </div>
            
            <div class="login-links">
                <label for="remember-me"><input id="remember-me" type=""></label>
								<a href="public/toChangPassword.do" class="am-fr"></a>
								<a href="public/toRegist.do" class="zcnext am-fr am-btn-default"></a>
								<br />
            </div>
								<div class="am-cf">
									<input type="submit" name="" value="注册" class="am-btn am-btn-primary am-btn-sm">
								</div>
								 </form>
						<div class="partner">		
								<h3></h3>
							
						</div>	

				</div>
			</div>
		</div>


					
	</body>

</html>

 