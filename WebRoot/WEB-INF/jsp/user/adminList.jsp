<%@ page language="java" import="java.util.*,com.java.bean.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="<%=basePath%>/favicon.ico" >
<LINK rel="Shortcut Icon" href="<%=basePath%>/favicon.ico" />

<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/css/style.css" />

<title>管理员列表</title>
<script type="text/javascript">
function up(){
	
	var id="";
	var count=0;
	
	var arr=document.getElementsByName("check1");
	for(var i=0;i<arr.length;i++){
		if( arr[i].checked==true){
			id+=arr[i].value;
			count++;
		}	
		}
		if(count==0){
			alert("请选择一个进行修改！");
			return;
			
		}
		if(count>1){
			alert("抱歉，只能选择一个进行修改！");
			return;
		}else{
			
			document.getElementById("upId").value=id;
			document.getElementById("up1").submit();
			
		}
}
function checkAll(){
	
	
	var check=document.getElementById("check");
	var check1=document.getElementsByName("check1");
	for(var i=0;i<check1.length;i++){
			check1[i].checked=check.checked;
			if(check1[i].checked){
			check.checked="checked"	;
				
			}else{
				check.checked=null;
			}
	}
}
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
					if(document.all(i).name=="deleteid"){
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
function search(){
	var text=document.getElementById("textId");
	document.getElementById("sId").value=text.value;
	document.getElementById("id3").submit();
	
	
}
</script>
</head>
<%
 int count=1;
%>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 管理员管理 <span class="c-gray en">&gt;</span> 管理员列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<!-- <div class="page-container">
	<div class="text-c"> 日期范围：
		<input type="text" onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}'})" id="datemin" class="input-text Wdate" style="width:120px;">
		-
		<input type="text" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d'})" id="datemax" class="input-text Wdate" style="width:120px;">
		<input type="text" class="input-text" style="width:250px" placeholder="输入管理员名称" id="textId" name="con">
		<button type="submit" class="btn btn-success"  id="searchId" onclick="search()"><i class="Hui-iconfont">&#xe665;</i> 搜管理员</button>
	</div> -->
	<div class="cl pd-5 bg-1 bk-gray mt-20"> 
		<form id="up1" action="tocheckUpdate.do" method="post"> 
 		<input type="hidden" name="id1" id="upId"/>
 		</form>
		<form id="de2" action="deleteadmin.do" method="post"> 
 		<input type="hidden" name="deleteid" id="deId"/>
 		</form>
	<a href="javascript:;" onclick="de()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>  <span class="r">共有数据：<strong>${size}</strong> 条</span> 
	</div>
	<table class="table table-border table-bordered table-bg">
		<thead>
			<tr>
				<th scope="col" colspan="9">管理员列表</th>
			</tr>
			<tr class="text-c">
				<th width="25"><input type="checkbox" id="check" onclick="checkAll()"></th>
				<th width="80">用户</th>
				<th>角色</th>
				<th width="100">是否已启用</th>
				<th width="100">操作</th>
			</tr>
		</thead>
		<tbody>
				<c:if test="${empty muList}">
  					<tr>
  					<td align="center" colspan="12">
  						里面没有数据
  					</td>
  					</tr>
  				</c:if>
  				<c:if test="${!empty muList}">
  				<c:forEach items="${muList}" var="u" varStatus="loop">
			<tr class="text-c">
				<td><input type="checkbox" value="${u.id}" name="check1" id="checkId"></td>
				<td>${u.username}</td>
				<td>${roleList[loop.count-1]}</td>
				<td class="td-status"><span class="label label-success radius">已启用</span></td>
				<td class="td-manage">
						<form id="myFormUpdate<%=count%>" action="toAdminUpdate.do" method="post">
  								<input type="hidden" name="id1" value="${u.id}"/>
  						</form>
  							<form id="myFormDelete<%=count%>" action="admindelete.do" method="post">
  								<input type="hidden" name="id" value="${u.id}"/>
  							</form>
				<a style="text-decoration:none" onClick="admin_stop(this,'10001')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a title="编辑" href="javascript:;" onclick="admin_edit('<%=count %>')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="admin_del('<%=count++ %>')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>
				</td>
			</tr>
			</c:forEach>
  			</c:if>
		</tbody>
	</table>
</div>
<script type="text/javascript" src="<%=basePath%>lib/jquery/1.9.1/jquery.min.js"></script>  
<script type="text/javascript" src="<%=basePath%>lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="<%=basePath%>lib/laypage/1.2/laypage.js"></script> 
<script type="text/javascript" src="<%=basePath%>lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="<%=basePath%>static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="<%=basePath%>static/h-ui.admin/js/H-ui.admin.js"></script> 
<script type="text/javascript">
/*
	参数解释：
	title	标题
	url		请求的url
	id		需要操作的数据id
	w		弹出层宽度（缺省调默认值）
	h		弹出层高度（缺省调默认值）
*/
/*管理员-增加*/
function admin_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*管理员-删除*/
function admin_del(num){
	layer.confirm('确认要删除吗？',function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		document.getElementById("myFormDelete"+num).submit();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}
/*管理员-编辑*/
function admin_edit(num){
	document.getElementById("myFormUpdate"+num).submit();
}
/*管理员-停用*/
function admin_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		
		$(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_start(this,id)" href="javascript:;" title="启用" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已禁用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
}

/*管理员-启用*/
function admin_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		
		
		$(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_stop(this,id)" href="javascript:;" title="停用" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!', {icon: 6,time:1000});
	});
}
</script>
</body>
</html>
