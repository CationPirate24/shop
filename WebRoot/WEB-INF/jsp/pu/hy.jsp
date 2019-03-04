<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html>
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>欢迎登陆雅拓珠宝官方商城</title>
<meta name="description" content="美丽说，专注时尚新款发布。海量新款每日上新，每周五新款大促火热进行中！旗下海淘品牌“HIGO”挑选全球时尚好货，满足你全方位的时尚购物体验！" />
<meta name="keywords" content="美丽说,higo,衣服,鞋子,包包,配饰,家居,美妆,搭配,团购,美丽说higo" />
<link rel="dns-prefetch" href="http://s.meilishuo.net/">
<link rel="dns-prefetch" href="http://i.meilishuo.net/">
<link rel="dns-prefetch" href="http://d01.res.meilishuo.net/">
<link rel="dns-prefetch" href="http://d02.res.meilishuo.net/">
<link rel="dns-prefetch" href="http://d03.res.meilishuo.net/">
<link rel="dns-prefetch" href="http://d04.res.meilishuo.net/">
<link rel="dns-prefetch" href="http://d05.res.meilishuo.net/">
<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>pc/css/base.css?1607191113.25" />
<link rel="icon" href="<%=basePath%>pic/_o/9e/fb/7d026282ff00a259b6a7b90eee6d_48_48.c5.png" type="image/x-icon"/>
<link rel="stylesheet" type="text/css" href="<%=basePath%>pc/css/page/select/detail.css?1607191113.25"/>
<script type="text/javascript" src="<%=basePath%>pc/jsmin/fml.js?1" ></script>
<script>	
fml.setOptions({'sversion' : '1607191113.25','defer' : true ,'modulebase' : 'pc/jsmin/'});	 var Meilishuo = { "config": { "nt": "1yQyN1tU7ssTVQ5GeZ16w8/kSFtvCXA26mmFZKjjo37S4HeWKqeqFYk0moWAkxCK", "main_site_domain": "/", "server_url": "/", "picture_url": "http://i.meilishuo.net/css/", "captcha_url": "http://captcha.meilishuo.com/", "im_url": "http://imlab.meilishuo.com/", "forSale": false, "isLogin": true, "userInfo": { "name": "阿猫来了", "uid": "11cnkktq", "avatar": "<%=basePath%>http://s2.mogucdn.com/new1/v1/bdefaultavatar/03.jpg" } } };	
</script>
</head>
<body>
<div class="head">
   <div id="com-topbar">
              <div class="inner">
                <ul>
                   <li class="drop">
                    <a href="toLogin.do" class="nick" target="_blank">登录 </a>
                  </li>
                   <li class="drop">
                    <a href="toRegist.do" class="nick" target="_blank">注册 </a>
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
    <div class="inner"> <a href="public/toWelcome.do" class="logo"> <img src="<%=basePath%>pic/_o/50/a7/735e2614e3911e621f0446e54597_204_52.c5.png"> </a> <a href="" class="sublogo"> </a>
     
        <div class=""> </div>
      </div>
      <a class="spread" href="" target="_blank"> </a> </div>
  </div>
  
   <div class="nav_main_box">
    <ul class="nav_main">
      <li class="all">
      
	  </li>
      <li class="nav_tab"><a href="toWelcome.do" >&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;首页</a></li>
      <li class="nav_tab"><a href="toHunjia.do" >婚嫁</a></li>
      <li class="nav_tab"><a href="togift.do" >礼品</a></li>
      
	   <li class="nav_tab"><a href="toHy.do" >会员中心</a></li>
    </ul>
  </div>
