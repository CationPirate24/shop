<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/h-ui.admin/css/style.css" />

<title>图片管理</title>
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
<body>
<%
int count=1;
%>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 图片管理<span class="c-gray en">&gt;</span> 图片管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
 <div class="page-container">
		<form id="id3" action="tocheckList.do" method="post">
 		<input type="hidden" name="chaxunid" id="sId"/>
 		</form>
	<div class="text-c"> <span class="select-box inline">
		 <select name="sect" class="select">
			
		</select> 
		</span> 日期范围：
		<input type="text" onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}'})" id="logmin" class="input-text Wdate" style="width:120px;">
		-
		<input type="text" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d'})" id="logmax" class="input-text Wdate" style="width:120px;">
		<input type="text" name="con" id="textId" placeholder=" 图片名称" style="width:250px" class="input-text">
		<button  id="searchId" class="btn btn-success" type="submit" onclick="search()"><i class="Hui-iconfont">&#xe665;</i> 搜图片</button>
	</div> 
	<div class="cl pd-5 bg-1 bk-gray mt-20">
		<form id="up1" action="toUpdatepicture.do" method="post"> 
 		<input type="hidden" name="id1" id="upId"/>
 		</form>
 		
		<form id="de2" action="pldelete.do" method="post"> 
 		<input type="hidden" name="deleteid" id="deId"/>
 		</form>
	 	
	 <a href="javascript:;" onclick="de()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> <a class="btn btn-primary radius"  data-title="修改商品"  onclick="up()" ><i class="Hui-iconfont">&#xe600;</i> 修改图片</a> <span class="r">共有数据：<strong>${size}</strong> 条</span>
	 
	</div>
	<div class="mt-20">
		<table class="table table-border table-bordered table-bg table-hover table-sort">
			<thead>
				<tr class="text-c">
					<th width="20"><input type="checkbox" id="check" onclick="checkAll()"></th>
					
					<th width="45">图片ID</th>
					<th width="60">路径</th>
					
					<th width="70">商品名称</th>
					
					<th width="60">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty pList}">
  					<tr>
  					<td align="center" colspan="12">
  						里面没有数据
  					</td>
  					</tr>
  				</c:if>
  				<c:if test="${!empty pList}">
  				<c:forEach items="${pList}" var="u">
				<tr class="text-c">
					<td><input type="checkbox"  name="check1" id="checkId" value="${u.id}"></td>
					<td>${u.goodsId}</td>
					<td class="text-l">${u.doPath}</td>
					<td>${u.goodsName}</td>
					
					
					<%-- 
					<td class="td-status">${u.state}</td>
					 --%>
					
					<td class="f-14 td-manage">
						<form id="myFormUpdate<%=count%>" action="toUpdateR.do" method="post">
  								<input type="hidden" name="id" value="${u.id}"/>
  						</form>
  							<form id="myFormDelete<%=count%>" action="todelete.do" method="post">
  								<input type="hidden" name="id1" value="${u.id}"/>
  							</form>
  	 <a style="text-decoration:none" class="ml-5" onClick="article_edit('<%=count%>')" href="javascript:;" title="编辑">
  	 <i class="Hui-iconfont">&#xe6df;</i>
  	 </a> 
  	 <a style="text-decoration:none" class="ml-5" onClick="article_del('<%=count++ %>')" href="javascript:;" title="删除">
  	 <i class="Hui-iconfont">&#xe6e2;</i>
  	 </a>
					</td>
				</tr>
				</c:forEach>
  			</c:if>
			</tbody>
		</table>
	</div>
</div>
<script type="text/javascript" src="<%=basePath%>lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="<%=basePath%>lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="<%=basePath%>lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="<%=basePath%>static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="<%=basePath%>static/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript">

$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,8]}// 不参与排序的列
	]
});

/*资讯-添加*/
function article_add(title,url,w,h){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*资讯-编辑*/
function article_edit(num){
	document.getElementById("myFormUpdate"+num).submit();
}
/*资讯-删除*/
function article_del(num){
	layer.confirm('确认要删除吗？',function(index){
		document.getElementById("myFormDelete"+num).submit();
		layer.msg('已删除!',1);
	});
}
/*资讯-审核*/
function article_shenhe(obj,id){
	layer.confirm('审核文章？', {
		btn: ['通过','不通过','取消'], 
		shade: false,
		closeBtn: 0
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布', {icon:6,time:1000});
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
		$(obj).remove();
    	layer.msg('未通过', {icon:5,time:1000});
	});	
}
/*资讯-下架*/
function article_stop(obj,id){
	layer.confirm('确认要下架吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
		$(obj).remove();
		layer.msg('已下架!',{icon: 5,time:1000});
	});
}

/*资讯-发布*/
function article_start(obj,id){
	layer.confirm('确认要上架吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布!',{icon: 6,time:1000});
	});
}
/*资讯-申请上线*/
function article_shenqing(obj,id){
	$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">待审核</span>');
	$(obj).parents("tr").find(".td-manage").html("");
	layer.msg('已提交申请，耐心等待审核!', {icon: 1,time:2000});
}

</script> 
</body>
</html>
