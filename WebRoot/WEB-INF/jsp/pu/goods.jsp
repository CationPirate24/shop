<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>商品页面</title>

		<link href="<%=basePath%>AmazeUI-2.4.2/assets/css/admin.css"
			rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>AmazeUI-2.4.2/assets/css/amazeui.css"
			rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>basic/css/demo.css" rel="stylesheet"
			type="text/css" />
		<link type="text/css" href="<%=basePath%>css/optstyle.css"
			rel="stylesheet" />
		<link type="text/css" href="<%=basePath%>css/style.css"
			rel="stylesheet" />

		<script type="text/javascript"
			src="<%=basePath%>basic/js/jquery-1.7.min.js">
</script>
		<script type="text/javascript"
			src="<%=basePath%>basic/js/quick_links.js">
</script>

		<script type="text/javascript"
			src="<%=basePath%>AmazeUI-2.4.2/assets/js/amazeui.js">
</script>
		<script type="text/javascript"
			src="<%=basePath%>js/jquery.imagezoom.min.js">
</script>
		<script type="text/javascript"
			src="<%=basePath%>js/jquery.flexslider.js">
</script>
		<script type="text/javascript" src="<%=basePath%>js/list.js">
</script>
		<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>pc/css/base.css?1607170150.25" />
		<link rel="icon"
			href="<%=basePath%>pic/_o/9e/fb/7d026282ff00a259b6a7b90eee6d_48_48.c5.png"
			type="image/x-icon" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>pc/css/page/select/detail.css?1607191113.25" />
		<link rel="icon" href="" type="image/x-icon" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>pc/css/page/welcome.css?1607170150.25" />
		<script type="text/javascript" src="<%=basePath%>pc/jsmin/fml.js?1">
</script>
<style type="text/css">

.aa{
width:60px;
height:60px;

}
</style>
		<script>
fml.setOptions( {
	'sversion' : '1607170150.25',
	'defer' : true,
	'modulebase' : 'pc/jsmin/'
});
var Meilishuo = {
	"config" : {
		"nt" : "1yQyN1tU7ssTVQ5GeZ16w7IF/0VPJbAp1lO2BxZa52X2e4+pti0UtSulDoUBzzqn",
		"main_site_domain" : "/",
		"server_url" : "/",
		"picture_url" : "#",
		"captcha_url" : "#",
		"im_url" : "http://imlab.meilishuo.com/",
		"forSale" : false,
		"controller" : "welcome",
		"isLogin" : true,
		"userInfo" : {
			"name" : "阿猫来了",
			"uid" : "11cnkktq",
			"avatar" : "new1/v1/bdefaultavatar/03.jpg"
		}
	}
};</script>
<script type="text/javascript">
function gm(){
	document.getElementById("gm").submit();
}	
	
function lijimai() 
	{
		var m=0;
		var str="";
		for(i=0;i<document.all.length;i++){
			if(document.all(i).type=="text" && document.all(i).name=="num1"){
						//str += document.all(i).value;
				str = document.all(i).value;
			}
		}
		
		for(i=0;i<document.all.length;i++){
			if(document.all(i).type=="hidden"&&document.all(i).name=="coon"){
				document.all(i).value=str;
				document.getElementById("aaa").submit();
			}
				
		}
				
	}
function gwc() 
	{
		var m=0;
		var str="";
		for(i=0;i<document.all.length;i++){
			if(document.all(i).type=="text" && document.all(i).name=="num1"){
						//str += document.all(i).value;
				str = document.all(i).value;
			}
		}
		
		for(i=0;i<document.all.length;i++){
			if(document.all(i).type=="hidden"&&document.all(i).name=="coon"){
				document.all(i).value=str;
				document.getElementById("bbb").submit();
			}
				
		}
				
	}

