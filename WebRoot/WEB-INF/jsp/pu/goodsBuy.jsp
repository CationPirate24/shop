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
		<meta name="viewport" content="width=device-width, initial-scale=1.0 ,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>结算页面</title>

		<link href="<%=basePath%>AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />

		<link href="<%=basePath%>basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="<%=basePath%>css/cartstyle.css" rel="stylesheet" type="text/css" />

		<link href="<%=basePath%>css/jsstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="<%=basePath%>js/address.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
		
		<script type="text/javascript">
		function sc(num){	
				var gn=confirm("确定要删除吗？")	
				if(gn==true){
				document.getElementById("addressDelete"+num).submit();
				return true;
				}else{
				return false;
				}
				
			}
		function xg(num){	
				var gn=confirm("确定要修改吗？")	
				if(gn==true){
				document.getElementById("addressUpdate"+num).submit();
				return true;
				}else{
				return false;
				}
				
			}
		function tj(){
			document.getElementById("tijiao").submit();
		}
		
		function lijimai(n) 
		{
		
			
			var str=document.getElementById(n).value;
			//alert(str);
			for(i=0;i<document.all.length;i++){
				//alert(5);
				if(document.all(i).type=="hidden"&&document.all(i).name=="addressId"){
					//alert(6);
					document.all(i).value=str;
					//alert(7);
					//document.getElementById("aaa").submit();
				}
			}	
					
		}
			
		function dzz(){
			//var m=0;
			alert(123);
			var str="";
			for(i=0;i<document.all.length;i++){
				if(document.all(i).checked=="true"){
							//str += document.all(i).value;
					
					str = document.all(i).value;
					alert(1);
				}
			}
			for(i=0;i<document.all.length;i++){
				if(document.all(i).type=="hidden"&&document.all(i).name=="addressId"){
					document.all(i).value=str;
					
				}
			}
			//document.getElementById("tijiao").submit();
		
		}
		</script>
	</head>

	<body>
	<% int count = 1 ; %>
	
		<!--顶部导航条 -->
		<div class="am-container header">
			
			<ul class="message-r">
				<div class="topMessage home">
					<div class="menu-hd"><a href="toWelcome.do" target="_top" class="h">商城首页</a></div>
				</div>
				<div class="topMessage my-shangcheng">
					<div class="menu-hd MyShangcheng"><a href="toWriteMember.do" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
				</div>
				<div class="topMessage mini-cart">
					<div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
				</div>
			</ul>
		</div>

			<!--悬浮搜索框-->

			<div class="nav white">
				<div class="logo"><img src="images/logo.png" /></div>
				<div class="logoBig">
					<li><img src="<%=basePath%>pic/_o/50/a7/735e2614e3911e621f0446e54597_204_52.c5.png" /></li>
				</div>

				
			</div>

			<div class="clear"></div>
			<div class="concent">
				<!--地址-->
					<div class="logistics">
						<h3>选择收货地址</h3>
						
						<ul class="pay-list">
						<c:if test="${empty addressList}">
			    			
								<li class="pay card">里面没有数据<span></span></li>
							
			    		</c:if>
			    		</ul>
			    		<ul class="pay-list">
				    	<c:if test="${!empty addressList}">
					    	<c:forEach items="${addressList}" var="s">					    		
									<input type="radio" name="dizhi" value="${s.id}" onclick="lijimai(<%=count %>)" id="<%=count++%>"/>&nbsp;&nbsp;&nbsp;&nbsp;${s.name}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${s.phone}
									<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${s.address}
									
									<br/>			
					    	</c:forEach>
					    </c:if>
					    </ul>
					   
					</div>
					
					<div class="clear"></div>
					<!--物流方式-->
					<div class="logistics">
						<h3>选择物流</h3>
						<br/>
						<ul class="pay-list">
							<li class="pay card"><input type="radio" name="wuliu" value="01"/>&nbsp;&nbsp;&nbsp;&nbsp;申通<span></span></li>
							<li class="pay qq"><input type="radio" name="wuliu" value="02"/>&nbsp;&nbsp;&nbsp;&nbsp;圆通<span></span></li>
							<li class="pay taobao"><input type="radio" name="wuliu" value="03"/>&nbsp;&nbsp;&nbsp;&nbsp;顺丰<span></span></li>
							<li class="pay taobao"><input type="radio" name="wuliu" value="04"/>&nbsp;&nbsp;&nbsp;&nbsp;韵达<span></span></li>
							<li class="pay taobao"><input type="radio" name="wuliu" value="05"/>&nbsp;&nbsp;&nbsp;&nbsp;中通<span></span></li>
						</ul>
						<li>&nbsp;</li>
					</div>
					<div class="clear"></div>
					<!--支付方式-->
					<div class="logistics">
						<h3>选择支付方式</h3>
						<ul class="pay-list">
							<li class="pay card"><input type="radio" name="zhifu" value="01"/>&nbsp;&nbsp;&nbsp;&nbsp;<img src="<%=basePath%>img/wangyin.jpg" />银联<span></span></li>
							<li class="pay qq"><input type="radio" name="zhifu" value="02"/>&nbsp;&nbsp;&nbsp;&nbsp;<img src="<%=basePath%>img/weizhifu.jpg" />微信<span></span></li>
							<li class="pay taobao"><input type="radio" name="zhifu" value="03"/>&nbsp;&nbsp;&nbsp;&nbsp;<img src="<%=basePath%>img/zhifubao.jpg" />支付宝<span></span></li>
						</ul>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
					</div>
					<div class="clear"></div>

					<!--订单 -->
					<div class="concent">
						<div id="payTable">
							<h3>确认订单信息</h3>
							<div class="cart-table-th">
								<div class="wp">

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
									<div class="th th-oplist">
										<div class="td-inner">配送方式</div>
									</div>

								</div>
							</div>
							<div class="clear"></div>

							<tr class="item-list">
								<div class="bundle  bundle-last">

									<div class="bundle-main">
										<ul class="item-content clearfix">
											<div class="pay-phone">
												<li class="td td-item">
													<div class="item-pic">
														<a href="#" class="J_MakePoint">
															<img src="<%=basePath%>${path}" class="itempic J_ItemImg"></a>
															
													</div>
													<div class="item-info">
														<div class="item-basic-info">
															<a href="#" class="item-title J_MakePoint" data-point="tbcart.8.11">${good.name}</a>
														</div>
													</div>
												</li>
												<li class="td td-info">
													<div class="item-props">
														<span class="sku-line">${good.textture}</span>
														<span class="sku-line">${good.type}</span>
													</div>
												</li>
												<li class="td td-price">
													<div class="item-price price-promo-promo">
														<div class="price-content">
															<em class="J_Price price-now">${good.price}</em>
														</div>
													</div>
												</li>
											</div>
											<li class="td td-amount">
												<div class="amount-wrapper ">
													<div class="item-amount ">
														<span class="phone-title">购买数量</span>
														<div class="sl">
															<%--<input class="min am-btn" name="" type="button" value="-" />
															--%><input  name="num" type="text" value="${num}" style="width:30px;" />
															<%--<input class="add am-btn" name="" type="button" value="+" />
														--%></div>
													</div>
												</div>
											</li>
											<li class="td td-sum">
												<div class="td-inner">
													<em tabindex="0" class="J_ItemSum number">${num*price}</em>
												</div>
											</li>
											<li class="td td-oplist">
												<div class="td-inner">
													<span class="phone-title">配送方式</span>
													<div class="pay-logis">
														<b class="sys_item_freprice">免运费</b>
													</div>
												</div>
											</li>

										</ul>
										<div class="clear"></div>

									</div>
							</tr>
							<div class="clear"></div>
							</div>

							
							</div>
							<div class="clear"></div>
							<div class="pay-total">
						<!--留言-->
							<div class="order-extra">
								<div class="order-user-info">
									<div id="holyshit257" class="memo">
										<label>买家留言：</label>
										<input type="text" title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）" placeholder="选填,建议填写和卖家达成一致的说明" class="memo-input J_MakePoint c2c-text-default memo-close">
										<div class="msg hidden J-msg">
											<p class="error">最多输入500个字符</p>
										</div>
									</div>
								</div>

							</div>
							
							<!--含运费小计 -->
							<div class="buy-point-discharge ">
								<p class="price g_price ">
									合计（含运费） <span>¥</span><em class="pay-sum">${num*price}</em>
								</p>
							</div>

							<!--信息 -->
							<div class="order-go clearfix">
								<div class="pay-confirm clearfix">
									<div class="box">
										<div tabindex="0" id="holyshit267" class="realPay"><em class="t">实付款：</em>
											<span class="price g_price ">
                                    <span>¥</span> <em class="style-large-bold-red " id="J_ActualFee">${num*price}</em>
                                    	
											</span>
										</div>

										<%--<div id="holyshit268" class="pay-address">

											<p class="buy-footer-address">
												<span class="buy-line-title buy-line-title-type">寄送至：</span>
												<span class="buy--address-detail">
								   				
												</span>
											</p>
											<p class="buy-footer-address">
												<span class="buy-line-title">收货人：</span>
												<span class="buy-address-detail">   
                                         <span class="buy-user">艾迪 </span>
												<span class="buy-phone">15871145629</span>
												</span>
											</p>
										</div>
									--%></div>

									<div id="holyshit269" class="submitOrder">
										<div class="go-btn-wrap">
											<a id="J_Go" href="javascript:(0)" onclick="tj()" class="btn-go" tabindex="0" title="点击此按钮，提交订单">提交订单</a>
											<form id="tijiao" action="toBuyingGood.do" method="post">
												<input type="hidden" name="totalPrice" value="${num*price}"/>
                                    			<input type="hidden" name="addressId"  id="tijiao1"/>
                                    			<input type="hidden" name="goodsId" value="${good.id}"/>
                                    			<input type="hidden" name="num" value="${num}"/>
											</form>
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>

						<div class="clear"></div>
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
			<div class="theme-popover-mask"></div>
			<div class="theme-popover">

				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add address</small></div>
				</div>
				<hr/>

				<div class="am-u-md-12">
					<form class="am-form am-form-horizontal" action="addAddressss.do" method="post">

						<div class="am-form-group">
							<label for="user-name" class="am-form-label">收货人</label>
							<div class="am-form-content">
								<input type="text" name="user-name" placeholder="收货人">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">手机号码</label>
							<div class="am-form-content">
								<input name="user-phone" placeholder="手机号必填" type="text">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-intro" class="am-form-label">详细地址</label>
							<div class="am-form-content">
								<textarea class="" rows="3" name="user-intro" placeholder="输入详细地址"></textarea>
								<small>100字以内写出你的详细地址...</small>
							</div>
						</div>

						<div class="am-form-group theme-poptit">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<div class="am-btn am-btn-danger">
									<input type="submit">
								</div>
								<div class="am-btn am-btn-danger close">
								<input type="button" value="取消">
								</div>
							</div>
						</div>
					</form>
				</div>

			</div>

			<div class="clear"></div>
	</body>

</html>
 
