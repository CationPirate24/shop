package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.bean.MyAccount;

public interface MyAccountMapper extends Dao<MyAccount,String>{
	
	//public MyAccount checkLogin(String username,String password);
	
	//传递两个参数
	public MyAccount checkLogin(@Param("aa")String username,@Param("bb")String password);

	public void updatePassword(@Param("newpassword")String newpassword,@Param("userId")String id);
	
	
	//传递一个参数
	/*public List<MyUser> getUsers1(String name); 
	
	//传递两个参数
	public List<MyUser> getUsers2(@Param("aa")String userName,@Param("sex")String userSex);
	
	//传递POJO（bean）
	public List<MyUser> getUsers3(MyUser mu);
	
	//传递map
	public List<MyUser> getUsers4(Map<String,Object> map);	*/
	
}