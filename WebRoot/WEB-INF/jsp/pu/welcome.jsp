<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <base href="<%=basePath%>">

<!DOCTYPE html>

        <html>
        <!--<![endif]-->
        
        <head>
          <meta charset="utf-8" />
          <title>欢迎登陆雅拓珠宝官方商城</title>
          <!--<meta name="description" content="美丽说是白领女性时尚消费第一品牌，为超过1亿注册用户提供导购信息。建立300万全球女性时尚品牌商品库，超过1000家全球品牌达成官方合作导购体验，更好的满足白领女性的时尚消费需求。" />
          <meta name="keywords" content="美丽说,美丽说官网,美丽说首页,美丽说登录,导购,白领,女装,网购" />-->
          <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
          <link rel="stylesheet" type="text/css" href="<%=basePath%>pc/css/base.css?1607170150.25" />
          <link rel="icon" href="<%=basePath%>pic/_o/9e/fb/7d026282ff00a259b6a7b90eee6d_48_48.c5.png" type="image/x-icon"/>
<link rel="stylesheet" type="text/css" href="<%=basePath%>pc/css/page/select/detail.css?1607191113.25"/>
          <link rel="icon" href="" type="image/x-icon" />
          <link rel="stylesheet" type="text/css" href="<%=basePath%>pc/css/page/welcome.css?1607170150.25" />
          <script type="text/javascript" src="<%=basePath%>pc/jsmin/fml.js?1"></script>
          <script>fml.setOptions({
              'sversion': '1607170150.25',
              'defer': true,
              'modulebase': 'pc/jsmin/'
            });
            var Meilishuo = {
              "config": {
                "nt": "1yQyN1tU7ssTVQ5GeZ16w7IF/0VPJbAp1lO2BxZa52X2e4+pti0UtSulDoUBzzqn",
                "main_site_domain": "/",
                "server_url": "/",
                "picture_url": "#",
                "captcha_url": "#",
                "im_url": "http://imlab.meilishuo.com/",
                "forSale": false,
                "controller": "welcome",
                "isLogin": true,
                "userInfo": {
                  "name": "阿猫来了",
                  "uid": "11cnkktq",
                  "avatar": "new1/v1/bdefaultavatar/03.jpg"
                }
              }
            };
            
          
            
            
            
            
            
            
            </script>
        </head>
        
        <body >
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
                <a href="public/toWelcome.do" class="logo">
                  <img src="<%=basePath%>pic/_o/50/a7/735e2614e3911e621f0446e54597_204_52.c5.png
