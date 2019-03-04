<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>




<!DOCTYPE html>
<!--[if IE 7]><html class="ie7 lt-ie10"><![endif]-->
<!--[if IE 8]><html class="ie8 lt-ie10"><![endif]-->
<!--[if IE 9]><html class="ie9 lt-ie10"><![endif]-->
<!--[if gt IE 9]><!-->
<html>
	<!--<![endif]-->
	<head>
	<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title>欢迎登陆雅拓珠宝官方商城</title>
		<meta name="description"
			content="美丽说，专注时尚新款发布。海量新款每日上新，每周五新款大促火热进行中！旗下海淘品牌“HIGO”挑选全球时尚好货，满足你全方位的时尚购物体验！" />
		<meta name="keywords"
			content="美丽说,higo,衣服,鞋子,包包,配饰,家居,美妆,搭配,团购,美丽说higo" />
		<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>pc/css/base.css?1607171726.25" />
		<link rel="icon"
			href="<%=basePath%>pic/_o/75/6e/2f6871f198c0bd7615ffbf9a2f5f_49_48.c5.png"
			type="image/x-icon" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>pc/css/page/search/catalog.css?1607171726.25" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>pc/css/page/search/filter.css?1607171726.25" />
		<script type="text/javascript" src="<%=basePath%>pc/jsmin/fml.js?1">
</script>
		<script>
