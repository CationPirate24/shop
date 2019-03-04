package com.java.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.bean.MyResource;
import com.java.bean.MyRole;
import com.java.bean.RoleResource;
import com.java.service.MyResourceService;
import com.java.service.MyRoleService;
import com.java.service.RoleResourceService;
import com.java.util.UUIDUtil;

@Controller
public class ResourceController {
	
	@Autowired
	private RoleResourceService roleResourceService;

	@Autowired
	private MyResourceService myResourceService;
	
	@RequestMapping("user/toMyResource.do")
	public ModelAndView toMyResource(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<MyResource> list = myResourceService.getAll("");
		request.setAttribute("list", list);
		int count = list.size();
		request.setAttribute("count", count);
		mav.setViewName("user/myResource");
		return mav;
	}
	@RequestMapping("user/toAddResource.do")
	public ModelAndView toAddRole(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/myResourceAdd");
		return mav;
	}
	@RequestMapping("user/addResource.do")
	public String addRole(String roleName,String bz){
		MyResource mr = new MyResource();
		mr.setId(UUIDUtil.getUUID());
		mr.setContent(roleName);
		mr.setBz(bz);
		myResourceService.add(mr);
		return "forward:/user/toMyResource.do";
	}
	@RequestMapping("user/deleteResource.do")
	public String deleteRole(String id){
		
		myResourceService.delete(id);
		return "forward:/user/toMyResource.do";
	}
	@RequestMapping("user/toUpdateResource.do")
	public ModelAndView toUpdateRole(HttpServletRequest request,MyResource myResource){
		ModelAndView mav = new ModelAndView();

		request.setAttribute("myResource", myResource);
		mav.setViewName("user/updateResource");
		return mav;
	}
	@RequestMapping("user/updateResource.do")
	public String updateRole(HttpServletRequest request,String roleName,String id,String bz){
		MyResource mr = new MyResource();
		mr.setContent(roleName);
		mr.setId(id);
		mr.setBz(bz);
		myResourceService.update(mr);
		return "forward:/user/toMyResource.do";
	}
	
	@RequestMapping("user/checkDeleteResource.do")
	public String checkdelete(HttpServletRequest request){
		
		String id1=request.getParameter("deleteId");
		System.out.println("EEEEEEEEEEEEEEEE"+id1);
		String haha[] = id1.split(",");
		
		for (int i = 0; i < haha.length; i++) {
			String id= haha[i];
			myResourceService.delete(id);
		}
	
		return "forward:/user/toMyResource.do";
		
	}
	@Autowired
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
	public ModelAndView toAddRole1(){
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
	public String deleteRole1(String id){
		
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
	public String checkdelete1(HttpServletRequest request){
		
		String id1=request.getParameter("deleteId");
		System.out.println("EEEEEEEEEEEEEEEE"+id1);
		String haha[] = id1.split(",");
		
		for (int i = 0; i < haha.length; i++) {
			String id= haha[i];
			myRoleService.delete(id);
		}
	
		return "forward:/user/toMyRole.do";
		
	}
	
	/**
	 * 角色资源列表
	 * @return
	 */
	//跳转到角色资源列列表
	@RequestMapping("user/toadminroleresource.do")
	public ModelAndView adminRoleee(HttpServletRequest request){
		String con = request.getParameter("con");
		if(con==null||"null".equals(con)){
			con = "%%";
		}else{
			con = "%"+con+"%";
		}
		List<MyRole> rolelist = myRoleService.getAll(con);
		List<RoleResource> arlist = new ArrayList<RoleResource>();
		String resources = "";
		List<String> list3 = new ArrayList<String>();
		for (MyRole acc : rolelist) {
			arlist=roleResourceService.getAll(acc.getId());
			//System.out.println("++++++++++++++++++++++++++++"+arlist.size());
			for (RoleResource ar : arlist) {
				MyResource mr = myResourceService.getById(ar.getResourceId());
				
				resources=mr.getBz()+","+resources;
				
			}
			//roles=roles.substring(0,roles.length()-1);
			list3.add(resources);
			resources="";
		}		
		
		request.setAttribute("muList",rolelist);
		request.setAttribute("size",rolelist.size());
		request.setAttribute("resourceList", list3);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("user/aa");
		return mav;	
	}
	//跳转到修改角色资源
	@RequestMapping("user/toRoleRsourceUpdate.do")
	public ModelAndView toRoleResourceeee(HttpServletRequest request){
		
		/*ModelAndView mav=new ModelAndView();
		String roleId=request.getParameter("id");
		MyRole role = myRoleService.getById(roleId);
		String con1 = "";
		List<MyResource> list = myResourceService.getAll(con1);
		List<RoleResource> list1 = roleResourceService.getAll(roleId);
		request.setAttribute("role", role);
		request.setAttribute("resourceList", list);
		String rn="";
		for (RoleResource ar : list1) {
			String resourceId=ar.getResourceId();
			MyResource mr=myResourceService.getById(resourceId);
			String resourceName=mr.getContent();
			rn=resourceName+rn+",";
		}
		request.setAttribute("rn", rn);
		mav.setViewName("user/updateAdmin");
		return mav;*/
		
		ModelAndView mav = new ModelAndView();
		String roleId = request.getParameter("id");
		
		List<RoleResource> rrlist =  roleResourceService.getAll(roleId);
		List<MyResource> resourceList = myResourceService.getAll("");
		List<String> rlist = new ArrayList<String>();
		for(int i=0;i<rrlist.size();i++){
			String bz = rrlist.get(i).getResourceId();
			rlist.add(bz);
		}
		
		List<RoleResource> arlist = new ArrayList<RoleResource>();
		arlist=roleResourceService.getAll(roleId);
		String resources = "";
		for (RoleResource ar : arlist) {
			MyResource mr = myResourceService.getById(ar.getResourceId());			
			
			resources=mr.getBz()+","+resources;		
		}
		
		MyRole mr = myRoleService.getById(roleId);
		String roleName = mr.getContent();		
		
		request.setAttribute("mr", mr);
		request.setAttribute("roleName", roleName);
		request.setAttribute("muList", resourceList);
		request.setAttribute("rlist", resources);
		request.setAttribute("size", rlist.size());
		
		
		
		mav.setViewName("user/aa1");
		return mav;
	}
	//修改角色资源
	@RequestMapping("user/roleRsourceUpdate.do")
	public String updateadmineeee(HttpServletRequest request){
		String id1=request.getParameter("roleId");

		String[] resource = request.getParameter("resource").split(",");
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+resource.length);
		for (int i = 0; i < resource.length; i++) {
			/*String roleName=resource[i];
			String id = UUIDUtil.getUUID();
			List<MyResource> list =  myResourceService.getAll(roleName);
			String resourceId = null;
			for(MyResource m:list){
				 resourceId =m.getId() ;
			}*/
			String id = UUIDUtil.getUUID();
			RoleResource rr = new RoleResource();
			rr.setId(id);
			rr.setRoleId(id1);
			rr.setResourceId(resource[i]);
			roleResourceService.add(rr);		
		}
		return "forward:toadminroleresource.do";
	}
	
}
