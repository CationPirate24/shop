package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.bean.Goods;


public interface GoodsService extends Service<Goods,String>{
	
	public List<Goods> getByTexttureAndType(@Param("textture")String textture,@Param("type")String type);
	
	public List<Goods>  getByUse(String use);

    
}
