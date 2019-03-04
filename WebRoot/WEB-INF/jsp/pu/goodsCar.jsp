<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>购物车页面</title>

		<link href="<%=basePath%>AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/cartstyle.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/optstyle.css" rel="stylesheet" type="text/css" />

		<script type="<%=basePath%>text/javascript" src="<%=basePath%>js/jquery.js"></script>
		<script type="text/javascript">
		
			function jis(){
				
				var money=0;
				var count=0;
				var id="";
				var arr=document.getElementsByName("check1");
				
				for(var i=0;i<arr.length;i++){
				if( arr[i].checked==true){
				money+=arr[i].value+",";
				id+=arr[i].id+",";
				count++;
			}
				
				}
				for(i=0;i<document.all.length;i++){
					if(document.all(i).type=="hidden" && document.all(i).name=="cout"){
						document.all(i).value=money;	
					}
					if(document.all(i).type=="hidden" && document.all(i).name=="count1"){
						document.all(i).value=id;	
					}
					if(document.all(i).type=="text" && document.all(i).name=="count2"){
						document.all(i).value=count;	
					}
				}
				document.getElementById("myForm").submit();	
				
			}
		
			function xinde(x){
				
				var money=0;
				var count=0;
				var id="";
				var arr=document.getElementsByName("check1");
				
				for(var i=0;i<arr.length;i++){
				if( arr[i].checked==true){
				money+=arr[i].value+",";
				id+=arr[i].id+",";
				count++;
			}
				
				}
				for(i=0;i<document.all.length;i++){
					if(document.all(i).type=="hidden" && document.all(i).name=="cout"){
						document.all(i).value=money;
					}
					
				}
				//document.getElementById("myForm").submit();	
				
			}
		
		
		
		
		</script>

	</head>

	<body>
	

		<!--顶部导航条 -->
		<div class="am-container header">
			
			<ul class="message-r">
				<div class="topMessage home">
					<div class="menu-hd"><a href="toWelcome.do" target="_top" class="h">商城首页</a></div>
				</div>
				<div class="topMessage my-shangcheng">
					<div class="menu-hd MyShangcheng"><a href="toWriteMember.do" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
				</div>
				
				<div class="topMessage favorite">
					<div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
			</ul>
			</div>

			<!--悬浮搜索框-->

			<div class="nav white">
				<div class="logo"><img src="images/logo.png" /></div>
				<div class="logoBig">
					<li><img src="<%=basePath%>pic/_o/50/a7/735e2614e3911e621f0446e54597_204_52.c5.png" /></li>
				</div>

				<div class="search-bar pr">
					<a name="index_none_header_sysc" href="#"></a>
					<form>
						<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
						<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
					</form>
				</div>
			</div>

			<div class="clear"></div>

			<!--购物车 -->
			<div class="concent">
				<div id="cartTable">
					<div class="cart-table-th">
						<div class="wp">
							<div class="th th-chk">
								<div id="J_SelectAll1" class="select-all J_SelectAll">

								</div>
							</div>
							<div class="th th-item">
								<div class="td-inner">商品信息</div>
							</div>
							<div class="th th-price">
								<div class="td-inner">单价</div>
							</div>
							<div class="th th-amount">
								<div class="td-inner">数量</div>
							</div>
							<div class="th th-sum">
								<div class="td-inner">金额</div>
							</div>
							<div class="th th-op">
								<div class="td-inner">操作</div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					
					<tr class="item-list">
						<div class="bundle  bundle-last ">
							<div class="bundle-hd">
								<div class="bd-promos">
									<div class="bd-has-promo">已添加商品<span class="bd-has-promo-content"></span>&nbsp;&nbsp;</div>
									<div class="act-promo">
										<a href="#" target="_blank"><span class="gt">&gt;&gt;</span></a>
									</div>
									<span class="list-change theme-login">编辑</span>
								</div>
							</div>
							<div class="clear"></div>
							<div class="bundle-main">
							<c:if test="${!empty list}">
  								<c:forEach items="${list}" var="u">
								<ul class="item-content clearfix">
									<li class="td td-chk">
										<div class="cart-checkbox ">
											<input class="check" id="${u.goodsId}" name="check1" value="${u.allPrice}" type="checkbox" onclick="xinde()">
											
											<label for="J_CheckBox_170037950254"></label>
										</div>
									</li>
									<li class="td td-item">
										<div class="item-pic">
											<a href="#" target="_blank" data-title="${u.name}" class="J_MakePoint" data-point="tbcart.8.12">
												<img src="<%=basePath%>${u.pictureDoPath} " class="itempic J_ItemImg"></a>
										</div>
										<div class="item-info">
											<div class="item-basic-info">
												<a href="#" target="_blank" title="${u.name}" class="item-title J_MakePoint" data-point="tbcart.8.11">${u.name}</a>
											</div>
										</div>
									</li>
									<li class="td td-info">
										<div class="item-props item-props-can">
											<span class="sku-line">材质：${u.textture}</span>
											<span class="sku-line">类型：${u.type}</span>
											<span tabindex="0" class="btn-edit-sku theme-login">修改</span>
											<i class="theme-login am-icon-sort-desc"></i>
										</div>
									</li>
									<li class="td td-price">
										<div class="item-price price-promo-promo">
											<div class="price-content">
												<div class="price-line">
													<em class="price-original"></em>
												</div>
												<div class="price-line">
													<em class="J_Price price-now" tabindex="0">${u.price}</em>
												</div>
											</div>
										</div>
									</li>
									<li class="td td-amount">
										<div class="amount-wrapper ">
											<div class="item-amount ">
												<div class="sl">
													<input class="min am-btn" name="" type="button" value="-" />
													<input class="text_box" name="" type="text" value="${u.nums}" style="width:30px;" />
													<input class="add am-btn" name="" type="button" value="+" />
												</div>
											</div>
										</div>
									</li>
									<li class="td td-sum">
										<div class="td-inner">
											<em tabindex="0" class="J_ItemSum number">${u.allPrice}</em>
										</div>
									</li>
									<li class="td td-op">
										<div class="td-inner">
											<a title="移入收藏夹" class="btn-fav" href="#">
                		  				移入收藏夹</a>
											<a href="javascript:;" data-point-url="#" class="delete">
                  						删除</a>
										</div>
									</li>
								</ul>
								</c:forEach>
								</c:if>
								
								
								
								
							</div>
						</div>
					</tr>
				</div>
				<div class="clear"></div>

				<div class="float-bar-wrapper">
					<div id="J_SelectAll2" class="select-all J_SelectAll">
						<div class="cart-checkbox">
							<input class="check-all check" id="J_SelectAllCbx2" name="check" value="" type="checkbox">
							<label for="J_SelectAllCbx2"></label>
						</div>
						<span>全选</span>
					</div>
					<div class="operations">
						<a href="#" hidefocus="true" class="deleteAll">删除</a>
						<a href="#" hidefocus="true" class="J_BatchFav">移入收藏夹</a>
					</div>
					<div class="float-bar-right">
						
							<form action="toMpay.do" id="myForm" >
						<div class="price-sum">
							<span class="txt"></span>
							<strong class="price"><em id="J_Total"></em></strong>
						</div>
						<div class="btn-area">
							
								<input type="hidden" name="count1"/>
								<input type="hidden" name="cout" />
								<input type="submit" value="结算" onclick="jis()"/>
						</div>
						</form>
					</div>

				</div>

				<div class="footer">
					<div class="footer-hd">
						<p>
							<a href="#">雅拓珠宝</a>
							<b>|</b>
							<a href="#">商城首页</a>
							<b>|</b>
							<a href="#">支付宝</a>
							<b>|</b>
							<a href="#">物流</a>
						</p>
					</div>
					<div class="footer-bd">
						<p>
							<a href="#">关于我们</a>
							<a href="#">合作伙伴</a>
							<a href="#">联系我们</a>
							<a href="#">网站地图</a>
							<em>© 2016-2025 yatuo.com 版权所有</em>
						</p>
					</div>
				</div>

			</div>

			<!--操作页面-->

			<div class="theme-popover-mask"></div>

			<div class="theme-popover">
				<div class="theme-span"></div>
				<div class="theme-poptit h-title">
					<a href="javascript:;" title="关闭" class="close">×</a>
				</div>
				<div class="theme-popbod dform">
					<form class="theme-signin" name="loginform" action="" method="post">

						<div class="theme-signin-left">

							<li class="theme-options">
								<div class="cart-title">颜色：</div>
								<ul>
									<li class="sku-line selected">12#川南玛瑙<i></i></li>
									<li class="sku-line">10#蜜橘色+17#樱花粉<i></i></li>
								</ul>
							</li>
							<li class="theme-options">
								<div class="cart-title">包装：</div>
								<ul>
									<li class="sku-line selected">包装：裸装<i></i></li>
									<li class="sku-line">两支手袋装（送彩带）<i></i></li>
								</ul>
							</li>
							<div class="theme-options">
								<div class="cart-title number">数量</div>
								<dd>
									<input class="min am-btn am-btn-default" name="" type="button" value="-" />
									<input class="text_box" name="" type="text" value="1" style="width:30px;" />
									<input class="add am-btn am-btn-default" name="" type="button" value="+" />
									<span  class="tb-hidden">库存<span class="stock">1000</span>件</span>
								</dd>

							</div>
							<div class="clear"></div>
							<div class="btn-op">
								<div class="btn am-btn am-btn-warning">确认</div>
								<div class="btn close am-btn am-btn-warning">取消</div>
							</div>

						</div>
						<div class="theme-signin-right">
							<div class="img-info">
								<img src="images/kouhong.jpg_80x80.jpg" />
							</div>
							<div class="text-info">
								<span class="J_Price price-now">¥39.00</span>
								<span id="Stock" class="tb-hidden">库存<span class="stock">1000</span>件</span>
							</div>
						</div>

					</form>
				</div>
			</div>
		<!--引导 -->
		<div class="navCir">
			<li><a href="home.html"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li class="active"><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
			<li><a href="person/index.html"><i class="am-icon-user"></i>我的</a></li>					
		</div>
	</body>

</html>