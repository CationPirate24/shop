package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.bean.Buys;

public interface BuysService extends Service<Buys,String>{
	public List<Buys> selectPay(String con);
	public List<Buys> getByUserIdAndState(@Param("state")String state,@Param("userId")String userId);
	public Buys getByUserIdAndStateAndGoodsId(@Param("userId")String userId,@Param("state")String state,@Param("goodsId")String goodsId);
}
