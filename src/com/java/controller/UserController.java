package com.java.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.java.bean.AccountRole;
import com.java.bean.Goods;
import com.java.bean.MyAccount;
import com.java.bean.MyRole;
import com.java.bean.MyUser;
import com.java.bean.RoleResource;
import com.java.service.AccountRoleService;
import com.java.service.GoodsService;
import com.java.service.MyAccountService;
import com.java.service.MyResourceService;
import com.java.service.MyRoleService;
import com.java.service.MyUserService;
import com.java.service.RoleResourceService;
import com.java.util.MyTime;
import com.java.util.UUIDUtil;




@Controller
public class UserController{
	
	@Autowired
	private GoodsService goodsService;
	@Autowired
	private MyAccountService  myAccountService;
	@Autowired
	private MyUserService myUserService;
	@Autowired
	private AccountRoleService accountRoleService;
	@Autowired
	private RoleResourceService roleResourceService;
	@Autowired
	private MyResourceService myresourceService;
	@Autowired
	private MyRoleService myRoleService;
	
	
	//跳转到登录界面
	@RequestMapping("/user/toLogin.do")
	public ModelAndView toLogin(){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/login");
		
		return mav;
	}
	
	//登录界面
	@RequestMapping("user/login.do")
	public ModelAndView index(HttpServletRequest request,String username,String password){
		ModelAndView mav = new ModelAndView();
		System.out.println("--------------------"+username);
		MyAccount account=myAccountService.checkLogin(username, password);
		
		System.out.println("--------------------"+password);
		if (account!=null) {
			//账户id
			String accountid=account.getId();
			//String userid=account.getUserId();
			//创建一个集合存放权限
			List<String> list2 = new ArrayList<String>();
			List<AccountRole> list=accountRoleService.getAll(accountid);
			for (int i = 0; i < list.size(); i++) {
				AccountRole ar=list.get(i);
				List<RoleResource> list1=roleResourceService.getAll(ar.getRoleId());
				for (int j = 0; j < list1.size(); j++) {
					RoleResource rr=list1.get(j);
					String content=myresourceService.getById(rr.getResourceId()).getContent();
					list2.add(content);
				}
				
			}
			request.getSession().setAttribute("account", account);
			request.getSession().setAttribute("list2", list2);
			System.out.println("+++++++++++++++++++"+list2.size());
			mav.setViewName("user/index");
			
		} else {
			
			mav.setViewName("user/login");
		}
		return mav;
	}
	//完善个人信息
	@RequestMapping("user/toAddperson.do")
	public ModelAndView toAddperson(HttpServletRequest request){
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("user/person");
		return mav;	
	}
	//商品管理列表
	@RequestMapping("user/toArticle-list.do")
	public ModelAndView toArticle(HttpServletRequest request){
		
		String con = request.getParameter("con");
		if(con==null||"null".equals(con)){
			con = "%%";
		}else{
			con = "%"+con+"%";
		}
		List<Goods> list = goodsService.getAll(con);
		
		if(list!=null){
			for(Goods mu:list){
				System.out.println(mu.getName());
				System.out.println("----------");
			}
		}else{
			System.out.println("没有数据");
		}
		
		request.setAttribute("muList",list);
		request.setAttribute("size",list.size());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/article");
		
		return mav;	
	}
	//模糊查询所有
	@RequestMapping("user/tocheckList.do")
	public ModelAndView tocheckList(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		String con=request.getParameter("chaxunid");
		System.out.println("--------------"+con);
		List<Goods> list1=goodsService.getAll(con);
		
		request.setAttribute("muList", list1);
		request.setAttribute("size",list1.size());
		mav.setViewName("user/checkList");
		return mav;
		
	}
	