</script>
	</head>

	<body>


		<!--顶部导航条 -->
		<div class="am-container header">

			<ul class="message-r">
				<div class="topMessage home">
					<div class="menu-hd">
						<a href="toWelcome.do" target="_top" class="h">商城首页</a>
					</div>
				</div>
				<div class="topMessage my-shangcheng">
					<div class="menu-hd MyShangcheng">
						<a href="toWriteMember.do" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a>
					</div>
				</div>
				<div class="topMessage mini-cart">
					<div class="menu-hd">
						<a id="mc-menu-hd" href="#" target="_top"><i
							class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong
							id="J_MiniCartNum" class="h"></strong> </a>
					</div>
				</div>

				

			</ul>
		</div>


		<!--悬浮搜索框-->

		<div class="nav white">
			<div class="logo">
				<img src="images/logo.png" />
			</div>
			<div class="logoBig">
				<ul>
					<li>
						<img
							src="<%=basePath%>pic/_o/50/a7/735e2614e3911e621f0446e54597_204_52.c5.png" />
					</li>
				</ul>
			</div>
			
		</div>

		<div class="clear"></div>
		<b class=""></b>
		<div class="listMain">

			<!--分类-->
			<div class="head">

				<div class="nav_main_box">
					<ul class="nav_main">
						<li class="nav_tab">
							<a href="toWelcome.do">

								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页</a>
						</li>
						<!-- <li class="nav_tab">
                  <a href="brandstreet.html?mt=12.12557.r121665.15640&acm=1.mce.2.12557.0.0.15640_121665">黄金</a></li>
               		<li class="nav_tab">
                  <a href="daimaiPCrukou.html?mt=12.12557.r121666.15640&acm=1.mce.2.12557.0.0.15640_121666">钻石</a></li>-->
						<li class="nav_tab">
							<a href="toHunjia.do">婚嫁</a>
						</li>
						<li class="nav_tab">
							<a href="togift.do">礼品</a>
						</li>
						
						<li class="nav_tab">
							<a href="toHy.do">会员中心</a>
						</li>
					</ul>
				</div>
			</div>
			<br />
			<br />
			<script type="text/javascript">
$(function() {
});
$(window).load(function() {
	$('.flexslider').flexslider( {
		animation : "slide",
		start : function(slider) {
			$('body').removeClass('loading');
		}
	});
});
</script>
			<div class="scoll">
				<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="images/01.jpg" title="pic" />
						</li>
						<li>
							<img src="images/02.jpg" />
						</li>
						<li>
							<img src="images/03.jpg" />
						</li>
					</ul>
				</div>
				</section>
			</div>

			<!--放大镜-->
			<div class="item-inform">
				<div class="clearfixLeft" id="clearcontent">

					<div class="box">
						<script type="text/javascript">
$(document).ready(
		function() {
			$(".jqzoom").imagezoom();
			$("#thumblist li a").click(
					function() {
						$(this).parents("li").addClass("tb-selected")
								.siblings().removeClass("tb-selected");
						$(".jqzoom").attr('src',
								$(this).find("img").attr("mid"));
						$(".jqzoom").attr('rel',
								$(this).find("img").attr("big"));
					});
		});


	
