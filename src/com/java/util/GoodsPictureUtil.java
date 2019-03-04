package com.java.util;

import java.util.ArrayList;
import java.util.List;

import com.java.bean.Goods;
import com.java.bean.GoodsAndPicture;
import com.java.bean.Picture;
import com.java.service.PictureServiceImpl;

public class GoodsPictureUtil {

 
	public static List<GoodsAndPicture> get(List<Goods> list1,List<Picture> list2){
		
		List<GoodsAndPicture> list = new ArrayList<GoodsAndPicture>();
		GoodsAndPicture gap = null;
		
			
		for(int i =0;i<list1.size();i++){
			gap = new GoodsAndPicture();
			Goods g = list1.get(i);
			Picture p = list2.get(i);
			String price = g.getPrice();
			int price1 = Integer.valueOf(price);
			gap.setGoodsId(g.getId());
			gap.setName(g.getName());
			gap.setTextture(g.getTextture());
			gap.setPrice(price1);
			gap.setType(g.getType());
			gap.setNums(g.getNums());
			System.out.println("yaojingyun"+p.getDoPath());
			gap.setWeight(g.getWeight());	
			gap.setPictureDoPath(p.getDoPath());
			gap.setNum1(0);
			gap.setAllPrice(0);
			list.add(gap);
			
		}
		return list;
	}
	public static List<Picture> get1(List<Goods> list1){
		PictureServiceImpl psi = new PictureServiceImpl();
		List<Picture> list = new ArrayList<Picture>();
		Picture p = null;
		for(Goods g:list1){
			System.out.println("qqqqqqqqqqqqqqqqqqqqqq"+g.getId());
			p = psi.getByGoodsId(g.getId());
			list.add(p);
		}
		return list;
	}
	public static GoodsAndPicture get2(Picture p,Goods g){
		GoodsAndPicture gap = new GoodsAndPicture();
		String price = g.getPrice();
		int price1 = Integer.valueOf(price);
		gap.setGoodsId(g.getId());
		gap.setName(g.getName());
		gap.setNums(g.getNums());
		gap.setPictureDoPath(p.getDoPath());
		gap.setPrice(price1);
		gap.setTextture(g.getTextture());
		gap.setType(g.getType());
		gap.setWeight(g.getWeight());
		gap.setNum1(0);
		gap.setAllPrice(0);
		return gap;
	}
	
}
