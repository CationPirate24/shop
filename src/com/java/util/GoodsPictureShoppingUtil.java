package com.java.util;

import java.util.ArrayList;
import java.util.List;

import com.java.bean.Goods;
import com.java.bean.GoodsAndPicture;
import com.java.bean.Picture;
import com.java.bean.ShoppingCar;

public class GoodsPictureShoppingUtil {

public static List<GoodsAndPicture> get(List<Goods> list1,List<Picture> list2,List<ShoppingCar> list3){
		
		List<GoodsAndPicture> list = new ArrayList<GoodsAndPicture>();
		GoodsAndPicture gap = null;
		
			
		for(int i =0;i<list1.size();i++){
		
			gap = new GoodsAndPicture();
			Goods g = list1.get(i);
			Picture p = list2.get(i);
			ShoppingCar s = list3.get(i);
			String price = g.getPrice();
			String num = s.getNums();
			System.out.println("aaavvaaaaaaaaaaaaaa"+price);
			int gwcNum = Integer.valueOf(num);
			int price1 = Integer.valueOf(price);
			int price2 = price1 * gwcNum;
			//System.out.println("CCCCCCCCCaaaaaaaaaaaa");
			gap.setGoodsId(g.getId());
			gap.setName(g.getName());
			gap.setTextture(g.getTextture());
			gap.setPrice(price1);
			gap.setType(g.getType());
			gap.setNums(num);
			gap.setWeight(g.getWeight());
			gap.setPictureDoPath(p.getDoPath());
			gap.setNum1(gwcNum);
			gap.setAllPrice(price2);
			list.add(gap);
			
		}
		return list;
	}
}
