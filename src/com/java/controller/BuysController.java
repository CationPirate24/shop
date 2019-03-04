package com.java.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.bean.AfterSale;
import com.java.bean.Buys;

import com.java.bean.Advice;
import com.java.bean.Car;
import com.java.bean.Comments;
import com.java.bean.CommentsAndReply;
import com.java.bean.MyResource;
import com.java.bean.MyRole;
import com.java.bean.Reply;
import com.java.bean.RoleResource;
import com.java.service.AdviceService;
import com.java.service.AfterSaleService;
import com.java.service.BuysService;
import com.java.service.CommentsAndReplyService;
import com.java.service.CommentsService;
import com.java.service.MyResourceService;
import com.java.service.MyRoleService;
import com.java.service.ReplyService;
import com.java.service.RoleResourceService;
import com.java.util.UUIDUtil;

@Controller
public class BuysController {
	@Autowired
	private BuysService buysService;
	
	@Autowired
	private AfterSaleService afterSaleService;
	
	@Autowired
	private CommentsService commentsService;
	
	@Autowired
	private CommentsAndReplyService commentsAndReplyService;
	
	@Autowired
	private ReplyService replyService;
	
	@Autowired
	private AdviceService adviceService;
	
	
	
	//跳转到已付款订单
	@RequestMapping("/user/toPay.do")
	public ModelAndView toPay(HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView();
		List<Buys> list = buysService.selectPay("已评价");
		
		request.getSession().setAttribute("buysList", list);
		request.getSession().setAttribute("ll", list.size());
				
		mav.setViewName("user/pay");
		
		return mav;
	}
	//跳转到代付款订单
	@RequestMapping("/user/toWaitPay.do")
	public ModelAndView toWaitPay(HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView();
		List<Buys> list = buysService.selectPay("待评价");
		
		request.getSession().setAttribute("buysList", list);
		request.getSession().setAttribute("ll", list.size());
		
		mav.setViewName("user/waitPay");
		
		return mav;
	}
	//删除订单
	@RequestMapping("/user/toDeletePay.do")
	public String toDeletePay(HttpServletRequest request){
		
		String id1 = request.getParameter("con");
		//System.out.println("++++++++++++++++++++"+id1);
		String buysList[] = id1.split(",");
		for(int i=0;i<buysList.length;i++){
			buysService.delete(buysList[i]);
		}
		return "forward:/user/toPay.do";

	}
	//删除待付款订单
	@RequestMapping("user/toDeleteWaitPay.do")
	public String toDeleteWaitPay(HttpServletRequest request){
		
		String id1 = request.getParameter("con");
		//System.out.println("++++++++++++++++++++"+id1);
		String buysList[] = id1.split(",");
		for(int i=0;i<buysList.length;i++){
			buysService.delete(buysList[i]);
		}
		return "forward:/user/toWaitPay.do";

	}
	//售后申请表
	@RequestMapping("user/toAfterSale.do")
	public ModelAndView toAfterSale(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<AfterSale> list = afterSaleService.getAll("");
		request.getSession().setAttribute("asList", list);		
		request.getSession().setAttribute("ll", list.size());
		
		mav.setViewName("user/afterSale");
		
		return mav;		
	}
	//删除售后申请
	@RequestMapping("/user/toDeleteAfterSale.do")
	public String toDeleteAfterSale(HttpServletRequest request){
		
		String id1 = request.getParameter("id");
		/*String id1 = request.getParameter("deleteid");
		//System.out.println("++++++++++++++++++++"+id1);
		String buysList[] = id1.split(",");
		for(int i=0;i<buysList.length;i++){
			afterSaleService.delete(buysList[i]);
		}*/
		afterSaleService.delete(id1);
		return "forward:/user/toAfterSale.do";
				
	}
	//批量删除售后申请
	@RequestMapping("/user/toDeleteAfterSaleAll.do")
	public String toDeleteAfterSaleAll(HttpServletRequest request){
		
		
		String id1 = request.getParameter("deleteid");
		System.out.println("++++++++++++++++++++"+id1);
		String asList[] = id1.split(",");
		for(int i=0;i<asList.length;i++){
			afterSaleService.delete(asList[i]);
		}
		
		return "forward:/user/toAfterSale.do";
				
	}
	//评论管理
	@RequestMapping("/user/toComments.do")
	public ModelAndView toComments(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		List<CommentsAndReply> carlist = commentsAndReplyService.getAll("");
		List<Car> list = new ArrayList<Car>();
		//List<Comments> clist = new ArrayList<Comments>();
		//List<Reply> rlist = new ArrayList<Reply>();
		for (CommentsAndReply car : carlist) {
			Car ca = new Car();
			ca.setId(car.getId());
			ca.setContent(commentsService.getById(car.getCommentsId()).getContent());
			ca.setRep(replyService.getById(car.getReplyId()).getReplys());
			list.add(ca);
		}
		System.out.println("===========================================");
		//request.getSession().setAttribute("cclist", clist);
		//request.getSession().setAttribute("rrlist", rlist);	
		request.getSession().setAttribute("carlist", list);	
		
		//System.out.println(clist.size());
		mav.setViewName("user/comments");
		return mav;
	}
	
	//到意见反馈列表页
	@RequestMapping("user/toAdviceList.do")
	public ModelAndView toAdviceList(HttpServletRequest request){
		
		String con = request.getParameter("con");
		if (con==null||"null".equals(con)) {
			con = "%%";
		}else{
			con = "%"+con+"%";
		}
		List<Advice> list = adviceService.getAll(con);
		
		if (list!=null) {
			for (Advice p : list) {
				System.out.println(p.getComment());
				System.out.println("***************");
			}
		}else{
			System.out.println("没有数据");
		}
		request.setAttribute("pList",list);
		request.setAttribute("size",list.size());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/adviceList");
		return mav;
		
	}
	

	
}
