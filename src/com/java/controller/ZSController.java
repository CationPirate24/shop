package com.java.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.java.bean.MyAccount;
import com.java.bean.Picture;
import com.java.bean.SystemSz;

import com.java.service.MyAccountService;
import com.java.service.PictureService;
import com.java.service.SystemSzService;
import com.java.util.UUIDUtil;

@Controller
public class ZSController{
	
	
	@Autowired
	private SystemSzService systemSzService;
	@Autowired
	private MyAccountService myAccountService;
	@Autowired
	private PictureService pictureService;
	
	//到饼状图
	@RequestMapping("/user/charts_bing.do")
	public ModelAndView charts_bing(){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/charts_bing");
		
		return mav;
	}
	//到柱状图
	@RequestMapping("/user/charts_zhu.do")
	public ModelAndView charts_zhu(){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/charts_zhu");
		
		return mav;
	}
	//到系统设置
	@RequestMapping("/user/systemSZ.do")
	public ModelAndView systemSZ(HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView();
		List<SystemSz> list=systemSzService.getAll("");
		request.setAttribute("myList", list);
		
		mav.setViewName("user/systemSZ");
		
		return mav;
	}
	//修改系统设置内容操作
	@RequestMapping("/user/toUpdate.do")
	public String update(HttpServletRequest request){

		//ModelAndView mav = new ModelAndView();
		String id=request.getParameter("id1");
		String webName=request.getParameter("name1");
		String keyWord=request.getParameter("keyWord1");
		String describe=request.getParameter("describe1");
		String baNum=request.getParameter("baNum1");
		String maxnum=request.getParameter("maxnum1");
		String emailName=request.getParameter("emailName1");
		String keypassword=request.getParameter("keypassword1");
		String address=request.getParameter("address1");
		SystemSz sys=new SystemSz();
		sys.setId(id);
		sys.setWebsiteName(webName);
		sys.setKeyWord(keyWord);
		sys.setDescribe(describe);
		sys.setBaNum(baNum);
		sys.setMaxNum(maxnum);
		sys.setPostAccount(emailName);
		sys.setPostKey(keypassword);
		sys.setPostsAddress(address);
		//System.out.println("-----------------"+sys);
		systemSzService.update(sys);
		//request.setAttribute("myList", list);
		
		
		
		return "forward:/user/systemSZ.do";
	}
	
	
	//到图片列表
	@RequestMapping("/user/toPictureList.do")
	public ModelAndView pictureList(HttpServletRequest request){
		
		String con = request.getParameter("con");
		if (con==null||"null".equals(con)) {
			con = "%%";
		}else{
			con = "%"+con+"%";
		}
		List<Picture> list = pictureService.getAll(con);
		
		if (list!=null) {
			for (Picture p : list) {
				System.out.println(p.getDoPath());
				System.out.println("***************");
			}
		}else{
			System.out.println("没有数据");
		}
		request.setAttribute("pList",list);
		request.setAttribute("size",list.size());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/pictureList");
		
		return mav;
	}
	//删除图片
	@RequestMapping("/user/todelete.do")
	public String toDelete(HttpServletRequest request){
		
		String id = request.getParameter("id1");
		System.out.println("*****"+id);
		pictureService.delete(id);
		return "forward:toPictureList.do";
		
	}
	//批量删除
	@RequestMapping("/user/pldelete.do")
	public String toDeletepl(HttpServletRequest request){
		
		String id1=request.getParameter("deleteid");
		String haha[] = id1.split(",");
		
		for (int i = 0; i < haha.length; i++) {
			String id= haha[i];
			pictureService.delete(id);
		}
		return "forward:toPictureList.do";
		
	}
	
	//跳到添加图片页面
	@RequestMapping("user/toAddpicture.do")
	public ModelAndView toAdd(){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/addPicture");
		
		return mav;
		
	}
	
	
	
	//添加操作
	@RequestMapping("user/addpic.do")
	public String add(HttpServletRequest request){
		
		
		String path = request.getParameter("path");
		String goodsName = request.getParameter("goodsName");
		
		Picture picture = new Picture();
		picture.setId(UUIDUtil.getUUID());
		picture.setGoodsId(UUIDUtil.getUUID());
		picture.setDoPath(path);
		picture.setGoodsName(goodsName);
		pictureService.add(picture);
		
		return "forward:toPictureList.do";
		
	}
	
	//跳转到修改页面（上）
	@RequestMapping("user/toUpdatepicture.do")
	public ModelAndView toUpdate(HttpServletRequest request){
		String id = request.getParameter("id1");
		System.out.println("#######"+id);
		ModelAndView mav = new ModelAndView();
		
		
		Picture picture = pictureService.getById(id);
		System.out.println("++++++++++123"+picture);
		request.setAttribute("pic", picture);
		mav.setViewName("user/updatePicture");
		
		return mav;
		
	}
	
	
	//右面修改跳转
	@RequestMapping("user/toUpdateR.do")
	public ModelAndView toUpdateR(HttpServletRequest request){
		String id = request.getParameter("id");
		System.out.println("&&&&&&&&&&&&&&&&&"+id);
		ModelAndView mav = new ModelAndView();
		
		
		Picture picture = pictureService.getById(id);
		System.out.println("++++++++++123"+picture);
		request.setAttribute("pic", picture);
		mav.setViewName("user/updatePicture");
		
		return mav;
		
	}
	
	
	
	//修改操作
	@RequestMapping("user/updatePic.do")
	public String updatePic(HttpServletRequest request){
		
		String path = request.getParameter("path");
		String goodsName = request.getParameter("goodsName");
		String id1 = request.getParameter("id1");
		String id2 = request.getParameter("id2");
		
		
		Picture picture = new Picture();
		picture.setId(id1);
		picture.setGoodsId(id2);
		picture.setDoPath(path);
		picture.setGoodsName(goodsName);
		pictureService.update(picture);
		
		return "forward:toPictureList.do";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*@RequestMapping("user/updatepic.do")
	public String add(HttpServletRequest request){
		
		
		String path = request.getParameter("path");
		String goodsName = request.getParameter("goodsName");
		
		Picture picture = new Picture();
		picture.setId(UUIDUtil.getUUID());
		picture.setDoPath(path);
		picture.setGoodsName(goodsName);
		
		return "forward:toPictureList.do";
		
	}*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*//到系统设置修改页
	@RequestMapping("/user/toSystemSZC.do")
	public ModelAndView systemSZC(){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/systemSZC");
		
		return mav;
	}*/
	
	/*@RequestMapping("/user/toSystemSZC.do")
	public ModelAndView toList(){
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/systemSZC");
		
		return mav;
		
	}*/
	
	

	/*@RequestMapping("/user/login.do")
	public String login(HttpServletRequest request){
		//String username = request.getParameter("username");
		//String password = request.getParameter("password");
		
		//MyUser mu = myUserService.checkLogin(username, password);
		
		//request.getSession().setAttribute("user", mu);
		return"forward:/user/index.do";
		
	}*/
	
	
	
	
}











