</div>
<div class="main_wrap">
  <div class="banner" style="background-image:url(<%=basePath%>third/member/Tou.jpg)">
    <div class="banner_mask">
      <p class="banner_title"></p>
      <p class="subbanner_title"></p>
      <p class="goods_time"></p>
    </div>
  </div>
  <div class="detail_des">
    <p>会员有礼，速速来选购吧！</p>
  </div>
  <div class="main_poster">
    <div class="wall-wrap"></div>
    <div class="pullUp" status="loading"></div>
  </div>
  <div class="more_box" style="display: none">
    <p class="more_title"> <span>更多合集?BRAND STYLE</span> </p>
    <div class="more_list"> <a href="<%=basePath%>/select/detail/?oid=877&type=topic">
      <div class="banner" style="background-image:url(<%=basePath%>third/goldL/L2.jpg)">
        <div class="banner_mask">
          <p class="banner_title">来条百慕大短裤 让赘肉滚粗</p>
          <p class="goods_num"><span>36款商品</span><span class="go_icon"></span></p>
        </div>
      </div>
      </a> <a href="/select/detail/?oid=277&type=topic">
      <div class="banner" style="background-image:url(<%=basePath%>third/goldL/L2.jpg)">
        <div class="banner_mask">
          <p class="banner_title">嗨~今晚一起裸睡吧！</p>
          <p class="goods_num"><span>25款商品</span><span class="go_icon"></span></p>
        </div>
      </div>
      </a> <a href="/select/detail/?oid=139&type=topic">
      <div class="banner" style="background-image:url(<%=basePath%>third/goldL/L2.jpg)">
        <div class="banner_mask">
          <p class="banner_title">深夜自拍 晒睡衣才是正经事</p>
          <p class="goods_num"><span>30款商品</span><span class="go_icon"></span></p>
        </div>
      </div>
      </a> </div>
  </div>
