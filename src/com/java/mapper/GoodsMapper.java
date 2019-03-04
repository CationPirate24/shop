package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.bean.Goods;
import com.java.bean.MyUser;

public interface GoodsMapper extends Dao<Goods,String>{
	
	public List<Goods> getByTexttureAndType(@Param("textture")String textture,@Param("type")String type);
	
	
	public List<Goods>  getByUse(String use);

    
}