"></a>
                <a href="" class="sublogo"></a>
               
                <a class="spread" href="" target="_blank">
                 </a>
              </div>
            </div>
            <div class="nav_main_box">
              <ul class="nav_main">
                <li class="all">全部商品
                  <div class="attr_box">
                    <ul class="sec_attr">
                      <li class="list">
                        <div class="list_cont">
                          <h3 class="nav_tle">
                            <a href="public/toList.do?ID=0" target="_blank">黄金</a></h3>
                          <form action="">
                          <p class="listP">
                          
                            <a class="red" href="public/toList.do?ID=1"target="_blank" name="ff" value="ggg">金戒指</a>
                            <a href="public/toList.do?ID=2" target="_blank">金项链</a>
							 <a class="red" href="public/toList.do?ID=3" target="_blank">金手链/脚链</a>
                           
							
                            </p>
                            </form>
                          <samp class="corner">
                            <img src="<%=basePath%>p1/160810/idid_ifrtom3dmqygcojumezdambqhayde_6x10.png" /></samp>
                        </div>
                        
                        
                      </li>
                      <li class="list">
                        <div class="list_cont">
                          <h3 class="nav_tle">
                            <a href="" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;</a></h3>
                          <p class="listP">
                            <a href="" target="_blank"></a>
                            <a href="public/toList.do?ID=4" target="_blank">金吊坠</a>
                            <a href="public/toList.do?ID=5" target="_blank">金手镯</a>
							<a class="red" href="public/toList.do?ID=6" target="_blank">金耳饰</a>
							
							</p>
                          <samp class="corner">
                            <img src="<%=basePath%>p1/160810/idid_ifrtom3dmqygcojumezdambqhayde_6x10.png" /></samp>
                        </div>
                       
                      </li>
                      <li class="list">
                        <div class="list_cont">
                          <h3 class="nav_tle">
                            <a href="public/toList.do?ID=7" target="_blank">钻石</a></h3>
                          <p class="listP">
                            <a class="red" href="public/toList.do?ID=40" target="_blank">钻石戒指</a>
                            <a href="public/toList.do?ID=34" target="_blank">钻石项链</a>
                            <a href="public/toList.do?ID=35" target="_blank">钻石手链</a>
                            <a class="red" href="list.html#10057370?action=trousers&mt=12.12827.r127964.15998&acm=1.mce.2.12827.0.0.15998_127964" target="_blank"></a></p>
                          <samp class="corner">
                            <img src="<%=basePath%>p1/160810/idid_ifrtom3dmqygcojumezdambqhayde_6x10.png" /></samp>
                        </div>                        
                      </li>

                      <li class="list">
                        <div class="list_cont">
                          <h3 class="nav_tle">
                            <a href="list.html#10057052?action=shoes&mt=12.12828.r127653.15999&acm=1.mce.2.12828.0.0.15999_127653" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;</a></h3>
                          <p class="listP">
                            <a class="red" href="list.html#10059081?action=shoes&mt=12.12828.r127655.15999&acm=1.mce.2.12828.0.0.15999_127655" target="_blank"></a>
                            <a href="public/toList.do?ID=8" target="_blank">钻石吊坠</a>
                            <a href="public/toList.do?ID=9" target="_blank">钻石耳坠</a></p>
                          <samp class="corner">
                            <img src="<%=basePath%>p1/160810/idid_ifrtom3dmqygcojumezdambqhayde_6x10.png" /></samp>
                        </div>                       
                      </li>

                      <li class="list">
                        <div class="list_cont">
                          <h3 class="nav_tle">
                            <a href="public/toList.do?ID=10" target="_blank">K金</a></h3>
                          <p class="listP">
                            <a class="red" href="public/toList.do?ID=11" target="_blank">K金戒指</a>
                            <a href="public/toList.do?ID=12" target="_blank">K金项链</a>
                            <a href="public/toList.do?ID=13" target="_blank">K金手链</a></p>
                          <samp class="corner">
                            <img src="<%=basePath%>p1/160810/idid_ifrtom3dmqygcojumezdambqhayde_6x10.png" /></samp>
                        </div>                      
                      </li>

                      <li class="list">
                        <div class="list_cont">
                          <h3 class="nav_tle">
                            <a href="" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;</a></h3>
                          <p class="listP">
                            <a class="red" href="list.html#10057429?action=accessories&mt=12.12830.r127491.16001&acm=1.mce.2.12830.0.0.16001_127491" target="_blank"></a>
                            <a href="public/toList.do?ID=14" target="_blank">K金吊坠</a>
                            <a class="red" href="javascript:(0)" target="_blank">K金手镯</a>
                            <a href="public/toList.do?ID=16" target="_blank">K金耳饰</a></p>
                          <samp class="corner">
                            <img src="<%=basePath%>p1/160810/idid_ifrtom3dmqygcojumezdambqhayde_6x10.png" /></samp>
                        </div>                
                      </li>


                      <li class="list">
                        <div class="list_cont">
                          <h3 class="nav_tle">
                            <a href="public/toList.do?ID=17" target="_blank">铂金</a></h3>
                          <p class="listP">
                            <a href="public/toList.do?ID=18" target="_blank">铂金戒指</a>
                            <a class="red" href="public/toList.do?ID=33" target="_blank">铂金项链</a>
                            <a href="public/toList.do?ID=19" target="_blank">铂金手链</a>
                            </p>
                          <samp class="corner">
                            <img src="<%=basePath%>p1/160810/idid_ifrtom3dmqygcojumezdambqhayde_6x10.png" /></samp>
                        </div>                       
                      </li>

                      <li class="list">
                        <div class="list_cont">
                          <h3 class="nav_tle">
                            <a href="list.html#10059310?action=neiyi&mt=12.12832.r127826.16003&acm=1.mce.2.12832.0.0.16003_127826" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;</a></h3>
                          <p class="listP">
                            <a class="red" href="list.html#10057241?action=neiyi&mt=12.12832.r127832.16003&acm=1.mce.2.12832.0.0.16003_127832" target="_blank"></a>
                            <a class="red" href="public/toList.do?ID=20" target="_blank">铂金吊坠</a>
                            <a href="public/toList.do?ID=21" target="_blank">铂金手镯</a>
                            <a class="red" href="javascript:(0)" target="_blank">铂金耳饰</a>
							</p>
							
                          <samp class="corner">
                            <img src="<%=basePath%>p1/160810/idid_ifrtom3dmqygcojumezdambqhayde_6x10.png" /></samp>
                        </div>
                        
                      </li>
                      <li class="list">
                        <div class="list_cont">
                          <h3 class="nav_tle">
                            <a href="public/toList.do?ID=23" target="_blank">珍珠</a></h3>
                          <p class="listP">
                            <a class="red" href="public/toList.do?ID=24" target="_blank">珍珠戒指</a>
                            <a href="public/toList.do?ID=36" target="_blank">珍珠项链</a>
                            <a href="public/toList.do?ID=25" target="_blank">珍珠吊坠</a>
                            </p>
                          <samp class="corner">
                            <img src="<%=basePath%>p1/160810/idid_ifrtom3dmqygcojumezdambqhayde_6x10.png" /></samp>
                        </div>
                        
                      </li>
                      <li class="list">
                        <div class="list_cont">
                          <h3 class="nav_tle">
                            <a href="" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;</a></h3>
                          <p class="listP">
                            <a href="" target="_blank"></a>
                            <a class="red" href="public/toList.do?ID=37" target="_blank">珍珠手链</a>
                            <a href="javascript:(0)" target="_blank">珍珠手镯</a>
							<a class="red" href="javascript:(0)" target="_blank">珍珠耳饰</a>
                           </p>
                          <samp class="corner">
                            <img src="<%=basePath%>p1/160810/idid_ifrtom3dmqygcojumezdambqhayde_6x10.png" /></samp>
                        </div>                       
                      </li>

                      <li class="list">
                        <div class="list_cont">
                          <h3 class="nav_tle">
                            <a href="public/toList.do?ID=28" target="_blank">宝石</a></h3>
                          <p class="listP">
                            <a class="red" href="public/toList.do?ID=29" target="_blank">宝石戒指</a>
                            <a href="public/toList.do?ID=30" target="_blank">宝石项链</a>
                            <a class="red" href="public/toList.do?ID=31" target="_blank">宝石吊坠</a></p>
                          <samp class="corner">
                            <img src="<%=basePath%>p1/160810/idid_ifrtom3dmqygcojumezdambqhayde_6x10.png" /></samp>
                        </div>                      
                      </li>

                      <li class="list">
                        <div class="list_cont">
                          <h3 class="nav_tle">
                            <a href="list.html#10057060?action=food&mt=12.12836.r128002.16007&acm=1.mce.2.12836.0.0.16007_128002" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;</a></h3>
                          <p class="listP">
                            <a class="red" href="list.html#10057252?action=food&mt=12.12836.r128003.16007&acm=1.mce.2.12836.0.0.16007_128003" target="_blank"></a>
                            <a href="public/toList.do?ID=38" target="_blank">宝石耳饰</a>
                            <a href="javascript:(0)" target="_blank">宝石手链</a>
                            <a href="public/toList.do?ID=32" target="_blank">宝石手镯</a></p>
                          <samp class="corner">
                            <img src="<%=basePath%>p1/160810/idid_ifrtom3dmqygcojumezdambqhayde_6x10.png" /></samp>
                        </div>
                       
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="nav_tab">
                  <a href="public/toWelcome.do">首页</a></li>
               <!-- <li class="nav_tab">
                  <a href="brandstreet.html?mt=12.12557.r121665.15640&acm=1.mce.2.12557.0.0.15640_121665">黄金</a></li>
                <li class="nav_tab">
                  <a href="daimaiPCrukou.html?mt=12.12557.r121666.15640&acm=1.mce.2.12557.0.0.15640_121666">钻石</a></li>-->
                <li class="nav_tab">
                  <a href="public/toHunjia.do">婚嫁</a></li>
				   <li class="nav_tab">
                  <a href="public/togift.do">礼品</a></li>
				  <li class="nav_tab">
                  <a href="public/toDz.do">定制</a></li>
				  <li class="nav_tab">
                  <a href="public/toHy.do">会员中心</a></li>
              </ul>
            </div>
          </div>
          <div class="top_wrap">
            <div class="banner_box" id="banner">
              <div class="top_bnr">
                <ul class="banner">
                 <li>
                    <a class="pic imgBox" name="秋款新装" href="public/toList.do?ID=0" target="_blank" style="background: repeat center top;">
                      <span asrc="<%=basePath%>p2/160816/1us_2aa14eif6jg3cc003e33l1033926c_896x447.jpg"></span>
                    </a>
                  </li>
                  <li>
                    <a class="pic imgBox" name="那些传说中的斩男色" href="public/toList.do?ID=0" target="_blank" style="background: repeat center top;">
                      <span asrc="<%=basePath%>p2/160817/1su_2def54fle0d54bk8k65hkd82i5lja_896x447.jpg"></span>
                    </a>
                  </li>
                  <li>
                    <a class="pic imgBox" name="百元手表1元秒杀" href="public/toList.do?ID=17" target="_blank" style="background: repeat center top;">
                      <span asrc="<%=basePath%>p2/160816/1sc_16kl97dljdf5cf4f74l7e6373c312_896x447.jpg"></span>
                    </a>
                  </li>
                  <li>
                    <a class="pic imgBox" name="秋色撩人我撩你" href="public/toList.do?ID=17" target="_blank" style="background: repeat center top;">
                      <span asrc="<%=basePath%>p2/160816/1wi_613lahki1692a693b5701l9224kka_896x447.jpg"></span>
                    </a>
                  </li>

                </ul>
              </div>
              <div class="num"></div>
              <div class="bnr_btn_wrap">
                <span class="bnr_btn prev"></span>
                <span class="bnr_btn next"></span>
              </div>
            </div>
            <ul class="top_ad_box">
              <li>
                <a href="javascript:(0)" target="_blank" class="imgBox">
                  <span asrc="<%=basePath%>p2/160817/1w9_394l8jf9f1h1ia6d531ca55g3ai85_285x285.jpg"></span>
                </a>
              </li>
              <li>
                <a href="javascript:(0)" target="_blank" class="imgBox">
                  <span asrc="<%=basePath%>p2/160817/1s4_6kg07adibhf1gd439ek814dh3hghe_285x285.jpg"></span>
                </a>
              </li>
              <li>
                <a href="javascript:(0)" target="_blank" class="imgBox">
                  <span asrc="<%=basePath%>p2/160811/1c2_224flc4959l243jibb0ab39cg89cf_285x285.jpg"></span>
                </a>
              </li>
              <li class="mr0">
                <a href="javascript:(0)" target="_blank" class="imgBox">
                  <span asrc="<%=basePath%>p2/160810/1s6_2797cc0c7i6aka37g8ag34bjf27ib_285x285.jpg"></span>
                </a>
              </li>
            </ul>
            <!-- 官网直邮 -->
             <h2 alt="为你精选">
              <img src="<%=basePath%>p2/160810/1sy_4ibl936dd3lbj53f44l1dia5355ij_150x71.jpg"></h2>
            <div class="brand_wrap">
              <div class="brand_box">
                <a href="javascript:(0)" class="ad_up imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160811/1c2_25lc8gijhg7756ie58g35h81kihl3_283x297.png"></span>
                </a>
                <div class="ad_l">
                  <a href="javascript:(0)" class="ad_list imgBox" target="_blank">
                    <span asrc="<%=basePath%>p2/160804/1rs_776j72li9iff1ff3d63lkjb3600f9_142x98.jpg"></span>
                  </a>
                  <a href="javascript:(0)" class="ad_list imgBox" target="_blank">
                    <span asrc="<%=basePath%>p2/160804/1rs_05ai7jgib92cek55lf80hic0j03kh_142x98.jpg"></span>
                  </a>
                  <a href="javascript:(0)" class="ad_list imgBox" target="_blank">
                    <span asrc="<%=basePath%>p2/160811/1c2_48e3b7853jhj1e613674ld7kifb15_140x96.jpg"></span>
                  </a>
                  <a href="shop.html#113qxwqi?ptp=1.__item_detail.0.0.oyzTf&mt=12.12891.r123178.16072&acm=1.mce.2.12891.0.0.16072_123178" class="ad_list imgBox" target="_blank">
                    <span asrc="<%=basePath%>p2/160811/1c2_6dj7i6e6g6k9he136g1c2bekb93jc_140x96.jpg"></span>
                  </a>
                  <a href="shop.html#113qxyxo?mt=12.12891.r123179.16072&acm=1.mce.2.12891.0.0.16072_123179" class="ad_list imgBox" target="_blank">
                    <span asrc="<%=basePath%>p2/160804/1rs_6g4di9153a8c1hf2hega73jlgl52b_142x98.jpg"></span>
                  </a>
                  <a href="shop.html#11706fs8?mt=12.12891.r123180.16072&acm=1.mce.2.12891.0.0.16072_123180" class="ad_list imgBox" target="_blank">
                    <span asrc="<%=basePath%>p2/160804/1rs_6ih5caked953e9l5a36d901kecc95_142x98.jpg"></span>
                  </a>
                </div>
              </div>
              <div class="showOne">
                <a href="shopdetail.html#?1gldwym?ptp=1.CmymMoKw._items.0.9bv0o&mt=12.12892.r123181.16073&acm=1.mce.2.12892.0.0.16073_123181" target="_blank">
                  <img src="<%=basePath%>p2/160811/1c2_54dck82g0jh2kj5c79h47l7al8e0d_305x589.jpg"></a>
              </div>
              <div class="ad_r">
                <a href="shop.html#11706fou/list/index?categoryId=20042035&ptp=1.__item_detail.0.0.sXoee&mt=12.12893.r123182.16074&acm=1.mce.2.12893.0.0.16074_123182" class="imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160811/1c2_0e815lhgdkh43j3l4la0467j8ih48_294x293.jpg"></span>
                </a>
                <a href="shop.html#11706gm6/list/index?categoryId=20025177&ptp=1.CmymMoKw.0.0.hvdc7&mt=12.12893.r123183.16074&acm=1.mce.2.12893.0.0.16074_123183" class="imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160811/1c2_10g4g50j2g5i981c15aa75l09610k_294x293.jpg"></span>
                </a>
                <a href="shop.html#113qxyxw/list/index?categoryId=10843916&ptp=1.CmymMoKw.0.0.Dffqh&mt=12.12893.r123184.16074&acm=1.mce.2.12893.0.0.16074_123184" class="imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160811/1c2_385c3e1f256h791f01c8gi79bc1b6_294x293.jpg"></span>
                </a>
                <a href="shop.html#11706fou/list/index?categoryId=20042055&ptp=1.CmymMoKw.0.0.f0WAS&mt=12.12893.r123185.16074&acm=1.mce.2.12893.0.0.16074_123185" class="imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160811/1c2_8fd9401i1ad0a3h3a3ij5d0ac9cg4_294x293.jpg"></span>
                </a>
              </div>
            </div>
            <!-- 官网直邮 end -->
            
            <h2 alt="热销黄金">
              <img src="<%=basePath%>p2/160810/1sy_7kgkelaf2k0kh060dbh8d6cife273_150x71.jpg"></h2>
            <div class="common_box">
              <div class="ad_t">
                <a href="list.html#10059097?action=clothing&mt=12.13045.r127310.16254&acm=1.mce.2.13045.0.0.16254_127310" class="ad1 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160810/1sd_3fbhd1ia7e5ah485ia02g7e7gcg44_590x284.png"></span>
                </a>
                <a href="list.html#10058128?action=clothing&mt=12.13045.r127333.16254&acm=1.mce.2.13045.0.0.16254_127333" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sd_7hhk4jf29h4g8b4h1a248ee4e35kj_184x284.png"></span>
                </a>
                <a href="list.html#10058866?action=clothing&mt=12.13045.r127337.16254&acm=1.mce.2.13045.0.0.16254_127337" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sd_331c68l3b204726187cl64k8h8b72_184x284.png"></span>
                </a>
                <a href="list.html#10058129?action=clothing&mt=12.13045.r127340.16254&acm=1.mce.2.13045.0.0.16254_127340" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sd_8ek07280fi6fhlkijd817hg72708c_184x284.png"></span>
                </a>
              </div>
              <div class="ad_b">
                <div class="ad_attr_box">
                 <a href="list.html#10059472?action=clothing&mt=12.13045.r133480.16254&acm=1.mce.2.13045.0.0.16254_133480" target="_blank">金戒指</a>
                  <a href="list.html#10059472?action=clothing&mt=12.13045.r133480.16254&acm=1.mce.2.13045.0.0.16254_133480" target="_blank">金项链</a>
                  <a href="list.html#10059473?action=clothing&mt=12.13045.r133482.16254&acm=1.mce.2.13045.0.0.16254_133482" target="_blank" class="red">金手链</a>
                  <a href="list.html#10057107?action=clothing&mt=12.13045.r128076.16254&acm=1.mce.2.13045.0.0.16254_128076" target="_blank">金耳坠</a>
                  <a href="list.html#10057098?action=clothing&mt=12.13045.r128075.16254&acm=1.mce.2.13045.0.0.16254_128075" target="_blank" class="red">金手镯</a>
                  <a href="list.html#10057096?action=clothing&mt=12.13045.r128072.16254&acm=1.mce.2.13045.0.0.16254_128072" target="_blank" class="red">金耳饰</a>
                 </div>
                <a href="list.html#10057049?action=clothing&mt=12.13045.r127313.16254&acm=1.mce.2.13045.0.0.16254_127313" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sd_50g38el56kaf9c0j30a2cdd6gde3k_285x220.png"></span>
                </a>
                <a href="list.html#10059112?action=clothing&mt=12.13045.r127318.16254&acm=1.mce.2.13045.0.0.16254_127318" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160810/1sd_3i4hiikak3hll547fcj7c48c1b71b_285x220.png"></span>
                </a>
                <a href="list.html#10059113?action=clothing&mt=12.13045.r127324.16254&acm=1.mce.2.13045.0.0.16254_127324" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160810/1sd_51g7j8k7gh6kleh254gkjahcfd827_285x220.png"></span>
                </a>
              </div>
            </div>
            <h2 alt="优雅铂金">
              <img src="<%=basePath%>p2/160810/1sy_5b6aikjb3cgdk9jj8j65h5dafh13i_150x71.jpg"></h2>
            <div class="common_box">
              <div class="ad_t">
                <a href="list.html#10057900?action=skirt&mt=12.13046.r127214.16255&acm=1.mce.2.13046.0.0.16255_127214" class="ad1 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160810/1sy_086081299j6gkilaiaic0k1c73a6k_590x284.jpg"></span>
                </a>
                <a href="list.html#10057275?action=skirt&mt=12.13046.r127215.16255&acm=1.mce.2.13046.0.0.16255_127215" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160810/1sy_2f96i84j1gic7fl5d6h55i99l32ck_184x284.jpg"></span>
                </a>
                <a href="list.html#10057280?action=skirt&mt=12.13046.r127216.16255&acm=1.mce.2.13046.0.0.16255_127216" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sy_20ld2h75a7dld879026ca4dga2l23_184x284.jpg"></span>
                </a>
                <a href="list.html#10057277?action=skirt&mt=12.13046.r127219.16255&acm=1.mce.2.13046.0.0.16255_127219" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sy_367fcjf8gdij05lbl3g941l87ajah_184x284.jpg"></span>
                </a>
              </div>
              <div class="ad_b">
                <div class="ad_attr_box">
                  <a href="list.html#10057332?action=skirt&mt=12.13046.r127243.16255&acm=1.mce.2.13046.0.0.16255_127243" target="_blank" class="red"></a>
                  <a href="list.html#10057276?action=skirt&mt=12.13046.r127249.16255&acm=1.mce.2.13046.0.0.16255_127249" target="_blank" class="red"></a>
                  <a href="list.html#10057284?action=skirt&mt=12.13046.r127267.16255&acm=1.mce.2.13046.0.0.16255_127267" target="_blank"></a>
                  <a href="list.html#10057301?action=skirt&mt=12.13046.r127271.16255&acm=1.mce.2.13046.0.0.16255_127271" target="_blank">铂金戒指</a>
                  <a href="list.html#10057305?action=skirt&mt=12.13046.r127303.16255&acm=1.mce.2.13046.0.0.16255_127303" target="_blank" class="red">铂金项链</a>
                  <a href="list.html#10057321?action=skirt&mt=12.13046.r127309.16255&acm=1.mce.2.13046.0.0.16255_127309" target="_blank">铂金手镯</a>
                  <a href="list.html#10057291?action=skirt&mt=12.13046.r127316.16255&acm=1.mce.2.13046.0.0.16255_127316" target="_blank">铂金手链</a>
                  <a href="list.html#10057323?action=skirt&mt=12.13046.r133208.16255&acm=1.mce.2.13046.0.0.16255_133208" target="_blank">铂金耳坠</a>
                  <a href="list.html#10057325?action=skirt&mt=12.13046.r133213.16255&acm=1.mce.2.13046.0.0.16255_133213" target="_blank">铂金耳饰</a>
                  </div>
                <a href="list.html#10058557?action=skirt&mt=12.13046.r127223.16255&acm=1.mce.2.13046.0.0.16255_127223" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sy_0k11eeecc0aj2e99gak95d2fjec4c_285x220.jpg"></span>
                </a>
                <a href="list.html#10059249?action=skirt&mt=12.13046.r127228.16255&acm=1.mce.2.13046.0.0.16255_127228" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sy_7k4f7l86d7akj2ch6che3h885bhk0_285x220.jpg"></span>
                </a>
                <a href="list.html#10057153?action=skirt&mt=12.13046.r127238.16255&acm=1.mce.2.13046.0.0.16255_127238" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sy_648g2318gi9ga53l85lihekda88d0_285x220.jpg"></span>
                </a>
              </div>
            </div>
            <h2 alt="魅力K金">
              <img src="<%=basePath%>p2/160810/1sy_6g3edk5k669kac3fbfd0ch589b895_150x71.jpg"></h2>
            <div class="common_box">
              <div class="ad_t">
                <a href="list.html#10057366?action=trousers&mt=12.13047.r127737.16256&acm=1.mce.2.13047.0.0.16256_127737" class="ad1 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160817/upload_89k2gkhjejg2dkf9l6ae894374eb8_590x284.jpg"></span>
                </a>
                <a href="list.html#10057367?action=trousers&mt=12.13047.r127739.16256&acm=1.mce.2.13047.0.0.16256_127739" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1s3_1j92eda8cbda7i82cfdf98c86cj07_184x284.jpg"></span>
                </a>
                <a href="list.html#10057370?action=trousers&mt=12.13047.r127741.16256&acm=1.mce.2.13047.0.0.16256_127741" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1s3_31ea9ac2d43dh8hlbc901c47025kg_184x284.jpg"></span>
                </a>
                <a href="list.html#10057382?action=trousers&mt=12.13047.r127743.16256&acm=1.mce.2.13047.0.0.16256_127743" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160811/1s3_481fh651h1gl203e25lgdk657kaf0_184x284.jpg"></span>
                </a>
              </div>
              <div class="ad_b">
                <div class="ad_attr_box">
                  <a href="list.html#10057380?action=trousers&mt=12.13047.r127776.16256&acm=1.mce.2.13047.0.0.16256_127776" target="_blank"></a>
                  <a href="list.html#10058137?action=trousers&mt=12.13047.r127781.16256&acm=1.mce.2.13047.0.0.16256_127781" target="_blank" class="red"></a>
                  <a href="list.html#10059030?action=trousers&mt=12.13047.r127783.16256&acm=1.mce.2.13047.0.0.16256_127783" target="_blank" class="red"></a>
                  <a href="list.html#10058336?action=trousers&mt=12.13047.r127786.16256&acm=1.mce.2.13047.0.0.16256_127786" target="_blank">K金戒指</a>
                  <a href="list.html#10057377?action=trousers&mt=12.13047.r130426.16256&acm=1.mce.2.13047.0.0.16256_130426" target="_blank">K金项链</a>
                  <a href="list.html#10057378?action=trousers&mt=12.13047.r130436.16256&acm=1.mce.2.13047.0.0.16256_130436" target="_blank" class="red">K金耳坠</a>
                  <a href="list.html#10058551?action=trousers&mt=12.13047.r127790.16256&acm=1.mce.2.13047.0.0.16256_127790" target="_blank">K金手链</a>
                  <a href="list.html#10057374?action=trousers&mt=12.13047.r127793.16256&acm=1.mce.2.13047.0.0.16256_127793" target="_blank">K金耳饰</a>
                  <a href="list.html#10058135?action=trousers&mt=12.13047.r127807.16256&acm=1.mce.2.13047.0.0.16256_127807" target="_blank" class="red">K金手镯</a>
                  <a href="list.html#10058138?action=trousers&mt=12.13047.r130430.16256&acm=1.mce.2.13047.0.0.16256_130430" target="_blank" class="red"></a>
                  <a href="list.html#10057366?action=trousers&mt=12.13047.r130431.16256&acm=1.mce.2.13047.0.0.16256_130431" target="_blank"></a>
                  <a href="list.html#10057372?action=trousers&mt=12.13047.r130435.16256&acm=1.mce.2.13047.0.0.16256_130435" target="_blank"></a>
                  <a href="list.html#10057375?action=trousers&mt=12.13047.r130437.16256&acm=1.mce.2.13047.0.0.16256_130437" target="_blank"></a>
                  <a href="list.html#10057376?action=trousers&mt=12.13047.r130439.16256&acm=1.mce.2.13047.0.0.16256_130439" target="_blank" class="red"></a>
                  <a href="list.html#10057368?action=trousers&mt=12.13047.r133157.16256&acm=1.mce.2.13047.0.0.16256_133157" target="_blank" class="red"></a></div>
                <a href="list.html#10057403?action=trousers&mt=12.13047.r127769.16256&acm=1.mce.2.13047.0.0.16256_127769" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1s3_2d2e0l2i5h6bja3c56eh6c1k21eeh_285x220.jpg"></span>
                </a>
                <a href="list.html#10057379?action=trousers&mt=12.13047.r127756.16256&acm=1.mce.2.13047.0.0.16256_127756" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160809/1s3_01gf2b05jkj3icec24hk6cl827kah_285x220.jpg"></span>
                </a>
                <a href="list.html#10057371?action=trousers&mt=12.13047.r127772.16256&acm=1.mce.2.13047.0.0.16256_127772" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160809/1s3_2913k8dda5ha42407f3e911cg080d_285x220.jpg"></span>
                </a>
              </div>
            </div>
            <h2 alt="百搭鞋品">
              <img src="<%=basePath%>p2/160810/1sy_1fhk6gjg7kegc3c819eji5ic8c7ih_150x71.jpg"></h2>
            <div class="common_box">
              <div class="ad_t">
                <a href="list.html#10059155?action=shoes&mt=12.13049.r127559.16258&acm=1.mce.2.13049.0.0.16258_127559" class="ad1 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160809/1sp_2a415ej65c4dg5707803ik80fcfg3_590x284.jpg"></span>
                </a>
                <a href="list.html#10057112?action=shoes&mt=12.13049.r127573.16258&acm=1.mce.2.13049.0.0.16258_127573" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sp_27jk980h3k46dbkfligf4401jld1b_184x284.jpg"></span>
                </a>
                <a href="list.html#10057114?action=shoes&mt=12.13049.r127575.16258&acm=1.mce.2.13049.0.0.16258_127575" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sp_47e24laek3fdfh2b61j96el531ihf_184x284.jpg"></span>
                </a>
                <a href="list.html#10057111?action=shoes&mt=12.13049.r127576.16258&acm=1.mce.2.13049.0.0.16258_127576" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sp_5hl9h9jlgbg9j2c5b5167l776hjcj_184x284.jpg"></span>
                </a>
              </div>
              <div class="ad_b">
                <div class="ad_attr_box">
                  <a href="list.html#10059081?action=shoes&mt=12.13049.r127604.16258&acm=1.mce.2.13049.0.0.16258_127604" target="_blank" class="red"></a>
                  <a href="list.html#10057112?action=shoes&mt=12.13049.r127605.16258&acm=1.mce.2.13049.0.0.16258_127605" target="_blank" class="red"></a>
                  <a href="list.html#10057111?action=shoes&mt=12.13049.r127607.16258&acm=1.mce.2.13049.0.0.16258_127607" target="_blank"></a>
                  <a href="list.html#10057113?action=shoes&mt=12.13049.r127610.16258&acm=1.mce.2.13049.0.0.16258_127610" target="_blank">钻石戒指</a>
                  <a href="list.html#10057117?action=shoes&mt=12.13049.r127612.16258&acm=1.mce.2.13049.0.0.16258_127612" target="_blank">钻石项链</a>
                  <a href="list.html#10057116?action=shoes&mt=12.13049.r127615.16258&acm=1.mce.2.13049.0.0.16258_127615" target="_blank">钻石耳坠</a>
                  <a href="list.html#10057118?action=shoes&mt=12.13049.r127617.16258&acm=1.mce.2.13049.0.0.16258_127617" target="_blank">钻石耳坠</a>
                  <a href="list.html#10057114?action=shoes&mt=12.13049.r127620.16258&acm=1.mce.2.13049.0.0.16258_127620" target="_blank">钻石手链</a>
                  <a href="list.html#10057115?action=shoes&mt=12.13049.r127622.16258&acm=1.mce.2.13049.0.0.16258_127622" target="_blank" class="red">钻石手镯</a>
                  <a href="list.html#10057121?action=shoes&mt=12.13049.r127626.16258&acm=1.mce.2.13049.0.0.16258_127626" target="_blank"></a>
                  <a href="list.html#10057122?action=shoes&mt=12.13049.r127628.16258&acm=1.mce.2.13049.0.0.16258_127628" target="_blank"></a>
                  <a href="list.html#10057135?action=shoes&mt=12.13049.r127630.16258&acm=1.mce.2.13049.0.0.16258_127630" target="_blank" class="red"></a>
                  <a href="list.html#10057119?action=shoes&mt=12.13049.r127635.16258&acm=1.mce.2.13049.0.0.16258_127635" target="_blank"></a>
                  <a href="list.html#10057156?action=shoes&mt=12.13049.r127637.16258&acm=1.mce.2.13049.0.0.16258_127637" target="_blank"></a></div>
                <a href="list.html#10057052?action=shoes&mt=12.13049.r127593.16258&acm=1.mce.2.13049.0.0.16258_127593" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160809/1sp_5096aji5ebiida52ckfellfle4b93_285x220.jpg"></span>
                </a>
                <a href="list.html#10059081?action=shoes&mt=12.13049.r127598.16258&acm=1.mce.2.13049.0.0.16258_127598" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160809/1sp_5ejlhe6dh39h36ei0354g29782g7k_285x220.jpg"></span>
                </a>
                <a href="list.html#10059082?action=shoes&mt=12.13049.r127599.16258&acm=1.mce.2.13049.0.0.16258_127599" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160809/1sp_335df92i5f6k91aj6adged8e99lge_285x220.jpg"></span>
                </a>
              </div>
            </div>
            <h2 alt="百搭包配">
              <img src="<%=basePath%>p2/160810/1sy_2471h8c3dkjag22eiecb5hf77fli5_150x71.jpg"></h2>
            <div class="common_box">
              <div class="ad_t">
                <a href="list.html#10057189?action=bags&mt=12.13050.r127873.16259&acm=1.mce.2.13050.0.0.16259_127873" class="ad1 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160809/1sc_6h7df8lc7f4deeak9033k6iid1ffa_590x284.png"></span>
                </a>
                <a href="list.html#10057429?action=accessories&mt=12.13050.r127903.16259&acm=1.mce.2.13050.0.0.16259_127903" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sc_2le2f7lba12fk5li88g3797d1aka8_184x284.png"></span>
                </a>
                <a href="list.html#10057178?action=bags&mt=12.13050.r127907.16259&acm=1.mce.2.13050.0.0.16259_127907" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sc_7kki1j4d1g87lf8lhl6f55l54hb60_184x284.png"></span>
                </a>
                <a href="list.html#10058871?action=bags&mt=12.13050.r127910.16259&acm=1.mce.2.13050.0.0.16259_127910" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1sc_4ik78h950h7j61769kb42j98a4g00_184x284.png"></span>
                </a>
              </div>
              <div class="ad_b">
                <div class="ad_attr_box">
                  <a href="list.html#10057179?action=bags&mt=12.13050.r128007.16259&acm=1.mce.2.13050.0.0.16259_128007" target="_blank"></a>
                  <a href="list.html#10057339?action=accessories&mt=12.13050.r130302.16259&acm=1.mce.2.13050.0.0.16259_130302" target="_blank" class="red"></a>
                  <a href="list.html#10057427?action=accessories&mt=12.13050.r130303.16259&acm=1.mce.2.13050.0.0.16259_130303" target="_blank" class="red"></a>
                  <a href="list.html#10057424?action=accessories&mt=12.13050.r130304.16259&acm=1.mce.2.13050.0.0.16259_130304" target="_blank">珍珠手链</a>
                  <a href="list.html#10057422?action=accessories&mt=12.13050.r130305.16259&acm=1.mce.2.13050.0.0.16259_130305" target="_blank" class="red">珍珠戒指</a>
                  <a href="list.html#10058366?action=accessories&mt=12.13050.r130306.16259&acm=1.mce.2.13050.0.0.16259_130306" target="_blank">珍珠吊坠</a>
                  <a href="list.html#10057435?action=accessories&mt=12.13050.r130307.16259&acm=1.mce.2.13050.0.0.16259_130307" target="_blank">珍珠手镯</a>
                  <a href="list.html#10057204?action=bags&mt=12.13050.r130308.16259&acm=1.mce.2.13050.0.0.16259_130308" target="_blank">珍珠耳饰</a>
                  <a href="list.html#10057162?action=bags&mt=12.13050.r130309.16259&acm=1.mce.2.13050.0.0.16259_130309" target="_blank" class="red">珍珠项链</a>
                  <a href="list.html#10057337?action=accessories&mt=12.13050.r127998.16259&acm=1.mce.2.13050.0.0.16259_127998" target="_blank" class="red">项链</a>
                  <a href="list.html#10057177?action=bags&mt=12.13050.r128001.16259&acm=1.mce.2.13050.0.0.16259_128001" target="_blank"></a>
                  <a href="list.html#10057170?action=bags&mt=12.13050.r127993.16259&acm=1.mce.2.13050.0.0.16259_127993" target="_blank" class="red"></a>
                  <a href="list.html#10059245?action=accessories&mt=12.13050.r128011.16259&acm=1.mce.2.13050.0.0.16259_128011" target="_blank"></a>
                  <a href="list.html#10057427?action=accessories&mt=12.13050.r128015.16259&acm=1.mce.2.13050.0.0.16259_128015" target="_blank"></a>
                  <a href="list.html#10057207?action=bags&mt=12.13050.r128017.16259&acm=1.mce.2.13050.0.0.16259_128017" target="_blank"></a></div>
                <a href="list.html#10057172?action=bags&mt=12.13050.r127878.16259&acm=1.mce.2.13050.0.0.16259_127878" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160809/1sc_788ad176d0kk4ef12gj19feha9ji8_285x220.png"></span>
                </a>
                <a href="list.html#10059037?action=accessories&mt=12.13050.r127883.16259&acm=1.mce.2.13050.0.0.16259_127883" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160809/1sc_25a5difebehjadj42fg9e8iij5265_285x220.png"></span>
                </a>
                <a href="list.html#10057425?action=accessories&mt=12.13050.r127898.16259&acm=1.mce.2.13050.0.0.16259_127898" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160809/1sc_7c7b30kd83e7i2c8k1d9283j2haba_285x220.png"></span>
                </a>
              </div>
            </div>
            <h2 alt="正品美妆">
              <img src="<%=basePath%>p2/160810/1sy_02laf68dbg3blj2ljibf22lckk05i_150x71.jpg"></h2>
            <div class="common_box">
              <div class="ad_t">
                <a href="list.html#10057287?action=magic&mt=12.13051.r127259.16260&acm=1.mce.2.13051.0.0.16260_127259" class="ad1 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160809/1su_5a5159lbjai8703a50a30d9861adh_590x284.jpg"></span>
                </a>
                <a href="list.html#10057309?action=magic&mt=12.13051.r127266.16260&acm=1.mce.2.13051.0.0.16260_127266" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1su_028a14003514471ej130l4ida1925_184x284.jpg"></span>
                </a>
                <a href="list.html#10057269?action=magic&mt=12.13051.r127268.16260&acm=1.mce.2.13051.0.0.16260_127268" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1su_4abi09fgebkcj6c32d8bi6jf30d3b_184x284.jpg"></span>
                </a>
                <a href="list.html#10058862?action=magic&mt=12.13051.r127270.16260&acm=1.mce.2.13051.0.0.16260_127270" class="ad2 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160804/1su_87b2l6aea202h2fl0fki478hjll64_184x284.jpg"></span>
                </a>
              </div>
              <div class="ad_b">
                <div class="ad_attr_box">
                  <a href="list.html#10057250?action=magic&mt=12.13051.r127282.16260&acm=1.mce.2.13051.0.0.16260_127282" target="_blank" class="red"></a>
                  <a href="list.html#10057253?action=magic&mt=12.13051.r127283.16260&acm=1.mce.2.13051.0.0.16260_127283" target="_blank"></a>
                  <a href="list.html#10058131?action=magic&mt=12.13051.r127290.16260&acm=1.mce.2.13051.0.0.16260_127290" target="_blank"></a>
                  <a href="list.html#10057270?action=magic&mt=12.13051.r127294.16260&acm=1.mce.2.13051.0.0.16260_127294" target="_blank">宝石戒指</a>
                  <a href="list.html#10057309?action=magic&mt=12.13051.r127307.16260&acm=1.mce.2.13051.0.0.16260_127307" target="_blank">宝石项链</a>
                  <a href="list.html#10057287?action=magic&mt=12.13051.r127312.16260&acm=1.mce.2.13051.0.0.16260_127312" target="_blank" class="red"></a>
                  <a href="list.html#10057302?action=magic&mt=12.13051.r127323.16260&acm=1.mce.2.13051.0.0.16260_127323" target="_blank" class="red">宝石耳坠</a>
                  <a href="list.html#10057300?action=magic&mt=12.13051.r127326.16260&acm=1.mce.2.13051.0.0.16260_127326" target="_blank">宝石手镯</a>
                  <a href="list.html#10057292?action=magic&mt=12.13051.r127328.16260&acm=1.mce.2.13051.0.0.16260_127328" target="_blank"></a>
                  <a href="list.html#10057304?action=magic&mt=12.13051.r127330.16260&acm=1.mce.2.13051.0.0.16260_127330" target="_blank"></a>
                  <a href="list.html#10058862?action=magic&mt=12.13051.r127332.16260&acm=1.mce.2.13051.0.0.16260_127332" target="_blank" class="red"></a>
                  <a href="list.html#10058114?action=magic&mt=12.13051.r127334.16260&acm=1.mce.2.13051.0.0.16260_127334" target="_blank"></a>
                  <a href="list.html#10057311?action=magic&mt=12.13051.r127336.16260&acm=1.mce.2.13051.0.0.16260_127336" target="_blank"></a>
                  <a href="list.html#10057318?action=magic&mt=12.13051.r127338.16260&acm=1.mce.2.13051.0.0.16260_127338" target="_blank"></a>
                  <a href="list.html#10059161?action=magic&mt=12.13051.r127339.16260&acm=1.mce.2.13051.0.0.16260_127339" target="_blank"></a></div>
                <a href="list.html#10057285?action=magic&mt=12.13051.r127276.16260&acm=1.mce.2.13051.0.0.16260_127276" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160810/1su_11k388a71f5k5a6hg36a6919eh1cc_285x220.jpg"></span>
                </a>
                <a href="list.html#10058114?action=magic&mt=12.13051.r127277.16260&acm=1.mce.2.13051.0.0.16260_127277" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160810/1su_62ic1dldhf75kgedf09h97lbh6cce_285x220.jpg"></span>
                </a>
                <a href="list.html#10057279?action=magic&mt=12.13051.r127348.16260&acm=1.mce.2.13051.0.0.16260_127348" class="ad_3 imgBox" target="_blank">
                  <span asrc="<%=basePath%>p2/160810/1su_6862f22ib27gdlg42f4j3c5kjfc33_285x220.jpg"></span>
                </a>
              </div>
            </div>
           

            <div class="zhanwei"></div>
          </div>
          <div id="com-foot">
            <div class="inner">
              <div class="flist">
                <h4>买家帮助</h4>
                <div>
                  <a href="noviceGuide.html" target="_blank">新手指南</a></div>
                <div>
                  <a href="serviceEnsure.html" target="_blank">服务保障</a></div>
                <div>
                  <a href="helpCommon.html" target="_blank">常见问题</a></div>
                <div>
                  <a href="shoppingHelp.html" target="_blank">购物帮助</a></div>
              </div>
              <div class="flist">
                <h4>商家帮助</h4>
                <div>
                  <a href="#/business" target="_blank">商家入驻</a></div>
                <div>
                  <a href="#" target="_blank">商家后台</a></div>
                <div>
                  <a href="#" target="_blank">商家推广</a></div>
              </div>
              <div class="flist">
                <h4>关于我们</h4>
                <div>
                  <a href="aboutus.html" target="_blank">关于雅拓</a></div>
                <div>
                  <a href="contactus.html" target="_blank">联系我们</a></div>
              </div>
              <div class="flist aboutus">
                <h4>关注我们</h4>
                <div>
                  <a href="#" target="_blank">
                    <span class="i-sina"></span>新浪微博
                    <div class="follow">一键关注新浪微博
                      <wb:follow-button uid="1718455577" type="red_1" width="67" height="24"></wb:follow-button></div>
                  </a>
                </div>
                <div>
                  <a href="#" target="_blank">
                    <span class="i-qzone"></span>QQ空间</a>
                </div>
                <div>
                  <a href="#" target="_blank">
                    <span class="i-tencent"></span>腾讯微博</a>
                </div>
              </div>
              <div class="flist service">
                <h4>雅拓珠宝微信服务号</h4>
                <img class="qrcode" src="<%=basePath%>p2/160802/7e_74j23d2a5f5j3bj31h70375gbeec1_100x100.png" /></div>
              <div class="flist last" style="float:left;">
                <h4>雅拓珠宝客户端下载</h4>
                <p style="background:none; margin-top:0px;" class="client">
                  <img class="qrcode" src="<%=basePath%>p2/160802/7e_74j23d2a5f5j3bj31h70375gbeec1_100x100.png"></p>
              </div>
              <div class="record">Copyright ©2016 yatuo.com &nbsp;
                <a href="new1/v1/bmisc/518ea1bbd36948b90e658485d2700e62/181714310539.pdf" target="_blank">电信与信息服务业务经营许可证100798号</a>&nbsp;
                <a href="p1/160811/idid_ifrtszjqmmzdazrumezdambqhayde_2436x3500.jpg" target="_blank">经营性网站备案信息</a>&nbsp;
                <br />京ICP备11031139号&nbsp; 京公网安备110108006045&nbsp;&nbsp; 客服电话：4000-800-577&nbsp; 文明办网文明上网举报电话：010-82615762 &nbsp;
                <a href="http://net.china.com.cn/index.htm" target="_blank">违法不良信息举报中心</a></div>
            </div>
          </div>
          <p style="display: none" class="biu-login">11cnkktq</p>
          <div class="biu-sidebar">
            <div class="biu-options">
              <div class="biu-download">下载
                <span>APP</span>
                <div class="mls-qrcode">
                  <img src="<%=basePath%>p2/160802/7e_0h22fa0g03cgl0c5676cb6k2ii71h_140x140.png"></div>
              </div>
              <div class="biu-cart">
                <a href="mycart.html" target="_blank">
                  <span class="cart-num biu-cart-num"></span>购物车</a>
              </div>
              <div class="biu-service">
                <a class="biu-open-im">
                  <span class="service-num biu-service-num"></span>消息</a>
              </div>
              <div class="biu-coupon">
                <a href="coupon.html#" target="_blank">
                  <span class="coupon-num biu-coupon-num"></span>优惠券</a>
              </div>
              <div class="biu-mark">
                <a href="mylike.html#" target="_blank">收藏</a></div>
              <div class="biu-footprint">
                <a href="footprint.html#" target="_blank">足迹</a></div>
            </div>
            <div class="biu-go2top"></div>
          </div>
          <script type="text/javascript" src="<%=basePath%>pc/jsmin/jquery.js?1.12.4"></script>
          <script type="text/javascript" src="<%=basePath%>__static/logger/0.1.8/logger.js"></script>
          <script src="<%=basePath%>__newtown/im_web/assets/common/openim/index.js"></script>
          <script src="<%=basePath%>pc/~page/welcome+base?1607170150.25"></script>
          <script>fml.use('page/welcome');;
            fml.use('base');;
            fml.iLoad();</script>
        </body>
        
        </html>
