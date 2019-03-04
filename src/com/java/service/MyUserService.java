package com.java.service;

import org.apache.ibatis.annotations.Param;

import com.java.bean.MyUser;

public interface MyUserService extends Service<MyUser,String>{
	public void updateType(@Param("id")String id,@Param("type")String type);
}
