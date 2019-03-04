package com.java.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.bean.MyAccount;
import com.java.bean.MyUser;
import com.java.service.MyAccountService;
import com.java.service.MyUserService;
import com.java.util.UUIDUtil;

@Controller
public class UController{
	
	@Autowired
	private MyUserService myUserService;
	
	@Autowired
	private MyAccountService myAccountService;
	
	
	@RequestMapping("/user/memberList.do")
	public ModelAndView memberList(HttpServletRequest request){
		System.out.println("wwwwwwwwwwwww");
		ModelAndView mav = new ModelAndView();
		
		String na="";
		List<String> list2=new ArrayList<String>();
		List<MyUser> list = myUserService.getAll("");
		List<MyAccount> list1 = myAccountService.getAll("");
		for (MyAccount ma : list1) {
			na=na+ma.getUsername();
			list2.add(na);
			na="";
		}
		
		
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		int count = list.size();
		request.getSession().setAttribute("count", count);
		mav.setViewName("user/memberList");
		
		return mav;
	}
	
	@RequestMapping("/user/toMemberUpdate.do")
	public ModelAndView tomemberUpdate(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("user/memberUpdate");
		return mav;
	}
	@RequestMapping("/user/toMemberAdd.do")
	public ModelAndView toMemberAdd(MyUser myUser){
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("user/memberAdd");
		return mav;
	}
	
	@RequestMapping("/user/memberAdd.do")
	public String memberAdd(MyUser myUser,HttpServletRequest request){
		System.out.println("weeeeeeeeeeeeeeq");
		myUser.setId(UUIDUtil.getUUID());
		myUserService.add(myUser);
		
		return "forward:/user/memberList.do";
	}
	
	@RequestMapping("user/memberDelete.do")
	public String memberDelete(String id,HttpServletRequest request){
		System.out.println("++++++++++++++++++++++"+id);
		myUserService.delete(id);
		
		return "forward:/user/memberList.do";
	}
	@RequestMapping("/user/updateType.do")
	public String updateType(String id,String type1){
		
		System.out.println(id+type1+"asdasdasd");
		myUserService.updateType(id,type1);
		return "forward:/user/toMemberGrade.do";
	}
	@RequestMapping("/user/toMemberGrade.do")
	public ModelAndView toMemberGrade(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		String na="";
		List<String> list2=new ArrayList<String>();
		List<MyUser> list = myUserService.getAll("");
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		List<MyAccount> list1 = myAccountService.getAll("");
		for (MyAccount ma : list1) {
			na=na+ma.getUsername();
			list2.add(na);
			na="";
		}
		
		mav.setViewName("user/memberGrade");
		return mav;
	}
	@RequestMapping("/user/toChangePassword.do")
	public ModelAndView toChangePassword(HttpServletRequest request,String name1,String id){
		ModelAndView mav = new ModelAndView();
		System.out.println(name1);
		request.setAttribute("name1", name1);
		request.setAttribute("id1", id);
		mav.setViewName("user/changePassword");
		return mav;
	}
	
	@RequestMapping("/user/changePassword.do")
	public String changePassword(HttpServletRequest request,String newpassword,String newpassword2,String id){
		System.out.println(newpassword);
		System.out.println("AAAAAAAA"+id);
		
		if(newpassword.equals(newpassword2)){
			myAccountService.updatePassword(newpassword, id);
			return "forward:/user/memberList.do";
		}else{
			String aa = "两次密码输入不相同";
			request.setAttribute("aa", aa);
			return "forward:/user/toChangePassword.do";
		}

	}
	
	@RequestMapping("/user/checkDeleteUser.do")
	public String checkdelete(HttpServletRequest request){
		
		String id1=request.getParameter("deleteId");
		System.out.println("EEEEEEEEEEEEEEEE"+id1);
		String haha[] = id1.split(",");
		
		for (int i = 0; i < haha.length; i++) {
			String id= haha[i];
			myUserService.delete(id);
		}
		
		return "forward:/user/memberList.do";
		
	}
	
	@RequestMapping("/user/toIntegral.do")
	public ModelAndView toIntegral(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/integral");
		String na="";
		List<String> list2=new ArrayList<String>();
		List<MyUser> list = myUserService.getAll("");
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		List<MyAccount> list1 = myAccountService.getAll("");
		for (MyAccount ma : list1) {
			na=na+ma.getUsername();
			list2.add(na);
			na="";
		}	
		return mav;
	}
}











































