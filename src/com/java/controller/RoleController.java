package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.bean.MyRole;
import com.java.service.MyRoleService;
import com.java.util.UUIDUtil;

@Controller
public class RoleController {

	/*@Autowired
	private MyRoleService myRoleService;
	
	@RequestMapping("user/toMyRole.do")
	public ModelAndView toMyRole(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<MyRole> list = myRoleService.getAll("");
		int count =list.size() ;
		request.setAttribute("list", list);
		request.setAttribute("count", count);
		mav.setViewName("user/myRole");
		return mav;
		
	}
	@RequestMapping("user/toAddRole.do")
	public ModelAndView toAddRole(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/myRoleAdd");
		return mav;
	}
	@RequestMapping("user/addRole.do")
	public String addRole(String roleName){
		MyRole mr = new MyRole();
		mr.setId(UUIDUtil.getUUID());
		mr.setContent(roleName);
		myRoleService.add(mr);
		return "forward:/user/toMyRole.do";
	}
	@RequestMapping("user/deleteRole.do")
	public String deleteRole(String id){
		
		myRoleService.delete(id);
		return "forward:/user/toMyRole.do";
	}
	@RequestMapping("user/toUpdateRole.do")
	public ModelAndView toUpdateRole(HttpServletRequest request,MyRole myRole){
		ModelAndView mav = new ModelAndView();

		request.setAttribute("myRole", myRole);
		mav.setViewName("user/updateRole");
		return mav;
	}
	@RequestMapping("user/updateRole.do")
	public String updateRole(HttpServletRequest request,String roleName,String id){
		MyRole mr = new MyRole();
		mr.setContent(roleName);
		mr.setId(id);
		myRoleService.update(mr);
		return "forward:/user/toMyRole.do";
	}
	
	@RequestMapping("user/checkDeleteRole.do")
	public String checkdelete(HttpServletRequest request){
		
		String id1=request.getParameter("deleteId");
		System.out.println("EEEEEEEEEEEEEEEE"+id1);
		String haha[] = id1.split(",");
		
		for (int i = 0; i < haha.length; i++) {
			String id= haha[i];
			myRoleService.delete(id);
		}
	
		return "forward:/user/toMyRole.do";
		
	}*/
}
