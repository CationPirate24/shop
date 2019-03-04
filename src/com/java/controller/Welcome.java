package com.java.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.java.bean.Address;
import com.java.bean.Buys;
import com.java.bean.Comments;
import com.java.bean.Goods;
import com.java.bean.GoodsAndPicture;
import com.java.bean.MyAccount;
import com.java.bean.MyUser;
import com.java.bean.MyValue;
import com.java.bean.Picture;
import com.java.bean.ShoppingCar;
import com.java.service.AddressService;
import com.java.service.BuysService;
import com.java.service.CommentsService;
import com.java.service.GoodsService;
import com.java.service.MyAccountService;
import com.java.service.MyUserService;
import com.java.service.PictureService;
import com.java.service.ShoppingCarService;
import com.java.util.GoodsPictureBuys;
import com.java.util.GoodsPictureShoppingUtil;
import com.java.util.GoodsPictureUtil;
import com.java.util.MyTime;
import com.java.util.TexxttureAndTypeUtil;
import com.java.util.UUIDUtil;

/*
 * 门户网
 */
@Controller
public class Welcome {
	
	@Autowired
	private MyAccountService myAccountService;
	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private PictureService pictureService;
	
	@Autowired
	private MyUserService myUserService;
	
	@Autowired
	private ShoppingCarService shoppingCarService;
	
	@Autowired
	private AddressService addressService;
	
	@Autowired
	private CommentsService commentsService;
	@Autowired
	private BuysService buysService;


	
	
	
	
	
	//跳转到欢迎页面
	@RequestMapping("public/toWelcome.do")
	public ModelAndView toWelcome(){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/welcome");
		return mav;
		
		
	}
	
	
//	//jason应用
//	@RequestMapping("/public/checkLogin.do")
//	public @ResponseBody MyValue checkLogin(String username,String password,HttpServletRequest request){
//		System.out.println("========="+username);
//		System.out.println("+++++++++"+password);
//		MyValue mv = new MyValue();
//		mv.setValue("lose");
//		MyAccount ma=myAccountService.checkLogin(username, password);
//		if (ma!=null) {
//			mv.setValue("success");
//			
//		}
//		return mv;
//		
//	}
	
	
	//跳转到商品列表
	@RequestMapping("public/toList.do")
	public ModelAndView toList(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		String s = request.getParameter("ID");
		String textture = TexxttureAndTypeUtil.getTexxtture(s);
		String type = TexxttureAndTypeUtil.getType(s);
		System.out.println("sdfsdfg"+textture+type);
		List<Goods> list = goodsService.getByTexttureAndType(textture, type);
		List<Picture> list1 = new ArrayList<Picture>();
		System.out.println("asadasdas"+list.get(1).getId());
		Picture p = null;
		for(Goods g:list){
			System.out.println("qqqqqqqqqqqqqqqqqqqqqq"+g.getId());
			p = pictureService.getByGoodsId(g.getId());
			list1.add(p);
		}
		System.out.println("asadasdas"+list1.get(1).getId());
		List<GoodsAndPicture> list2 = GoodsPictureUtil.get(list, list1);
		System.out.println("asadasdas"+list2.get(1).getName());
		request.setAttribute("list", list2);
		System.out.println(list2.get(0).getPictureDoPath());
		mav.setViewName("pu/list");
		return mav;
	}

	
	
	
	
	
	
	
	//跳转到礼品海报
	@RequestMapping("public/togift.do")
	public ModelAndView togift(){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/gift");
		return mav;
		
		
	}
	
	//跳转到婚嫁
	@RequestMapping("public/toHunjia.do")
	public ModelAndView toHunjia(){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/hunjia");
		return mav;
		
		
	}
	
	//跳转到定制
	@RequestMapping("public/toDz.do")
	public ModelAndView toDz(){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/dz");
		return mav;
		
		
	}
	//跳转到会员中心
	@RequestMapping("public/toHy.do")
	public ModelAndView toHy(){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/hy");
		return mav;
		
		
	}