fml.setOptions( {
	'sversion' : '1607171726.25',
	'defer' : true,
	'modulebase' : 'pc/jsmin/'
});
var Meilishuo = {
	"config" : {
		"nt" : "1yQyN1tU7ssTVQ5GeZ16wzlv30ry2qIxWwb+91mpkPC4hsL6NGU0ABUAE2gyVhY2",
		"main_site_domain" : "/",
		"server_url" : "/",
		"picture_url" : "http://i.meilishuo.net/css/",
		"captcha_url" : "http://captcha.meilishuo.com/",
		"im_url" : "http://imlab.meilishuo.com/",
		"forSale" : false,
		"controller" : "catalog",
		"isLogin" : true,
		"userInfo" : {
			"name" : "阿猫来了",
			"uid" : "11cnkktq",
			"avatar" : "new1/v1/bdefaultavatar/03.jpg"
		}
	}
};</script>
	</head>
	<body>
		<div class="head">
            <div id="com-topbar">
              <div class="inner">
                <ul>
                   <li class="drop">
                    <a href="public/toLogin.do" class="nick" target="_blank">登录 </a>
                  </li>
                   <li class="drop">
                    <a href="public/toRegist.do" class="nick" target="_blank">注册 </a>
                  </li>
                  
                  <li class="drop">
                    <a href="public/toWriteMember.do" class="nick" target="_blank">个人中心 </a>
                  </li>
                  
                  <li class="drop">
                    <a href="public/toCollection.do" target="_blank">
                      <em class="collect"></em>我的收藏</a>
                    
                  </li>
                  <li class="drop cart-wrapper">
                    <a target="_blank" href="public/toShopCar.do" class="my-cart">
                      <em class="cart"></em>我的购物车</a>
                    <div class="hidden">
                      <ul class="cart-goods"></ul>
                      <p class="cart-account">
                        <span>购物车里还有
                          <a class="num" href="mycart.html" target="_blank"></a>件商品</span>
                        <a class="check-cart" href="mycart.html" target="_blank">查看购物车</a></p>
                    </div>
                  </li>
                  <li>
                    <a href="public/orderlist.do" target="_blank">
                      <em class="order"></em>我的订单</a>
                  </li>
                  <li class="drop">
                    <a target="_blank">帮助中心
                      <em class="arrow"></em></a>
                    <ul class="down">
                      <li>
                        <a href="buyerService.html" target="_blank">买家服务</a></li>
                      <li>
                        <a href="#/help#/index" target="_blank">商家服务</a></li>
                      <li>
                        <a href="ruleCenter.html" target="_blank">规则中心</a></li>
                    </ul>
                  </li>
                  <li>
                    <a href="user/toLogin.do" target="_blank" class="last">管理员登录</a></li>
                </ul>
              </div>
            </div>
			<div id="com-search">
				<div class="inner">
					<a href="index.html" class="logo"> <img
							src="<%=basePath%>pic/_o/50/a7/735e2614e3911e621f0446e54597_204_52.c5.png"
							alt=""> </a>
					<a href="" class="sublogo"> </a>
					
					<a class="spread" href="" target="_blank"> <img
							src="p2/160804/1rp_49cgihk50031c69jjk51ilkjk4950_210x157.gif" />
					</a>
				</div>
			</div>
			<div class="resumeWrap">
			</div>
		</div>
		<!-- 排序 -->
		<div class="orderWrap">
			<!-- 流行 热销 上新 价格 -->
			<div class="orderInfo" data-checkedSort="pop">
				<a class="fashion  on borderright  right" data-sort="pop">流行</a>
				<a class="fashion both " data-sort="sell">热销</a>
				<a class="fashion both " data-sort="new">上新</a>
				<a class="fashion price left "> <span class="priceCon">价格</span><span
					class="priceArrow"></span>
					<ul class="priceDesc">
						<li class="down" data-sort="price_desc">
							价格从高到低
						</li>
						<li class="up" data-sort="price_asc">
							价格从低到高
						</li>
					</ul> </a>
			</div>
			<!-- 价格部分 -->
			<div class="priceWrap">
				<!-- <form> -->
				<input class="minPrice" type="text" placeholder="￥" value="">
				<span>~</span>
				<input class="maxPrice" type="text" placeholder="￥" value="">
				<!-- </form> -->
				<a class="sure" href="javascript:void(0)">确认</a>
			</div>
			<!-- 金币抵现、 店铺优惠 -->
			<!-- <div class="checkBoxWrap">			<div class="checkInfo">				<span></span>				金币抵现			</div>			<!-- <input type="checkbox"> -->
			<!-- </div> -->
		</div>
		<div class="product">
		<c:if test="${!empty list}">
  				<c:forEach items="${list}" var="u">
			<ul class="clearfix product-ul" id="product-ul">


				<li class="product-list fl">
					<div class="img-size">
						<a class="img-link" target="_blank"
							href="public/toGd.do"

							
							style="background: url(<%=basePath%>${u.pictureDoPath}) no-repeat center center; background-size: cover;"><%--<img src="<%=basePath%>p2/160811/b11.png"/>--%></a>
					</div>

					<div class="product-info clearfix">
						<div class="price fl">
							<em class="price-u">¥</em><span class="price-n">${u.price}</span>
						</div>
						<div class="fav fr">
							<em class="fav-i"></em>
							<span class="fav-n">1231</span>
						</div>
					</div>

					<div></div>
					<div class="product-logo">
						<img
							src="b7/avatar/160520/1y0mpt_ie4tqodbgrrdcnlbhazdambqgqyde_50x54.jpg">
					</div>
					<a class="text-link" target="_blank"
						href="shopdetail.html#?1gl82bc?acm=2.ms.2_4.0.12380.yUhpUbBxJQ1.t_0">
						${u.name} </a>
				</li>
			</ul>
			</c:forEach>
			</c:if>
		</div>

		<!-- 登录用户显示搜索结果数目 -->
		<!-- <div class="forSignIn">		<p>您好 <span class="redFont">打捞星星的少年</span>，“衬衣” 相关的宝贝：</p>		<p class="verticalLine" style="padding-left:0;">购买过店铺找到 <span class="redFont">128</span> 件</p>		<p class="verticalLine">收藏过店铺找到 <span class="redFont">9</span> 件</p>		<p class="verticalLine">V4买家店铺找到 <span class="redFont">900</span> 件</p>		<p style="padding-left:11px;">回头客爱买店铺找到 <span class="redFont">900</span> 件</p>	</div> -->
		</div>
		<!-- <div id="pagination" class="pagination"></div> -->
		<!--翻页-->
		<div class="pageNav">
			<a class="pagePrev " style="display: none !important"
				href="?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=1&cpc_offset=20">&lt;上一页</a>
			<a class="currentpage"
				href="?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=1&cpc_offset=20">1</a>
			<a
				href="?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=2&cpc_offset=20">2</a>
			<a
				href="?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=3&cpc_offset=20">3</a>
			<a
				href="?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=4&cpc_offset=20">4</a>
			<a
				href="?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=5&cpc_offset=20">5</a>
			<a
				href="?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=6&cpc_offset=20">6</a>
			<a
				href="?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=7&cpc_offset=20">7</a>
			<i>...</i>
			<a
				href="?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=100&cpc_offset=20">100</a>
			<a class="pageNext" style=""
				href="?acm=1.mce.2.12299.0.0.15223_120219&mt=12.12299.r120219.15223&action=clothing&page=2&cpc_offset=20">下一页&gt;</a>
		</div>
		<script type="text/html" id="posterWall">
<? var data = this.v; ?> <div class="goodsWrap"> 	<div class="goodsContainer">	 	<a class="goodsImg" href="<?= data.link ?>" target="_blank" style="padding-bottom: <?= data.show.h / data.show.w * 100 ?>%;background:url('<?= data.show.img ?>') no-repeat center center;">	 		<!-- <img src="<?= data.show.img ?>" > -->	 	</a>			<? if(data.lefttop_taglist.length >0){ ?>				<div class="brandIcon">	 			<img src="<?= data.lefttop_taglist[0].img ?>">	 		</div>	 	<?}?>	 </div> 	<div class="priceWrap"> 		<div class="price">￥<?= data.price ?></div> 		<div class="shoucang"><span class="shoucangIcon"></span> 		<? if(data.cfav==null){ ?>				0	 	<?}else{?>	 		<?= data.cfav ?>	 	<?}?> 		</div> 	</div> 	<a class="goodsTitle" href="<?= data.link ?>"><?= data.title ?></a> </div></script>
		</div>
		<script>