</div>
<input type="hidden" class="topic_id" data-oid="2126">
<input type="hidden" class="topic_type" data-type="topic">
<script>
fml.vars.poster0 = {"data":{"list":[{"goods_desc":"","goods_id":651113776,"goods_price":"900.00","goods_title":"日月星云电 吉祥手链","is_doota":"0","is_shelf":0,"jump_pcUrl":"/detail/index/?goods_id=651113776","jump_url":"http://sgitem.meilishuo.com/sgdetail/651113776","jump_wapUrl":"http://m.meilishuo.com/outItem/index/?goods_id=651113776","origin_price":"1100.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/F174046.jpg","trade_item_id":0,"twitter_id":0,"v_goods_id":137770},{"goods_desc":"甜美又精致的牛仔布料发夹，超级好搭配~~ 美腻美腻的~~","goods_id":275253421,"goods_price":"1200.00","goods_title":"简约 金球","is_doota":"1","is_shelf":0,"jump_pcUrl":"shopdetail.html#?1fpwnte","jump_url":"http://item.meilishuo.com/h5/detail/1fpwnte","jump_wapUrl":"http://m.meilishuo.com/wap/detail/1fpwnte","origin_price":"1230.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/F168866 (1).jpg","trade_item_id":475253421,"twitter_id":3829826421,"v_goods_id":131987},{"goods_desc":"这个牛仔小背心很率性的感觉哦，衣身是卷边的设计就非常有细节看点，小巧的短款，外搭在T恤外边很有摩登时尚的感觉，前后都是V领的，修饰颈部线条，还有割破的设计，时髦范十足，搭配套装的半裙，简直美翻了。","goods_id":0,"goods_price":"1500.00","goods_title":"童年木马","is_doota":"1","is_shelf":0,"jump_pcUrl":"shopdetail.html#?1gl983c","jump_url":"http://item.meilishuo.com/h5/detail/1gl983c","jump_wapUrl":"http://m.meilishuo.com/wap/detail/1gl983c","origin_price":"1680.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/F169890.jpg","trade_item_id":501580544,"twitter_id":10501580544,"v_goods_id":137492},{"goods_desc":"直筒破洞款，上身显高肯定不用说啦 小宽松的版型还灰常显瘦 强烈介绍 这款不仅破洞很chic 裤脚的设计也很喜欢哈，阶梯型的破洞很有设计味道 ，一点都不拘谨的感觉，裤脚折起来穿会更潮 更好看哈，搭配不用说，这类牛仔裤随意搭配T恤 衬衫 雪纺都很棒哦","goods_id":0,"goods_price":"1099.00","goods_title":"爷爷的小葫芦","is_doota":"1","is_shelf":0,"jump_pcUrl":"shopdetail.html#?1fxj3fi","jump_url":"http://item.meilishuo.com/h5/detail/1fxj3fi","jump_wapUrl":"http://m.meilishuo.com/wap/detail/1fxj3fi","origin_price":"1590.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/F1538.jpg","trade_item_id":481655411,"twitter_id":4171331347,"v_goods_id":137672},{"goods_desc":"","goods_id":0,"goods_price":"1099.00","goods_title":"手链串珠","is_doota":"1","is_shelf":0,"jump_pcUrl":"shopdetail.html#?1fx47a2","jump_url":"http://item.meilishuo.com/h5/detail/1fx47a2","jump_wapUrl":"http://m.meilishuo.com/wap/detail/1fx47a2","origin_price":"1199.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/F181700.jpg","trade_item_id":481307985,"twitter_id":4153945687,"v_goods_id":137821},{"goods_desc":"跟高：2CM 标准尺码 标准尺码","goods_id":0,"goods_price":"899.00","goods_title":"全世界唯我倾听你","is_doota":"1","is_shelf":0,"jump_pcUrl":"shopdetail.html#?1fx8g3a","jump_url":"http://item.meilishuo.com/h5/detail/1fx8g3a","jump_wapUrl":"http://m.meilishuo.com/wap/detail/1fx8g3a","origin_price":"920.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/T66970.jpg","trade_item_id":481407007,"twitter_id":4160856101,"v_goods_id":137731},{"goods_desc":"","goods_id":651113774,"goods_price":"1699.00","goods_title":"一生所爱","is_doota":"0","is_shelf":0,"jump_pcUrl":"/detail/index/?goods_id=651113774","jump_url":"http://sgitem.meilishuo.com/sgdetail/651113774","jump_wapUrl":"http://m.meilishuo.com/outItem/index/?goods_id=651113774","origin_price":"1759.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/AQ33167.jpg","trade_item_id":0,"twitter_id":0,"v_goods_id":137768},{"goods_desc":"修身拼接 百搭时尚","goods_id":0,"goods_price":"1169.00","goods_title":"可爱蝴蝶","is_doota":"1","is_shelf":0,"jump_pcUrl":"shopdetail.html#?1gk5908","jump_url":"http://item.meilishuo.com/h5/detail/1gk5908","jump_wapUrl":"http://m.meilishuo.com/wap/detail/1gk5908","origin_price":"1230.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/AB37817.jpg","trade_item_id":500648016,"twitter_id":10500648016,"v_goods_id":137466},{"goods_desc":"","goods_id":651113771,"goods_price":"958.00","goods_title":"简约手链","is_doota":"0","is_shelf":0,"jump_pcUrl":"/detail/index/?goods_id=651113771","jump_url":"http://sgitem.meilishuo.com/sgdetail/651113771","jump_wapUrl":"http://m.meilishuo.com/outItem/index/?goods_id=651113771","origin_price":"1010.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/ab38393.jpg","trade_item_id":0,"twitter_id":0,"v_goods_id":137765},{"goods_desc":"今季最热的链条包来了~让人眼前一亮的牛仔布拼接面料，渐变色格纹，防盗锁扣~不仅优雅大方更是时尚个性，明星般的选择，妳值得拥有！","goods_id":0,"goods_price":"680.00","goods_title":"心钻 项链","is_doota":"1","is_shelf":0,"jump_pcUrl":"shopdetail.html#?1fxq5cq","jump_url":"http://item.meilishuo.com/h5/detail/1fxq5cq","jump_wapUrl":"http://m.meilishuo.com/wap/detail/1fxq5cq","origin_price":"720.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/U126765.jpg","trade_item_id":481819953,"twitter_id":4177916971,"v_goods_id":137718},{"goods_desc":"牛仔大版外套背心蕾丝裙套装","goods_id":0,"goods_price":"1099.00","goods_title":"MyHeart 项链","is_doota":"1","is_shelf":0,"jump_pcUrl":"shopdetail.html#?1gli1a0","jump_url":"http://item.meilishuo.com/h5/detail/1gli1a0","jump_wapUrl":"http://m.meilishuo.com/wap/detail/1gli1a0","origin_price":"1250.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/v100904.jpg","trade_item_id":501786080,"twitter_id":10501786080,"v_goods_id":137489},{"goods_desc":"牛仔半身裙就是青春活力的代表单品啊，搭配休闲鞋，活脱脱一枚活力小少女，半身裙重要的是高腰版型，高腰的裙款，可以非常好的拉伸腿部比例，一秒显高","goods_id":0,"goods_price":"866.00","goods_title":"LoveLine 心动款项链","is_doota":"1","is_shelf":1,"jump_pcUrl":"shopdetail.html#?1glfjn2","jump_url":"http://item.meilishuo.com/h5/detail/1glfjn2","jump_wapUrl":"http://m.meilishuo.com/wap/detail/1glfjn2","origin_price":"920.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/na19.jpg","trade_item_id":501727995,"twitter_id":10501727995,"v_goods_id":137592},{"goods_desc":"","goods_id":0,"goods_price":"2199.00","goods_title":"水润珍珠项链","is_doota":"1","is_shelf":0,"jump_pcUrl":"shopdetail.html#?1fvlv46","jump_url":"http://item.meilishuo.com/h5/detail/1fvlv46","jump_wapUrl":"http://m.meilishuo.com/wap/detail/1fvlv46","origin_price":"2250.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/T66970.jpg","trade_item_id":480040391,"twitter_id":4101419143,"v_goods_id":137820},{"goods_desc":"云朵工厂原创休闲复古牛仔斜挎包，独有的袋鼠口袋设计加上左右拉链的小耳朵，还有牛仔布的创意选材，给你不一样的包包。","goods_id":278899117,"goods_price":"2099","goods_title":"转运珠","is_doota":"1","is_shelf":0,"jump_pcUrl":"shopdetail.html#?1fu8xw2","jump_url":"http://item.meilishuo.com/h5/detail/1fu8xw2","jump_wapUrl":"http://m.meilishuo.com/wap/detail/1fu8xw2","origin_price":"2150.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/F155442.jpg","trade_item_id":478899117,"twitter_id":4042736703,"v_goods_id":127403},{"goods_desc":"","goods_id":0,"goods_price":"1299","goods_title":"蝴蝶耳钉","is_doota":"1","is_shelf":0,"jump_pcUrl":"shopdetail.html#?1fx04qe","jump_url":"http://item.meilishuo.com/h5/detail/1fx04qe","jump_wapUrl":"http://m.meilishuo.com/wap/detail/1fx04qe","origin_price":"1350.00","pic_height":300,"pic_width":300,"show_pic":"<%=basePath%>third/member/F43986.jpg","trade_item_id":481213023,"twitter_id":4148917499,"v_goods_id":137568}]},"message":"正常","returnCode":"1001","success":true};
</script>
<script type="text/html" id="posterWall"> 
<a class="item_wrap" href="<?=this.v.jump_pcUrl?>" target="_blank"> <div class="item" style="background-image:url('<?=this.v.show_pic?>')">
</div> 
<p class="title"><?=this.v.goods_title?></p> 
<p class="price"> <span class="now_price">￥<?=this.v.goods_price?>
</span> <? if( this.v.goods_price != this.v.origin_price ){ ?><span class="origin_price">￥<?=this.v.origin_price?>
</span>
<? } ?> 
</p>
</a>
</script>
<div id="com-foot">
  <div class="inner">
    <div class="flist">
      <h4>买家帮助</h4>
      <div><a href="noviceGuide.html" target="_blank">新手指南</a></div>
      <div><a href="serviceEnsure.html" target="_blank">服务保障</a></div>
      <div><a href="helpCommon.html" target="_blank">常见问题</a></div>
      <div><a href="shoppingHelp.html" target="_blank">购物帮助</a></div>
    </div>
    <div class="flist">
      <h4>商家帮助</h4>
      <div><a href="#/business" target="_blank">商家入驻</a></div>
      <div><a href="#" target="_blank">商家后台</a></div>
      <div><a href="#" target="_blank">商家推广</a></div>
    </div>
    <div class="flist">
      <h4>关于我们</h4>
      <div><a href="aboutus.html" target="_blank">关于雅拓</a></div>
      <div><a href="contactus.html" target="_blank">联系我们</a></div>
    </div>
    <div class="flist aboutus">
      <h4>关注我们</h4>
      <div> <a href="#" target="_blank"> <span class="i-sina"></span>新浪微博
        <div class="follow"> 一键关注新浪微博
          <wb:follow-button uid="1718455577" type="red_1" width="67" height="24" ></wb:follow-button>
        </div>
        </a> </div>
      <div><a href="#" target="_blank"><span class="i-qzone"></span>QQ空间</a></div>
      <div><a href="#" target="_blank"><span class="i-tencent"></span>腾讯微博</a></div>
    </div>
    <div class="flist service">
      <h4>雅拓珠宝微信服务号</h4>
      <img class="qrcode" src="<%=basePath%>p2/160802/7e_74j23d2a5f5j3bj31h70375gbeec1_100x100.png" alt="金玉满堂服务号二维码"/> </div>
    <div class="flist last" style="float:left;">
      <h4>雅拓珠宝客户端下载</h4>
      <p style="background:none; margin-top:0px;" class="client"> <img class="qrcode" src="<%=basePath%>p2/160802/7e_74j23d2a5f5j3bj31h70375gbeec1_100x100.png"> </p>
    </div>
    <div class="record">Copyright ©2016 yatuo.com &nbsp;<a href="http://s16.mogucdn.com/new1/v1/bmisc/518ea1bbd36948b90e658485d2700e62/181714310539.pdf" target="_blank">电信与信息服务业务经营许可证100798号</a>&nbsp;<a href="http://s16.mogucdn.com/p1/160811/idid_ifrtszjqmmzdazrumezdambqhayde_2436x3500.jpg" target="_blank">经营性网站备案信息</a>&nbsp; <br />
      京ICP备11031139号&nbsp; 京公网安备110108006045&nbsp;&nbsp; 客服电话：4000-800-577&nbsp; 文明办网文明上网举报电话：010-82615762 &nbsp;<a href="http://net.china.com.cn/index.htm" target="_blank">违法不良信息举报中心</a> </div>
  </div>