	//跳转到商品详情页
	@RequestMapping("public/toGd.do")
	public ModelAndView toGd(HttpServletRequest request){
		String id1 = request.getParameter("ID");
		System.out.println(id1);
		Goods g = goodsService.getById(id1);
		Picture p = pictureService.getByGoodsId(id1);
		GoodsAndPicture gap = GoodsPictureUtil.get2(p, g);
		List<Comments> list = commentsService.getByGoodsId(id1);
		String textture = g.getTextture();
		String type = g.getType();
		List<Goods> list2 = goodsService.getByTexttureAndType(textture, type);
		List<Picture> list3 = new ArrayList<Picture>();
		Picture p1 = null;
		for(Goods g1:list2){
			p1 = pictureService.getByGoodsId(g1.getId());
			list3.add(p1);
		}
		List<GoodsAndPicture> list4 = GoodsPictureUtil.get(list2, list3);
		for(GoodsAndPicture gg:list4){
			System.out.println("rrrrrrr"+gg.getPictureDoPath());
		}
		request.setAttribute("list1", list4);
		request.setAttribute("list2", list);
		request.setAttribute("gap", gap);
		
		//System.out.println(name+"sadddddddddddddddddddddddddddddddddddddsa");
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/goods");
		return mav;		
	}

	
	//跳转到购物车
	@RequestMapping("public/toGoodCar.do")
	public ModelAndView toGoodCar(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		MyAccount account = (MyAccount)request.getSession().getAttribute("account");
		
		//String userId = "7603248688b7411783fc5a0c82818e28";
		if(account!=null){
			String userId = account.getUserId();
			String id = UUIDUtil.getUUID();
		
			String goodsId =request.getParameter("idd");//商品id			
			String num = request.getParameter("coon");//商品数量
			System.out.println("nishishabi"+num);
			int gwcNum = Integer.valueOf(num);
			System.out.println("aaaaaaaaaaaaaaa"+goodsId+num);
			String createDate = MyTime.getDate();
			String price = request.getParameter("price");
			int price1 = Integer.valueOf(price);
			price1 = price1 * gwcNum;
			price = price1+"";
			System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%555"+goodsId+createDate);
			System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%666"+num+userId+price);
			ShoppingCar sc = new ShoppingCar();
			sc.setId(id);
			sc.setGoodsId(goodsId);
			sc.setCreateDate(createDate);
			sc.setNums(num);
			sc.setUserId(userId);
			sc.setPrice(price);
			shoppingCarService.add(sc);
			goodsService.getById(goodsId);
 
			List<ShoppingCar> list = shoppingCarService.getByUserId(userId);
			List<Goods> list1 = new ArrayList<Goods>();
			Goods goods = null;
			for(ShoppingCar s:list){
				goods = goodsService.getById(s.getGoodsId());
				list1.add(goods);
			}
			List<Picture> list2 = new ArrayList<Picture>();
			Picture p = null;
			for(Goods g:list1){
				p = pictureService.getByGoodsId(g.getId());
				list2.add(p);
			}
			//System.out.println("asadasdas"+list1.get(1).getId());
			//System.out.println("huomingli"+list2.get(1).getDoPath());
			List<GoodsAndPicture> list3 = GoodsPictureShoppingUtil.get(list1, list2,list);
			//System.out.println("asadasdas"+list3.get(1).getName());
			request.setAttribute("list", list3);
			//System.out.println(list3.get(0).getPictureDoPath());
			//System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+list3.get(2).getGoodsId());
			mav.setViewName("pu/goodsCar");
		}else{
			//跳转到登录页
			mav.setViewName("pu/login");
		}		
		return mav;		
		
	}

	/*//购物车提交订单
	@RequestMapping("public/toMpay.do")
	public ModelAndView toMpay(HttpServletRequest request){
		
		ModelAndView mav=new ModelAndView();
		
		String count=request.getParameter("cout");//某种商品总价
		String count1=request.getParameter("count1");//id
		
		
		
		String [] arr=count.split(",");
		int totalmoney=0;
		for (int i = 0; i < arr.length; i++) {
			totalmoney+=Integer.parseInt(arr[i]);
			
		}
		request.setAttribute("totalmoney", totalmoney);
		System.out.println("++++++++++++++++++aaaa"+totalmoney);
		
		mav.setViewName("pu/orderlist");
		return mav;	
	}
	
	
	
	//跳转到我的订单public/orderlist.do
	@RequestMapping("public/orderlist.do")
	public ModelAndView orderlist(){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/orderlist");
		return mav;	
	}*/
	