fml.vars.ppath = JSON.stringify();</script>
		<div id="com-foot">
			<div class="inner">
				<div class="flist">
					<h4>
						买家帮助
					</h4>
					<div>
						<a href="noviceGuide.html" target="_blank">新手指南</a>
					</div>
					<div>
						<a href="serviceEnsure.html" target="_blank">服务保障</a>
					</div>
					<div>
						<a href="helpCommon.html" target="_blank">常见问题</a>
					</div>
					<div>
						<a href="shoppingHelp.html" target="_blank">购物帮助</a>
					</div>
				</div>
				<div class="flist">
					<h4>
						商家帮助
					</h4>
					<div>
						<a href="#/business" target="_blank">商家入驻</a>
					</div>
					<div>
						<a href="#" target="_blank">商家后台</a>
					</div>
					<div>
						<a href="#" target="_blank">商家推广</a>
					</div>
				</div>
				<div class="flist">
					<h4>
						关于我们
					</h4>
					<div>
						<a href="aboutus.html" target="_blank">关于雅拓</a>
					</div>
					<div>
						<a href="contactus.html" target="_blank">联系我们</a>
					</div>
				</div>
				<div class="flist aboutus">
					<h4>
						关注我们
					</h4>
					<div>
						<a href="#" target="_blank"> <span class="i-sina"></span>新浪微博
							<div class="follow">
								一键关注新浪微博
								<wb:follow-button uid="1718455577" type="red_1" width="67"
									height="24"></wb:follow-button>
							</div> </a>
					</div>
					<div>
						<a href="#" target="_blank"><span class="i-qzone"></span>QQ空间</a>
					</div>
					<div>
						<a href="#" target="_blank"><span class="i-tencent"></span>腾讯微博</a>
					</div>
				</div>
				<div class="flist service">
					<h4>
						雅拓珠宝微信服务号
					</h4>
					<img class="qrcode"
						src="p2/160802/7e_61hjl8kjfjfagkg3cdaj05fghck9c_100x100.png"
						alt="美丽说服务号二维码" />
				</div>
				<div class="flist last" style="float: left;">
					<h4>
						雅拓珠宝客户端下载
					</h4>
					<p style="background: none; margin-top: 0px;" class="client">
						<img class="qrcode"
							src="p2/160802/7e_74j23d2a5f5j3bj31h70375gbeec1_100x100.png">
					</p>
				</div>
				<div class="record">
					Copyright ©2016 yatuo.com &nbsp;
					<a
						href="new1/v1/bmisc/518ea1bbd36948b90e658485d2700e62/181714310539.pdf"
						target="_blank">电信与信息服务业务经营许可证100798号</a>&nbsp;
					<a
						href="p1/160811/idid_ifrtszjqmmzdazrumezdambqhayde_2436x3500.jpg"
						target="_blank">经营性网站备案信息</a>&nbsp;
					<br />
					京ICP备11031139号&nbsp; 京公网安备110108006045&nbsp;&nbsp;
					客服电话：4000-800-577&nbsp; 文明办网文明上网举报电话：010-82615762 &nbsp;
					<a href="http://net.china.com.cn/index.htm" target="_blank">违法不良信息举报中心</a>
				</div>
			</div>
		</div>
		<p style="display: none" class="biu-login">
			11cnkktq
		</p>
		<div class="biu-sidebar">
			<div class="biu-options">
				<div class="biu-download">
					下载
					<span>APP</span>
					<div class="mls-qrcode">
						<img src="<%=basePath%>p2/160802/7e_0h22fa0g03cgl0c5676cb6k2ii71h_140x140.png">
					</div>
				</div>
				<div class="biu-cart">
					<a href="mycart.html" target="_blank"><span
						class="cart-num biu-cart-num"></span>购物车</a>
				</div>
				<div class="biu-service">
					<a class="biu-open-im"><span
						class="service-num biu-service-num"></span>消息</a>
				</div>
				<div class="biu-coupon">
					<a href="coupon.html#" target="_blank"><span
						class="coupon-num biu-coupon-num"></span>优惠券</a>
				</div>
				<div class="biu-mark">
					<a href="mylike.html" target="_blank">收藏</a>
				</div>
				<div class="biu-footprint">
					<a href="footprint.html" target="_blank">足迹</a>
				</div>
			</div>
			<div class="biu-go2top">
			</div>
		</div>
		<script type="text/javascript" src="<%=basePath%>pc/jsmin/jquery.js?1.12.4">
</script>
		<script type="text/javascript" src="<%=basePath%>__static/logger/0.1.8/logger.js">
</script>
		<script src="<%=basePath%>__newtown/im_web/assets/common/openim/index.js">
</script>
		<script src="<%=basePath%>pc/~page/search/catalog+base?1607171726.25">
</script>
		<script>
fml.use('page/search/catalog');;
fml.use('base');;
fml.iLoad();</script>
	</body>
</html>