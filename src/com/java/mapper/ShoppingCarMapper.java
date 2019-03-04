package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.bean.ShoppingCar;

public interface ShoppingCarMapper extends Dao<ShoppingCar,String>{

	public List<ShoppingCar> getByUserId(String userId);
	public ShoppingCar getByUserIdAndGoodsId(@Param("userId")String userId,@Param("goodsId")String goodsId);
}