	//跳转到添加商品
	@RequestMapping("user/toAddarticle.do")
	public ModelAndView toAdd(){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/Addarticle");
		
		return mav;
	}
	//添加商品
	@RequestMapping("user/add.do")
	public String add(HttpServletRequest request){
		
		String name=request.getParameter("name1");
		String textture=request.getParameter("textture1");
		String type=request.getParameter("type1");
		String weight=request.getParameter("weight1");
		String price=request.getParameter("price1");
		String describe=request.getParameter("describe1");
		String num=request.getParameter("num1");
		String use=request.getParameter("use1");
		String state=request.getParameter("state1");
		
		Goods good=new Goods();
		good.setId(UUIDUtil.getUUID());
		good.setCreateDate(MyTime.getDate());
		good.setDescribe(describe);
		good.setName(name);
		good.setNums(num);
		good.setPrice(price);
		good.setState(state);
		good.setTextture(textture);
		good.setType(type);
		good.setUse(use);
		good.setWeight(weight);
		goodsService.add(good);
		return "forward:toArticle-list.do";
	}
	
	
		//头部修改商品
		@RequestMapping("user/tocheckUpdate.do")
		public ModelAndView tocheckUpdate(HttpServletRequest request){
			
			System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			String id=request.getParameter("id1");
			ModelAndView mav = new ModelAndView();
			Goods goods=goodsService.getById(id);
			System.out.println("+++++++++++++++++++++++"+goods.getCreateDate());
			request.setAttribute("goods", goods);
			mav.setViewName("user/goodsUpdate");
			
			return mav;
		}
	
	
	//跳转修改商品
	@RequestMapping("user/toArticleUpdate.do")
	public ModelAndView toArticleUpdate(HttpServletRequest request){
		String id=request.getParameter("id");
		System.out.println("_______________________"+id);
		ModelAndView mav = new ModelAndView();
		
		Goods goods=goodsService.getById(id);
		System.out.println("+++++++++++++++++++++++"+goods.getCreateDate());
		request.setAttribute("goods", goods);
		mav.setViewName("user/goodsUpdate");
		return mav;
	}
	//修改商品
	@RequestMapping("user/update.do")
	public String update(HttpServletRequest request){
		String id=request.getParameter("id");
		String name=request.getParameter("name1");
		String textture=request.getParameter("textture1");
		String type=request.getParameter("type1");
		String weight=request.getParameter("weight1");
		String price=request.getParameter("price1");
		String describe=request.getParameter("describe1");
		String num=request.getParameter("num1");
		String use=request.getParameter("use1");
		String state=request.getParameter("state1");
		String createDate=request.getParameter("createDate1");
		Goods good=new Goods();
		good.setId(id);
		good.setCreateDate(createDate);
		good.setDescribe(describe);
		good.setName(name);
		good.setNums(num);
		good.setPrice(price);
		good.setState(state);
		good.setTextture(textture);
		good.setType(type);
		good.setUse(use);
		good.setWeight(weight);
		goodsService.update(good);
		return "forward:toArticle-list.do";
	}
	
	
	//删除商品
	@RequestMapping("user/Articledelete.do")
	public String Articledelete(String id){
		System.out.println("_______________"+id);
		goodsService.delete(id);
		return "forward:toArticle-list.do";
	}
	//批量删除商品
	@RequestMapping("user/checkdelete.do")
	public String checkdelete(HttpServletRequest request){
		
		String id1=request.getParameter("deleteid");
		String haha[] = id1.split(",");
		
		for (int i = 0; i < haha.length; i++) {
			String id= haha[i];
			goodsService.delete(id);
		}
		return "forward:toArticle-list.do";
		
	}
	
/*
 * 管理员的操作
 */
	//跳转到管理员列表
	@RequestMapping("user/toadmin-list.do")
	public ModelAndView adminList(HttpServletRequest request){
		String con = request.getParameter("con");
		if(con==null||"null".equals(con)){
			con = "%%";
		}else{
			con = "%"+con+"%";
		}
		List<MyAccount> accountlist = myAccountService.getAll(con);
		List<AccountRole> arlist = new ArrayList<AccountRole>();
		String roles = "";
		List<String> list3 = new ArrayList<String>();
		for (MyAccount acc : accountlist) {
			arlist=accountRoleService.getAll(acc.getId());
			for (AccountRole ar : arlist) {
			MyRole mr=myRoleService.getById(ar.getRoleId());
			roles=mr.getContent()+roles+",";
				
			}
			//roles=roles.substring(0,roles.length()-1);
			list3.add(roles);
			roles="";
		}
		request.setAttribute("muList",accountlist);
		request.setAttribute("size",accountlist.size());
		request.setAttribute("roleList", list3);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("user/adminList");
		return mav;	
	}
	//删除管理员
	@RequestMapping("user/admindelete.do")
	public String admindelete(String id){
		System.out.println("12333"+id);
		accountRoleService.delete(id);
		myAccountService.delete(id);
		return "forward:toadmin-list.do";
	}
	//批量删除
	@RequestMapping("deleteadmin.do")
	public String deleteadmin(String deleteid){
		System.out.println("12333"+deleteid);
		String haha[] = deleteid.split(",");
		for (int i = 0; i < haha.length; i++) {
			String id= haha[i];
			accountRoleService.delete(id);
			myAccountService.delete(id);
		}	
		return "forward:toadmin-list.do";
	}
	//跳转到添加管理员
	@RequestMapping("user/toaddAdmin.do")
	public ModelAndView toaddAdmin(HttpServletRequest request){
		
		
		ModelAndView mav = new ModelAndView();
		String con = "";
		List<MyRole> roleList = myRoleService.getAll(con);
		request.setAttribute("roleList", roleList);
		mav.setViewName("user/addAdmin");
		
		return mav;
	}
	//添加管理员
	@RequestMapping("user/addadmin.do")
	public String addadmin(HttpServletRequest request){
		String username=request.getParameter("roleName");
		MyAccount ac=new MyAccount();
		String accountId=UUIDUtil.getUUID();
		ac.setId(accountId);
		ac.setPassword("123");
		
		ac.setUserId(UUIDUtil.getUUID());
		ac.setUsername(username);
		myAccountService.add(ac);
		String[] role = request.getParameterValues("role");
		for (int i = 0; i < role.length; i++) {
			String roleName=role[i];
			String id = UUIDUtil.getUUID();
			List<MyRole> list =  myRoleService.getAll(roleName);
			String roleId = null;
			for(MyRole m:list){
				 roleId =m.getId() ;
			}
			AccountRole accountAndRole = new AccountRole();
			accountAndRole.setId(id);
			accountAndRole.setAccountId(accountId);
			accountAndRole.setRoleId(roleId);
			accountRoleService.add(accountAndRole);	
			
		}
		
		
		
		return "forward:toadmin-list.do";
	}
	
