<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


    
   <!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
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
<title>角色管理</title>
</head>
<body>
<%
	int count = 1;
%>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 管理员管理 <span class="c-gray en">&gt;</span> 角色管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="cl pd-5 bg-1 bk-gray"> <span class="l"> <a href="javascript:;" onclick="de()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> <a class="btn btn-primary radius" href="javascript:;" onclick="admin_role_add('添加角色','user/toAddRole.do','800')"><i class="Hui-iconfont">&#xe600;</i> 添加角色</a> </span> <span class="r">共有数据：<strong>${count}</strong> 条</span> </div>
		<form id="de2" action="user/checkDeleteRole.do" method="post"> 
 			<input type="hidden" name="deleteId" id="deId"/>
 		</form>
	<table class="table table-border table-bordered table-hover table-bg">
		<thead>
			<tr>
				<th scope="col" colspan="6">角色管理</th>
			</tr>
			<tr class="text-c">
				<th width="25"><input type="checkbox" value="" name=""></th>
				<th width="40">ID</th>
				<th width="200">角色名</th>
				<th width="70">操作</th>
			</tr>
		</thead>
		<c:if test="${empty list}">
     <tbody>
   
     <tr>
     <td align="center" colspan="6">
     里面没有数据
     
     </td>
     </tr>
     </tbody>
     </c:if>
    	<c:if test="${! empty list}">
  <c:forEach items="${list}" var="m" varStatus="loop"> 
		<tbody>
			<tr class="text-c">
				<td><input type="checkbox" value="${m.id}" name=""></td>
				<td>${m.id}</td>
				<td>${m.content}</td>
				<td class="f-14">
					<form id="deleteRole<%=count%>" action="user/deleteRole.do">
						<input type="hidden" value="${m.id}" name="id"/>
					</form>
					<form id="updateRole<%=count%>" action="user/toUpdateRole.do" method="post">
						<input type="hidden" value="${m.content}" name="content"/>
						<input type="hidden" value="${m.id}" name="id"/>
					</form>
				<a title="编辑" href="javascript:;" onclick="admin_role_edit('<%=count%>')" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="admin_role_del('<%=count++%>')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>	
				
				</td>
				
			</tr>
			
		</tbody>
		</c:forEach>
		</c:if>
	</table>
</div>
<script type="text/javascript" src="<%=basePath%>lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="<%=basePath%>lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="<%=basePath%>static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="<%=basePath%>static/h-ui.admin/js/H-ui.admin.js"></script> 
<script type="text/javascript">
/*管理员-角色-添加*/
function de() //删除
				{
				var m=0;
				flag=false;
				var str="";
				for(i=0;i<document.all.length;i++){
					if(document.all(i).type=="checkbox" && document.all(i).checked==true){
						str+=document.all(i).value+",";
						flag=true;
						m++;
					}
				}
				if(!flag){
					alert("你没有选中任何数据");
					return false ;
				}else{
					for(i=0;i<document.all.length;i++){
					if(document.all(i).name=="deleteId"){
						document.all(i).value=str;
					}
				}
				}
				if(confirm('您确定要删除以上'+m+'条信息吗？')){
					//location.href="account/toDeleteAllDept.do?con=str";
					
					document.getElementById("de2").submit();
				}else{
					return false;
				}				
			}
function admin_role_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*管理员-角色-编辑*/
function admin_role_edit(num){
	document.getElementById("updateRole"+num).submit();
}
/*管理员-角色-删除*/
function admin_role_del(num){
	layer.confirm('角色删除须谨慎，确认要删除吗？',function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		
		document.getElementById("deleteRole"+num).submit();

		layer.msg('已删除!',{icon:1,time:1000});
	});
}
</script>
</body>
</html>