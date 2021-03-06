<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="favicon.ico" >
<LINK rel="Shortcut Icon" href="favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>基本设置</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 系统管理 <span class="c-gray en">&gt;</span> 基本设置 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<form class="form form-horizontal" id="form-article-add" action="toUpdate.do" method="post"><!--  -->
		<div id="tab-system" class="HuiTab">
			<div class="tabBar cl"><span>基本设置</span><span>安全设置</span><!--<span>邮件设置</span>--><span>邮箱设置</span></div>
			<!-- 基本设置 -->
			<div class="tabCon">
				<div class="row cl">
					<c:forEach items="${myList}" var="u">
					
					<input name="id1" type="hidden" value="${u.id}"/>
					<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>网站名称：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="website-title" name="name1" value="${u.websiteName}" class="input-text">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>关键词：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="website-Keywords" name="keyWord1" value="${u.keyWord}" class="input-text">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>描述：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="website-description" name="describe1" value="${u.describe}" class="input-text">
					</div>
				</div>
				<!-- 
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>css、js、images路径配置：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="website-static" placeholder="默认为空，为相对路径" value="" class="input-text">
					</div>
				</div>
				 -->
				<!--  
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>上传目录配置：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="website-uploadfile" placeholder="默认为uploadfile" value="" class="input-text">
					</div>
				</div>
				-->
				<!--
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>底部版权信息：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="website-copyright" placeholder="&copy; 2016 H-ui.net" value="" class="input-text">
					</div>
				</div>
				-->
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">备案号：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="website-icp" name="baNum1" value="${u.baNum}" class="input-text">
					</div>
				</div>
				</c:forEach>
				<!--
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">统计代码：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<textarea class="textarea"></textarea>
					</div>
				</div>
				-->
			</div>
			<c:forEach items="${myList}" var="u">
			<div class="tabCon">
				<!-- 
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">允许访问后台的IP列表：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<textarea class="textarea" name="" id=""></textarea>
					</div>
				</div>
				 -->
			
				<div class="row cl">
					
					
					<label class="form-label col-xs-4 col-sm-2">后台登录失败最大次数：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" value="${u.maxNum}" id="" name="maxnum1" >
					</div>
					
				</div>
			</div>
			</c:forEach>
			  
			<div class="tabCon">
			<!--
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">邮件发送模式：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text"  class="input-text" value="" id="" name="">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">SMTP服务器：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="" value="" class="input-text">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">SMTP 端口：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" value="25" id="" name="" >
					</div>
				</div>
			-->
				<c:forEach items="${myList}" var="u">  
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">邮箱帐号：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" value="${u.postAccount}" id="emailName" name="emailName1" >
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">邮箱密码：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="password" name="keypassword1" value="${u.keyWord}" class="input-text">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">收件邮箱地址：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" name="address1" value="${u.postsAddress}" class="input-text">
					</div>
				</div>
				</c:forEach>
			</div>
			<div class="tabCon">
				
			</div>
		</div>
		 
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 保存</button>
				<!--<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>-->
			</div>
		</div>
		 
		
	</form>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="<%=basePath%>lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="<%=basePath%>lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>lib/jquery.validation/1.14.0/jquery.validate.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="<%=basePath%>lib/jquery.validation/1.14.0/messages_zh.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="<%=basePath%>static/h-ui.admin/js/H-ui.admin.js"></script> 
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript">
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	$.Huitab("#tab-system .tabBar span","#tab-system .tabCon","current","click","0");
});
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>
