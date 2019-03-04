package com.java.mapper;



import org.apache.ibatis.annotations.Param;

import com.java.bean.MyUser;

public interface MyUserMapper extends Dao<MyUser,String>{
    
	public void updateType(@Param("id")String id,@Param("type")String type);
	
	
}