package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.bean.ShoppingCar;

public interface ShoppingCarService extends Service<ShoppingCar,String>{

	public List<ShoppingCar> getByUserId(String userId);
	public ShoppingCar getByUserIdAndGoodsId(@Param("userId")String userId,@Param("goodsId")String goodsId);
}
