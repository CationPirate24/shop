package com.java.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.bean.MyAccount;

public interface MyAccountService extends Service<MyAccount,String>{
	
	//传递两个参数
	public MyAccount checkLogin(@Param("aa")String username,@Param("bb")String password);
	public void updatePassword(@Param("newpassword")String newpassword,@Param("userId")String id);

}
