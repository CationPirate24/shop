package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyUser;
import com.java.mapper.MyUserMapper;

public class MyUserServiceImpl implements MyUserService{
	
	@Autowired
	private MyUserMapper myUserMapper;

	public boolean add(MyUser t) {
		
		return myUserMapper.add(t);
	}

	public void delete(String id) {
		myUserMapper.delete(id);
		
	}

	public List<MyUser> getAll(String con) {
		
		return myUserMapper.getAll(con);
	}

	public MyUser getById(String id) {
		
		return myUserMapper.getById(id);
	}

	public void update(MyUser t) {
		myUserMapper.update(t);
		
	}

	public void updateType(String id, String type) {
		myUserMapper.updateType(id, type);
		
	}

}