	@RequestMapping("public/toMpay.do")
	public ModelAndView toMpay(HttpServletRequest request){
		
		ModelAndView mav=new ModelAndView();
		MyAccount account = (MyAccount)request.getSession().getAttribute("account");
		String userId = account.getUserId();
		String count1=request.getParameter("count1");//id
		System.out.println("erererererererere"+count1);
		
		int totalmoney=0;
		
		String [] arr1=count1.split(",");
		String id = null;
		Goods g = null;
		List<Goods> list = new ArrayList<Goods>();
		for(int i = 0;i<arr1.length;i++){
			id = arr1[i];
			g = goodsService.getById(id);
			list.add(g);
		}
		List<Picture> list1 = new ArrayList<Picture>();
		Picture p = null;
		for(Goods g1:list){
			p = pictureService.getByGoodsId(g1.getId());
			list1.add(p);
		}
		List<ShoppingCar> list4 = new ArrayList<ShoppingCar>();
		Goods g2 = null;
		ShoppingCar s = null;
		for(int i =0;i<list.size();i++){
			g2 = list.get(i);
			System.out.println("qqqqqqqqqqq"+g2.getId());
			System.out.println("qqqqqqweweq"+userId);
			s = shoppingCarService.getByUserIdAndGoodsId(userId, g2.getId());
			list4.add(s);
		}
		List<GoodsAndPicture> list3 = GoodsPictureShoppingUtil.get(list, list1,list4);
		for(GoodsAndPicture gap:list3){
			totalmoney += gap.getAllPrice();
		}
		
		List<Address> list5 = addressService.getAll(userId);
		request.setAttribute("totalmoney", totalmoney);
		request.setAttribute("addressList", list5);
		System.out.println("++++++++++++++++++aaaa"+totalmoney);
		request.setAttribute("list",list3 );
		request.getSession().setAttribute("shoppingCarList", list4);
		mav.setViewName("pu/gwcBuy");
		return mav;	
	}
	//选中的购物车商品结算
	@RequestMapping("public/toBuyingGood1.do")
	public ModelAndView toBuyingGood1(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<ShoppingCar> list =(ArrayList<ShoppingCar>)request.getSession().getAttribute("shoppingCarList");
		System.out.println("asdasssssssssssssssss"+list.size());
		
		MyAccount account = (MyAccount)request.getSession().getAttribute("account");
		String userId = account.getUserId();
		String a = request.getParameter("totalPrice");
		String b = request.getParameter("addressId");
		Buys buys = null;
		for(int i = 0;i<list.size();i++){
			buys = new Buys();
			ShoppingCar s = list.get(i);
			String iidd = UUIDUtil.getUUID();
			buys.setId(iidd);
			buys.setGoodsId(s.getGoodsId());
			buys.setUserId(userId);
			buys.setNums(s.getNums());
			buys.setCreateTime(MyTime.getDate());
			buys.setState("待评价");
			buysService.add(buys);
		}
		ShoppingCar sc = null;
		for(int i = 0;i<list.size();i++){
			sc = list.get(i);
			shoppingCarService.delete(sc.getId());
			
		}
		request.setAttribute("totalPrice", a);
		Address s = addressService.getById(b);
		request.setAttribute("s", s);
		mav.setViewName("pu/successful");
		return mav;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//新添加的一些部分
	//跳转到注册用户
	@RequestMapping("public/toRegist.do")
	public ModelAndView toRegist(){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/Regist");
		return mav;	
	}
	
	
	
	
	
	//注册用户
	@RequestMapping("public/regiest.do")
	public ModelAndView regiest(HttpServletRequest request){
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		MyAccount ma=new MyAccount();
		ma.setId(UUIDUtil.getUUID());
		ma.setUsername(username);
		ma.setPassword(password);
		ma.setUserId(UUIDUtil.getUUID());
		
		myAccountService.add(ma);
		request.getSession().setAttribute("myAccount", ma);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/welcome");
		return mav;	
	}
	
	
	
	
	
	
	//跳转到登录
	@RequestMapping("public/toLogin.do")
	public ModelAndView toLogin(){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/login");
		return mav;	
	}
	
	
	
	
	
	/*//用户登录
	@RequestMapping("public/login.do")
	public void login(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		MyAccount account=myAccountService.checkLogin(username, password);
		if (account!=null) {
			request.getSession().setAttribute("account", account);
			
			
			request.getRequestDispatcher("/WEB-INF/jsp/pu/welcome.jsp").forward(request, response);
			
		} else {
			request.getRequestDispatcher("toRegist.do").forward(request, response);
		}
		
	}

	
	
	
	
	//跳转到完善个人信息
	@RequestMapping("public/toWriteMember.do")
	public ModelAndView toWriteMember(){
		
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("pu/member");
		return mav;	
	}
	
	//完善个人信息
	@RequestMapping("public/member.do")
	public ModelAndView member(HttpServletRequest request){
		
		String name=request.getParameter("name");
		String sex=request.getParameter("radio10");
		String nian=request.getParameter("nian");
		String yue=request.getParameter("yue");
		String ri=request.getParameter("ri");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String userId=request.getParameter("userId");
		//System.out.println("======================"+userId);
		MyAccount ma=(MyAccount) request.getSession().getAttribute("account");
		
		//System.out.println("+++++++++++++++++"+name+sex+nian+yue+ri+phone+email+ma.getUserId()+ma);
		MyUser myuser=new MyUser();
		myuser.setId(ma.getUserId());
		myuser.setAddress("深圳");
		myuser.setAge("23");
		myuser.setBirth(nian+"-"+yue+"-"+ri);
		myuser.setDescribe("土豪");
		myuser.setEmail(email);
		myuser.setIntegral("30");
		myuser.setName(name);
		myuser.setPhone(phone);
		myuser.setSex(sex);
		myuser.setType("普通会员");
		
		myUserService.add(myuser);
		
		//System.out.println("111111111111111111111111"+myuser);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/welcome");
		return mav;	
	}
	*/
	
	//用户登录
	@RequestMapping("public/login.do")
	public void login(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		MyAccount account=myAccountService.checkLogin(username, password);
		if (account!=null) {
			request.getSession().setAttribute("account", account);
			
			
			request.getRequestDispatcher("/WEB-INF/jsp/pu/welcome.jsp").forward(request, response);
			
		} else {
			request.getRequestDispatcher("toRegist.do").forward(request, response);
		}
		
	}

	
	
	
	
	//跳转到完善个人信息
	@RequestMapping("public/toWriteMember.do")
	public ModelAndView toWriteMember(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		//List<MyUser> msex=myUserService.getBySex("sex");
		
		MyAccount account=(MyAccount) request.getSession().getAttribute("account");
		//request.setAttribute("msex", msex);
		request.getSession().setAttribute("ac", account);
		if (account!=null) {
			MyUser user=myUserService.getById(account.getUserId());
			request.getSession().setAttribute("u", user);
			mav.setViewName("pu/mem");	
			
		} else {
			mav.setViewName("pu/login");	

		}
		
			
			
		return mav;	
	}
	
	//完善个人信息
	@RequestMapping("public/member.do")
	public ModelAndView member(HttpServletRequest request){
		
		String name=request.getParameter("name");
		String sex=request.getParameter("radio10");
		String nian=request.getParameter("nian");
		String yue=request.getParameter("yue");
		String ri=request.getParameter("ri");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String userId=request.getParameter("userId");
		//System.out.println("======================"+userId);
		MyAccount ma=(MyAccount) request.getSession().getAttribute("account");
		
		//System.out.println("+++++++++++++++++"+name+sex+nian+yue+ri+phone+email+ma.getUserId()+ma);
		MyUser myuser=new MyUser();
		myuser.setId(ma.getUserId());
		myuser.setAddress("深圳");
		myuser.setAge("23");
		myuser.setBirth(nian+"-"+yue+"-"+ri);
		myuser.setDescribe("土豪");
		myuser.setEmail(email);
		myuser.setIntegral("30");
		myuser.setName(name);
		myuser.setPhone(phone);
		myuser.setSex(sex);
		myuser.setType("普通会员");
		
		myUserService.add(myuser);
		
		//System.out.println("111111111111111111111111"+myuser);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/welcome");
		return mav;	
	}
	
	
	//查看个人信息
	@RequestMapping("public/toSeePerson.do")
	public ModelAndView toSeePerson(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		//List<MyUser> msex=myUserService.getBySex("sex");
		
		MyAccount account=(MyAccount) request.getSession().getAttribute("account");
		//request.setAttribute("msex", msex);
		request.getSession().setAttribute("ac", account);
		if (account!=null) {
			MyUser user=myUserService.getById(account.getUserId());
			request.getSession().setAttribute("u", user);
			mav.setViewName("pu/mem");	
			
		} else {
			mav.setViewName("pu/member");	

		}
		
			
			
		return mav;	
	}

	
	
	
	//跳转到西式婚礼
	@RequestMapping("public/toxi.do")
	public ModelAndView toxi(HttpServletRequest request ){
		
		ModelAndView mav=new ModelAndView();
		List<Goods> list = goodsService.getByUse("婚嫁");
		List<Picture> list1 = new ArrayList<Picture>();
		System.out.println("asadasdas"+list.get(1).getId());
		Picture p = null;
		for(Goods g:list){
			System.out.println("eeeeeeeeeeeeeeeeee"+g.getId());
			p = pictureService.getByGoodsId(g.getId());
			System.out.println("qqqqqqqqqqqqqqqqqqqqqq"+p.getDoPath());
			list1.add(p);
		}
		System.out.println("asadasdas"+list1.get(1).getId());
		List<GoodsAndPicture> list2 = GoodsPictureUtil.get(list, list1);
		System.out.println("asadasdas"+list2.get(1).getName());
		request.setAttribute("list", list2);
		System.out.println(list2.get(0).getPictureDoPath());
		mav.setViewName("pu/list");
		return mav;	
	}
	
	
	
	
	//跳转到我的礼物页面
	@RequestMapping("public/tomyGift.do")
	public ModelAndView tomyGift(HttpServletRequest request ){
		
		ModelAndView mav=new ModelAndView();
		List<Goods> list = goodsService.getByUse("礼品");
		List<Picture> list1 = new ArrayList<Picture>();
		System.out.println("asadasdas"+list.get(1).getId());
		Picture p = null;
		for(Goods g:list){
			System.out.println("qqqqqqqqqqqqqqqqqqqqqq"+g.getId());
			p = pictureService.getByGoodsId(g.getId());
			list1.add(p);
		}
		System.out.println("asadasdas"+list1.get(1).getId());
		List<GoodsAndPicture> list2 = GoodsPictureUtil.get(list, list1);
		System.out.println("asadasdas"+list2.get(1).getName());
		request.setAttribute("list", list2);
		System.out.println(list2.get(0).getPictureDoPath());
		mav.setViewName("pu/list");
		return mav;	
	}
	
	//跳转到我的收获地址
	@RequestMapping("public/toaddress.do")
	public ModelAndView toaddress(HttpServletRequest request){
		System.out.println("123345++++++++++++++");
		ModelAndView mav=new ModelAndView();
		MyAccount account=(MyAccount) request.getSession().getAttribute("account");
		if (account!=null) {
			List<Address>  list=addressService.getByUserId(account.getUserId());
			request.setAttribute("list", list);
		} 
		
		
		
		
		
		mav.setViewName("pu/address");
		return mav;	
	}
	
	
	//删除我的收获地址
	@RequestMapping("public/addressDe.do")
	public String addressDe(HttpServletRequest request){
		
		String addressId=request.getParameter("addressId");
		addressService.delete(addressId);
		
		return "forward:toaddress.do";
		
	}
	
	//添加我的收获地址
	@RequestMapping("public/address.do")
	public String AddAddress(HttpServletRequest request){
		
		String username = request.getParameter("name");
		String userPhone = request.getParameter("phone");
		String address = request.getParameter("uaddress");
		System.out.println("999999999999999999999"+username);
		System.out.println("999999999999999999999"+userPhone);
		System.out.println("999999999999999999999"+address);
		MyAccount ma=(MyAccount) request.getSession().getAttribute("account");
		System.out.println("999999999999999999999"+ma.getUserId());
		Address ad = new Address();
		ad.setId(UUIDUtil.getUUID());
		ad.setUserId(ma.getUserId());
		ad.setAddress(address);
		ad.setName(username);
		ad.setPhone(userPhone);
		addressService.add(ad);
		
		return "forward:toaddress.do";
		
	}
	
	//跳转到我的收藏public/toCollection.do
	@RequestMapping("public/toCollection.do")
	public ModelAndView toCollection(){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/Collection");
		return mav;	
	}
	
	
	
	
	//修改密码
	@RequestMapping("public/toChangPassword.do")
	public ModelAndView toChangPassword(){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("pu/ChangPassword");
		return mav;	
	}
	
	
	
	/**
	 * 
	 * 
	 * @param request
	 * @return
	 */
	//跳转到购买页面
	@RequestMapping("public/toBuyGood.do")
	public ModelAndView toBuyGoodd(HttpServletRequest request){
		
		ModelAndView mav=new ModelAndView();
		//public/toLogin.do
		MyAccount account = (MyAccount)request.getSession().getAttribute("account");
		
		if(account!=null){
			String id =request.getParameter("idd");//商品id			
			String num = request.getParameter("coon");//商品数量
			
			int buyNum = Integer.valueOf(num); 
			Goods good = goodsService.getById(id);
			int price = Integer.valueOf(good.getPrice());
			String path = pictureService.getByGoodsId(id).getDoPath();
			
			request.setAttribute("good", good);
			request.setAttribute("num", buyNum);
			request.setAttribute("path", path);
			request.setAttribute("price", price);
			mav.setViewName("pu/goodsBuy");
			
			List<Address> list = addressService.getAll(account.getUserId());
			for (Address address : list) {
				System.out.println(address.getId());
			}
			request.setAttribute("addressList", list);
			mav.setViewName("pu/goodsBuy");
		}else{
			
			mav.setViewName("pu/login");
		}		
		
		return mav;		
		
	}
	//进行购买操作
	@RequestMapping("public/toBuyingGood.do")
	public ModelAndView toBuyingGood(HttpServletRequest request){
		
		ModelAndView mav=new ModelAndView();
		MyAccount account = (MyAccount)request.getSession().getAttribute("account");
		String userId = account.getUserId();
		String a = request.getParameter("totalPrice");
		String b = request.getParameter("addressId");
		String c = request.getParameter("goodsId");
		String d = request.getParameter("num");
		Goods goods = goodsService.getById(c);
		String num3=goods.getNums();
		/*System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa="+a);
		System.out.println("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb="+b);
		System.out.println("cccccccccccccccccccccccccccccccccccccccc="+c);
		System.out.println("dddddddddddddddddddddddddddddddddddddddd="+d);
*/		//System.out.println("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb="+b);
		Buys buys = new Buys();
		String iidd = UUIDUtil.getUUID();
		buys.setId(iidd);
		buys.setGoodsId(c);
		buys.setUserId(userId);
		buys.setNums(d);
		buys.setCreateTime(MyTime.getDate());
		buys.setState("待评价");
		boolean aa = buysService.add(buys);
		
		if(aa){
			int num = Integer.valueOf(d);
			int nums = Integer.valueOf(goods.getNums());
			String num1 = (nums-num)+"";
			goods.setNums(num1);
			
			goodsService.update(goods);
			String num2=goodsService.getById(c).getNums();
			
			if(num2.equals(num3)){
				buysService.delete(iidd);
			}else{
				request.setAttribute("totalPrice", a);
				Address s = addressService.getById(b);
				request.setAttribute("s", s);
				mav.setViewName("pu/successful");
			}
		}
		
		return mav;		
		
	}
	//添加收货地址
	@RequestMapping("public/addAddressss.do")
	public ModelAndView toAddAddress11(HttpServletRequest request){
		MyAccount account = (MyAccount)request.getSession().getAttribute("account");
		ModelAndView mav=new ModelAndView();
		String username = request.getParameter("user-name");
		String userPhone = request.getParameter("user-phone");
		String address = request.getParameter("user-intro");
		Address ad = new Address();
		ad.setId(UUIDUtil.getUUID());
		ad.setUserId(account.getUserId());
		ad.setAddress(address);
		ad.setName(username);
		ad.setPhone(userPhone);
		addressService.add(ad);
		
		mav.setViewName("pu/goodsBuy");
		return mav;		
		
	}

	
//跳转到订单管理
	
	@RequestMapping("public/toMangerOrder.do")
	public ModelAndView toMangerOrder(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		MyAccount account = (MyAccount)request.getSession().getAttribute("account");
		System.out.println("aaaaaaaaaa"+account);
		String userId = account.getUserId();
		//String userId="sdaaaaaaaaaaaa";
		System.out.println("sssssssssssssssssssssssss"+userId);
		List<Buys> list = buysService.getByUserIdAndState("", userId);
		List<Buys> list1 = buysService.getByUserIdAndState("待评价", userId);
		Goods g = null;
		List<Goods> list5 = new ArrayList<Goods>();
		List<Goods> list6 = new ArrayList<Goods>();
		for(int i = 0;i<list.size();i++){
			Buys b = list.get(i);
			g = goodsService.getById(b.getGoodsId());
			list5.add(g);
		}
		for(int i = 0;i<list1.size();i++){
			Buys b = list1.get(i);
			g = goodsService.getById(b.getGoodsId());
			list6.add(g);
		}
	
		
		List<Picture> list10 = new ArrayList<Picture>();
		Picture p1 = null;
		for(Goods g1:list5){
			p1 = pictureService.getByGoodsId(g1.getId());
			list10.add(p1);
		}
		List<GoodsAndPicture> list11 = GoodsPictureBuys.get(list5, list10,list);
		
		
	
		List<Picture> list12 = new ArrayList<Picture>();
		Picture p2 = null;
		for(Goods g1:list6){
			p2 = pictureService.getByGoodsId(g1.getId());
			list12.add(p2);
		}
		List<GoodsAndPicture> list13 = GoodsPictureBuys.get(list6, list12,list1);
		
		request.setAttribute("list", list11);
		mav.setViewName("pu/mangerOrder");
		request.setAttribute("list1", list13);
		return mav;
	}
	//删除订单
	@RequestMapping("public/deleteBuys.do")
	public String deleteBuys(HttpServletRequest request){

		String buysId = request.getParameter("buysId");
		buysService.delete(buysId);
		return "forward:/public/toMangerOrder.do";
	}
	//跳转到评价页
	@RequestMapping("public/toComment.do")
	public ModelAndView toComment(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		MyAccount account = (MyAccount)request.getSession().getAttribute("account");
		System.out.println("aaaaaaaaaa"+account);
		String userId = account.getUserId();
		System.out.println("ssssssssssss"+userId);
		//String userId = "sdaaaaaaaaaaaa";
		String goodsId = request.getParameter("goodsId");
		System.out.println("ssaaaaasssssss"+goodsId);
		Goods g = goodsService.getById(goodsId);
		Picture p = pictureService.getByGoodsId(goodsId);
		Buys b = buysService.getByUserIdAndStateAndGoodsId(userId,"待评价",goodsId);
		GoodsAndPicture gap = GoodsPictureBuys.get2(p, g,b);
		request.setAttribute("gap",gap);
		mav.setViewName("pu/comment");
		return mav;
	}
	
	
	//评价页
	@RequestMapping("public/comment.do")
	public String comment(HttpServletRequest request){
		String textture = request.getParameter("textture");
		String goodsType = request.getParameter("type");
		String goodsId = request.getParameter("goodsId");
		MyAccount account = (MyAccount)request.getSession().getAttribute("account");
		String userId = account.getUserId();
		String content = request.getParameter("content");
		String createTime = MyTime.getDate();
		String type = request.getParameter("pj");
		String id = UUIDUtil.getUUID();
		Comments c = new Comments();
		c.setContent(content);
		c.setCreateTime(createTime);
		c.setGoodsId(goodsId);
		c.setGoodsType(goodsType);
		c.setId(id);
		c.setTextture(textture);
		c.setType(type);
		c.setUserId(userId);
		commentsService.add(c);
		Buys b = buysService.getByUserIdAndStateAndGoodsId(userId,"待评价",goodsId);
		b.setState("已评价");
		buysService.update(b);
		
		return "forward:/public/toMangerOrder.do";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