</script>
						
								<div class="tb-booth tb-pic tb-s310">
									<a href="<%=basePath%>${gap.pictureDoPath}"><img src="<%=basePath%>${gap.pictureDoPath}"
											alt="细节展示放大镜特效" rel="<%=basePath%>${gap.pictureDoPath}" class="jqzoom" /> </a>
								</div>
								<ul class="tb-thumb" id="thumblist">
									<li class="tb-selected">
										<div class="tb-pic tb-s40">
											<a href="#"><img src="<%=basePath%>${gap.pictureDoPath}"
													mid="<%=basePath%>${gap.pictureDoPath}" big="<%=basePath%>${gap.pictureDoPath}"> </a>
										</div>
									</li>

								</ul>
					</div>

					<div class="clear"></div>
				</div>

				<div class="clearfixRight">

					<!--规格属性-->
					<!--名称-->

					<div class="tb-detail-hd">
						<h1>
							${gap.name}
						</h1>
					</div>
					<div class="tb-detail-list">
						<!--价格-->
						<div class="tb-detail-price">
							<li class="price iteminfo_price">
								<dt>
									价格
								</dt>
								<dd>
									<em>¥</em><b class="sys_item_price">${gap.price}</b>
								</dd>
							</li>

						</div>



						<div class="clear"></div>

						<!--销量-->
						<ul class="tm-ind-panel">
							<li class="tm-ind-item tm-ind-sellCount canClick">
								<div class="tm-indcon">
									<span class="tm-label">月销量</span><span class="tm-count">1015</span>
								</div>
							</li>
							<li class="tm-ind-item tm-ind-sumCount canClick">
								<div class="tm-indcon">
									<span class="tm-label">累计销量</span><span class="tm-count">6015</span>
								</div>
							</li>
							<li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
								<div class="tm-indcon">
									<span class="tm-label">累计评价</span><span class="tm-count">${count}</span>
								</div>
							</li>
						</ul>
						<div class="clear"></div>

						<!--各种规格-->
						<dl class="iteminfo_parameter sys_item_specpara">
							<dt class="theme-login">
								<div class="cart-title">
									可选规格
									<span class="am-icon-angle-right"></span>
								</div>
							</dt>
							<dd>
								<!--操作页面-->

								<div class="theme-popover-mask"></div>

								<div class="theme-popover">
									<div class="theme-span"></div>
									<div class="theme-poptit">
										<a href="javascript:;" title="关闭" class="close">×</a>
									</div>
									<div class="theme-popbod dform">
										<form id="gm" class="theme-signin" name="loginform" action="toBuyGood.do"
											method="post">
											<input type="hidden" name="id" value="${gap.goodsId}"/>
											<div class="theme-signin-left">

												<div class="theme-options">
													<div class="cart-title">
														类别
													</div>
													<ul>
														<li class="sku-line selected">
															${gap.textture}
															<i></i>
														</li>
													</ul>
												</div>
												<div class="theme-options">
													<div class="cart-title">
														重量
													</div>
													<ul>
														<li class="sku-line selected">
															${gap.weight}
															<i></i>
														</li>
													</ul>
												</div>
												
												<div class="theme-options">
													<div class="cart-title number">
														数量
													</div>
													<dd>
														<input id="min" class="am-btn am-btn-default" name="num1"
															type="button" value="-" />
														<input id="text_box" name="num1" type="text" value="1"
															style="width: 30px;" />
														<input id="add" class="am-btn am-btn-default" name="num1"
															type="button" value="+" />
														<span id="Stock" class="tb-hidden">库存<span
															class="stock">${gap.nums}</span>件</span>
													</dd>

												</div>
												<div class="clear"></div>

												<div class="btn-op">
													<div class="btn am-btn am-btn-warning">
														确认
													</div>
													<div class="btn close am-btn am-btn-warning">
														取消
													</div>
												</div>
											</div>
											<div class="theme-signin-right">
												<div class="img-info">
													<img src="images/songzi.jpg" />
												</div>
												<div class="text-info">
													<span class="J_Price price-now">¥39.00</span>
													<span id="Stock" class="tb-hidden">库存<span
														class="stock">${gap.nums}</span>件</span>
												</div>
											</div>

										</form>
									</div>
								</div>

							</dd>
						</dl>
						<div class="clear"></div>
						<!--活动	-->
						<div class="shopPromotion gold">
							<div class="hot">
								<dt class="tb-metatit">
									店铺优惠
								</dt>
								<div class="gold-list">
									<p>
										购物满2件打8折，满3件7折
										<span>点击领券<i class="am-icon-sort-down"></i> </span>
									</p>
								</div>
							</div>
							<div class="clear"></div>
							<div class="coupon">
								<dt class="tb-metatit">
									优惠券
								</dt>
								<div class="gold-list">
									<ul>
										<li>
											125减5
										</li>
										<li>
											198减10
										</li>
										<li>
											298减20
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>

					<div class="pay">
						<div class="pay-opt">
							<a href="home.html"><span class="am-icon-home am-icon-fw">首页</span>
							</a>
							<a><span class="am-icon-heart am-icon-fw">收藏</span> </a>

						</div>
						<li>
							<div class="clearfix tb-btn tb-btn-buy theme-login">
								<a id="LikBuy" title="点此按钮到下一步确认购买信息" href="#" onclick="lijimai()">立即购买</a>
							</div>
							<form id="aaa" action="toBuyGood.do" method="post">
								<input type="hidden" name="coon"/>
								<input type="hidden" name="idd" value="${gap.goodsId}"/>
							</form>
						</li>
						<li>
							<div class="clearfix tb-btn tb-btn-basket theme-login">
								<a id="LikBasket" title="加入购物车" href="javascript:(0)" onclick="gwc()"><i></i>加入购物车</a>
							</div>
							<form id="bbb" action="toGoodCar.do" method="post">
								<input type="hidden" name="price" value="${gap.price}"/>
								<input type="hidden" name="userId" value="${account.userId}"/>
								<input type="hidden" name="coon"/>
								<input type="hidden" name="idd" value="${gap.goodsId}"/>
							</form>
						</li>
					</div>

				</div>

				<div class="clear"></div>

			</div>
	
			<!--优惠套装-->
			<div class="match">
				<div class="match-title">
					优惠套装
				</div>
				<div class="match-comment">
					<ul class="like_list">
						<li>
							<div class="s_picBox">
								<a class="s_pic" href="java:script(0)"><img src="<%=basePath%>p2/160811/u133544.jpg"> </a>
							</div>
							<a class="txt" target="_blank" href="java:script(0)">逸彩精美简雅18K金镶钻石耳钉</a>
							<div class="info-box">
								<span class="info-box-price">¥ 5800</span>
								<span class="info-original-price">￥ 7000</span>
							</div>
						</li>
						<li class="plus_icon">
							<i>+</i>
						</li>
						<li>
							<div class="s_picBox">
								<a class="s_pic" href="java:script(0)"><img src="<%=basePath%>p2/160811/f2-001.jpg"> </a>
							</div>
							<a class="txt" target="_blank" href="java:script(0)">怦然系列铂金爱心吊坠</a>
							<div class="info-box">
								<span class="info-box-price">¥ 6300</span>
								<span class="info-original-price">￥ 7500</span>
							</div>
						</li>
						<li class="plus_icon">
							<i>=</i>
						</li>
						<li class="total_price">
							<p class="combo_price">
								<span class="c-title">套餐价:</span><span>￥10000</span>
							</p>
							<p class="save_all">
								共省:
								<span>￥1100</span>
							</p>
							<a href="javascript:(0)" onclick="gm()" class="buy_now">立即购买</a>
							
						</li>
						<li class="plus_icon">
							<i class="am-icon-angle-right"></i>
						</li>
					</ul>
				</div>
			</div>
			<div class="clear"></div>


			<!-- introduce-->

			<div class="introduce">
				<div class="browse">
					<div class="mc">
						<ul>
							<div class="mt">
								<h2>
									看了又看
								</h2>
							</div>

							<li class="first">
								<div class="p-img">
									<a href="java:script(0)"> <img class="" src="<%=basePath%>p2/160811/f165627.jpg">
									</a>
								</div>
								<div class="p-name">
									<a href="java:script(0)">花月佳期夏荷足金耳钉 </a>
								</div>
								<div class="p-price">
									<strong>￥135.90</strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="java:script(0)"> <img class="" src="<%=basePath%>p2/160811/F189568.jpg">
									</a>
								</div>
								<div class="p-name">
									<a href="java:script(0)"> 光沙字母Y黄金足金吊坠转运珠</a>
								</div>
								<div class="p-price">
									<strong>￥35.90</strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="java:script(0)"> <img class="" src="<%=basePath%>p2/160811/hs5.jpg">
									</a>
								</div>
								<div class="p-name">
									<a href="java:script(0)"> 光沙LUCKY黄金足金手镯</a>
								</div>
								<div class="p-price">
									<strong>￥350.90</strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="java:script(0)"> <img class="" src="<%=basePath%>p2/160811/hx2.jpg">
									</a>
								</div>
								<div class="p-name">
									<a href="java:script(0)"> 【网店尊享款】蝴蝶叶黄金足金项链 </a>
								</div>
								<div class="p-price">
									<strong>￥375.90</strong>
								</div>
							</li>
							<li>
								<div class="p-img">
									<a href="java:script(0)"> <img class="" src="<%=basePath%>p2/160811/hxa.jpg">
									</a>
								</div>
								<div class="p-name">
									<a href="java:script(0)"> Angel天使之翼足金项链 </a>
								</div>
								<div class="p-price">
									<strong>￥205.90</strong>
								</div>
							</li>

						</ul>
					</div>
				</div>
				<div class="introduceMain">
					<div class="am-tabs" data-am-tabs>
						<ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
							<li class="am-active">
								<a href="#"> <span class="index-needs-dt-txt">宝贝详情</span> </a>

							</li>

							<li>
								<a href="#"> <span class="index-needs-dt-txt">全部评价</span> </a>

							</li>

							<li>
								<a href="#"> <span class="index-needs-dt-txt">猜你喜欢</span> </a>
							</li>
						</ul>

						<div class="am-tabs-bd">

							<div class="am-tab-panel am-fade am-in am-active">
								<div class="J_Brand">

									<div class="attr-list-hd tm-clear">
										<h4>
											产品参数：
										</h4>
									</div>
									<div class="clear"></div>
									<ul id="J_AttrUL">
										<li title="">
											产品类型:&nbsp;珠宝
										</li>
										<li title="">
											国家:&nbsp;英国
										</li>
										<li title="">
											地区:&nbsp;伦敦
										</li>
										<li title="">
											原料:&nbsp;宝石
										</li>
										<li title="">
											产品净重:&nbsp;2.g
										</li>
										<li title="">
											保修期:&nbsp;终身保修
										</li>
										<li title="">
											产品标准号:&nbsp;GB/T 22165
										</li>
										<li title="">
											生产许可证编号：&nbsp;QS4201 1801 0226
										</li>
										<li title="">
											储存方法：&nbsp;远离强酸，强碱
										</li>

									</ul>
									<div class="clear"></div>
								</div>

								<div class="details">
									<div class="attr-list-hd after-market-hd">
										<h4>
											商品细节
										</h4>
									</div>
									<div class="twlistNews">
										<img src="<%=basePath%>img/aa4.jpg" />
										<img src="<%=basePath%>img/aa2.jpg" />
										<img src="<%=basePath%>img/aa6.jpg" />
										<img src="<%=basePath%>img/aa1.jpg" />
										<img src="<%=basePath%>img/aa5.jpg" />
										<img src="<%=basePath%>img/aa3.jpg" />

									</div>
								</div>
								<div class="clear"></div>

							</div>

							<div class="am-tab-panel am-fade">

								<div class="actor-new">
									<div class="rate">
										<strong>100<span>%</span> </strong>
										<br>
										<span>好评度</span>
									</div>
									<dl>
										<dt>
											买家印象
										</dt>
										<dd class="p-bfc">
											<q class="comm-tags"><span>很好看</span><em>(2177)</em> </q>
											<q class="comm-tags"><span>做工精美</span><em>(1860)</em> </q>
											<q class="comm-tags"><span>很高贵</span><em>(1823)</em> </q>
											<q class="comm-tags"><span>佩戴舒服</span><em>(1689)</em> </q>
											<q class="comm-tags"><span>非常喜欢</span><em>(1488)</em> </q>
											<q class="comm-tags"><span>钻石很闪亮</span><em>(1392)</em> </q>
											<q class="comm-tags"><span>价格公道</span><em>(1119)</em> </q>
											<q class="comm-tags"><span>是正品</span><em>(865)</em> </q>
											<q class="comm-tags"><span>快递很给力</span><em>(831)</em> </q>
										</dd>
									</dl>
								</div>
								<div class="clear"></div>
								<div class="tb-r-filter-bar">
									<ul class=" tb-taglist am-avg-sm-4">
										<li class="tb-taglist-li tb-taglist-li-current">
											<div class="comment-info">
												<span>全部评价</span>
												<span class="tb-tbcr-num">(32)</span>
											</div>
										</li>

										<li class="tb-taglist-li tb-taglist-li-1">
											<div class="comment-info">
												<span>好评</span>
												<span class="tb-tbcr-num">(32)</span>
											</div>
										</li>

										<li class="tb-taglist-li tb-taglist-li-0">
											<div class="comment-info">
												<span>中评</span>
												<span class="tb-tbcr-num">(32)</span>
											</div>
										</li>

										<li class="tb-taglist-li tb-taglist-li--1">
											<div class="comment-info">
												<span>差评</span>
												<span class="tb-tbcr-num">(0)</span>
											</div>
										</li>
									</ul>
								</div>
								<div class="clear"></div>

								<ul class="am-comments-list am-comments-list-flip">
								<c:if test="${!empty list2}">
  								<c:forEach items="${list2}" var="u">
									<li class="am-comment">
										<!-- 评论容器 -->
										<a href=""> <img class="am-comment-avatar"
												src="<%=basePath%>img/hwbn40x40.jpg" /> <!-- 评论者头像 --> </a>

										<div class="am-comment-main">
											<!-- 评论内容容器 -->
											<header class="am-comment-hd">
											<!--<h3 class="am-comment-title">评论标题</h3>-->
											<div class="am-comment-meta">
												<!-- 评论元数据 -->
												<a href="#link-to-user" class="am-comment-author">b***1
													(匿名)</a>
												<!-- 评论者 -->
												评论于
												<time datetime="">
												${u.createTime}
												</time>
											</div>
											</header>

											<div class="am-comment-bd">
												<div class="tb-rev-item " data-id="255776406962">
													<div class="J_TbcRate_ReviewContent tb-tbcr-content ">
														${u.content}
													</div>
													<div class="tb-r-act-bar">
														材质类型：${u.textture}&nbsp;${u.goodsType}&nbsp;&nbsp;重量：3.33克
													</div>
												</div>

											</div>
											<!-- 评论内容 -->
										</div>
									</li>
									</c:forEach>
									</c:if>
								</ul>

								<div class="clear"></div>

								<!--分页 -->
								<ul class="am-pagination am-pagination-right">
									<li class="am-disabled">
										<a href="#">&laquo;</a>
									</li>
									<li class="am-active">
										<a href="#">1</a>
									</li>
									<li>
										<a href="#">2</a>
									</li>
									<li>
										<a href="#">3</a>
									</li>
									<li>
										<a href="#">4</a>
									</li>
									<li>
										<a href="#">5</a>
									</li>
									<li>
										<a href="#">&raquo;</a>
									</li>
								</ul>
								<div class="clear"></div>

								<div class="tb-reviewsft">
									<div class="tb-rate-alert type-attention">
										购买前请查看该商品的
										<a href="#" target="_blank">购物保障</a>，明确您的售后保障权益。
									</div>
								</div>

							</div>
						
							<div class="am-tab-panel am-fade">
								<div class="like">
								
									<ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes">
									<c:if test="${!empty list1}">
  								<c:forEach items="${list1}" var="m">
										<li>
											<div class="i-pic limit">
												<div class="aa">
												<a href="toGd.do?ID=${m.goodsId}">
												<img class="width" src="<%=basePath%>${m.pictureDoPath}" /></a>
												</div>
												<p>
													${m.name}
												</p>
												<p class="price fl">
													<b>¥</b>
													<strong>${m.price}</strong>
												</p>
											</div>
										</li>
										</c:forEach>
									</c:if>
									</ul>
									
								</div>
								
								<div class="clear"></div>

								<!--分页 -->
								<ul class="am-pagination am-pagination-right">
									<li class="am-disabled">
										<a href="#">&laquo;</a>
									</li>
									<li class="am-active">
										<a href="#">1</a>
									</li>
									<li>
										<a href="#">2</a>
									</li>
									<li>
										<a href="#">3</a>
									</li>
									<li>
										<a href="#">4</a>
									</li>
									<li>
										<a href="#">5</a>
									</li>
									<li>
										<a href="#">&raquo;</a>
									</li>
								</ul>
								<div class="clear"></div>

							</div>
			
						</div>

					</div>

					<div class="clear"></div>

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
								<a href="#">关于雅拓</a>
								<a href="#">合作伙伴</a>
								<a href="#">联系我们</a>
								<a href="#">网站地图</a>
								<em>© 2016-2025 yatuo.com 版权所有</em>
							</p>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!--菜单 -->
		<div class=tip>
			<div id="sidebar">
				<div id="wrap">
					<div id="prof" class="item">
						<a href="#"> <span class="setting"></span> </a>
						<div class="ibar_login_box status_login">
							<div class="avatar_box">
								<p class="avatar_imgbox">
									<img src="images/no-img_mid_.jpg" />
								</p>
								<ul class="user_info">
									<li>
										用户名：sl1903
									</li>
									<li>
										级&nbsp;别：普通会员
									</li>
								</ul>
							</div>
							<div class="login_btnbox">
								<a href="#" class="login_order">我的订单</a>
								<a href="#" class="login_favorite">我的收藏</a>
							</div>
							<i class="icon_arrow_white"></i>
						</div>

					</div>
					<div id="shopCart" class="item">
						<a href="#"> <span class="message"></span> </a>
						<p>
							购物车
						</p>
						<p class="cart_num">
							0
						</p>
					</div>
					<div id="asset" class="item">
						<a href="#"> <span class="view"></span> </a>
						<div class="mp_tooltip">
							我的资产
							<i class="icon_arrow_right_black"></i>
						</div>
					</div>

					<div id="foot" class="item">
						<a href="#"> <span class="zuji"></span> </a>
						<div class="mp_tooltip">
							我的足迹
							<i class="icon_arrow_right_black"></i>
						</div>
					</div>

					<div id="brand" class="item">
						<a href="#"> <span class="wdsc"><img
									src="images/wdsc.png" /> </span> </a>
						<div class="mp_tooltip">
							我的收藏
							<i class="icon_arrow_right_black"></i>
						</div>
					</div>

					<div id="broadcast" class="item">
						<a href="#"> <span class="chongzhi"><img
									src="images/chongzhi.png" /> </span> </a>
						<div class="mp_tooltip">
							我要充值
							<i class="icon_arrow_right_black"></i>
						</div>
					</div>

					<div class="quick_toggle">
						<li class="qtitem">
							<a href="#"><span class="kfzx"></span> </a>
							<div class="mp_tooltip">
								客服中心
								<i class="icon_arrow_right_black"></i>
							</div>
						</li>
						<!--二维码 -->
						<li class="qtitem">
							<a href="#none"><span class="mpbtn_qrcode"></span> </a>
							<div class="mp_qrcode" style="display: none;">
								<img src="images/weixin_code_145.png" />
								<i class="icon_arrow_white"></i>
							</div>
						</li>
						<li class="qtitem">
							<a href="#top" class="return_top"><span class="top"></span> </a>
						</li>
					</div>

					<!--回到顶部 -->
					<div id="quick_links_pop" class="quick_links_pop hide"></div>

				</div>

			</div>
			<div id="prof-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					我
				</div>
			</div>
			<div id="shopCart-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					购物车
				</div>
			</div>
			<div id="asset-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					资产
				</div>

				<div class="ia-head-list">
					<a href="#" target="_blank" class="pl">
						<div class="num">
							0
						</div>
						<div class="text">
							优惠券
						</div> </a>
					<a href="#" target="_blank" class="pl">
						<div class="num">
							0
						</div>
						<div class="text">
							红包
						</div> </a>
					<a href="#" target="_blank" class="pl money">
						<div class="num">
							￥0
						</div>
						<div class="text">
							余额
						</div> </a>
				</div>

			</div>
			<div id="foot-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					足迹
				</div>
			</div>
			<div id="brand-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					收藏
				</div>
			</div>
			<div id="broadcast-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					充值
				</div>
			</div>
		</div>

	</body>

</html>