	//跳转到修改管理员
	@RequestMapping("user/toAdminUpdate.do")
	public ModelAndView toAdminUpdate(HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		String accountId=request.getParameter("id1");
		MyAccount account = myAccountService.getById(accountId);
		String con1 = "";
		List<MyRole> list = myRoleService.getAll(con1);
		List<AccountRole> list1 = accountRoleService.getAll(accountId);
		request.setAttribute("account", account);
		request.setAttribute("roleList", list);
		String rn="";
		for (AccountRole ar : list1) {
			String roleId=ar.getRoleId();
			MyRole mr=myRoleService.getById(roleId);
			String roleName=mr.getContent();
			rn=roleName+rn+",";
		}
		request.setAttribute("rn", rn);
		mav.setViewName("user/updateAdmin");
		return mav;	
	}
	//修改管理员
	@RequestMapping("user/updateadmin.do")
	public String updateadmin(HttpServletRequest request){
		String username=request.getParameter("roleName");
		MyAccount ac=new MyAccount();
		String accountId=UUIDUtil.getUUID();
		ac.setId(accountId);
		ac.setPassword("123");
		
		ac.setUserId(UUIDUtil.getUUID());
		ac.setUsername(username);
		myAccountService.add(ac);
		String[] role = request.getParameterValues("role");
		for (int i = 0; i < role.length; i++) {
			String roleName=role[i];
			String id = UUIDUtil.getUUID();
			List<MyRole> list =  myRoleService.getAll(roleName);
			String roleId = null;
			for(MyRole m:list){
				 roleId =m.getId() ;
			}
			AccountRole accountAndRole = new AccountRole();
			accountAndRole.setId(id);
			accountAndRole.setAccountId(accountId);
			accountAndRole.setRoleId(roleId);
			accountRoleService.add(accountAndRole);	
			
		}
		return "forward:toadmin-list.do";
	}
	
	
	
	
	
	
}











