</div>
<p style="display: none" class="biu-login">11cnkktq</p>
<div class="biu-sidebar">
  <div class="biu-options">
    <div class="biu-download"> 下载<span>APP</span>
      <div class="mls-qrcode"> <img src="<%=basePath%>p2/160802/7e_0h22fa0g03cgl0c5676cb6k2ii71h_140x140.png"> </div>
    </div>
    <div class="biu-cart"> <a href="mycart.html" target="_blank"><span class="cart-num biu-cart-num"></span>购物车</a> </div>
    <div class="biu-service"> <a class="biu-open-im"><span class="service-num biu-service-num"></span>消息</a> </div>
    <div class="biu-coupon"> <a href="coupon.html#" target="_blank"><span class="coupon-num biu-coupon-num"></span>优惠券</a> </div>
    <div class="biu-mark"> <a href="mylike.html" target="_blank">收藏</a> </div>
    <div class="biu-footprint"> <a href="footprint.html" target="_blank">足迹</a> </div>
  </div>
  <div class="biu-go2top"> </div>
</div>
<script type="text/javascript" src="<%=basePath%>pc/jsmin/jquery.js?1.12.4" ></script>
<script src="<%=basePath%>__newtown/im_web/assets/common/openim/index.js"></script>
<script src="<%=basePath%>pc/~page/select/detail+base?1607191113.25"></script>
<script>fml.use('page/select/detail');; fml.use('base');;fml.iLoad();</script>
<script type="text/javascript" src="<%=basePath%>__static/logger/0.1.8/logger.js"></script>
</body>
</html>

