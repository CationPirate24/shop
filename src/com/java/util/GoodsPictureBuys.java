package com.java.util;

import java.util.ArrayList;
import java.util.List;

import com.java.bean.Buys;
import com.java.bean.Goods;
import com.java.bean.GoodsAndPicture;
import com.java.bean.Picture;

public class GoodsPictureBuys {

	public static List<GoodsAndPicture> get(List<Goods> list1,List<Picture> list2,List<Buys> list3){
		
		List<GoodsAndPicture> list = new ArrayList<GoodsAndPicture>();
		GoodsAndPicture gap = null;
		
			
		for(int i =0;i<list1.size();i++){
			gap = new GoodsAndPicture();
			Goods g = list1.get(i);
			Picture p = list2.get(i);
			Buys b = list3.get(i);
			String price = g.getPrice();
			int price1 = Integer.valueOf(price);
			
			String num = b.getNums();
			int num1 = Integer.valueOf(num);
			int allPlace = price1 * num1;
			gap.setGoodsId(g.getId());
			gap.setName(g.getName());
			gap.setTextture(g.getTextture());
			gap.setPrice(price1);
			gap.setType(g.getType());
			gap.setNums(g.getNums());
			gap.setNum1(num1);
			gap.setBuysType(b.getState());
			gap.setWeight(g.getWeight());	
			gap.setPictureDoPath(p.getDoPath());
			gap.setAllPrice(allPlace);
			gap.setBuysId(b.getId());
			list.add(gap);
			
		}
		return list;
	}
	public static GoodsAndPicture get2(Picture p,Goods g,Buys b){
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
		gap.setBuysType(b.getState());
		String num = b.getNums();
		int num1 = Integer.valueOf(num);
		int allPrice = price1*num1;
		gap.setNum1(num1);
		gap.setAllPrice(allPrice);
		return gap;
	}
	
}

