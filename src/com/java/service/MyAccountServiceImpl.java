package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyAccount;
import com.java.mapper.MyAccountMapper;

public class MyAccountServiceImpl implements MyAccountService{
	
	@Autowired
	private MyAccountMapper  myAccountMapper;

	public MyAccount checkLogin(String username, String password) {
		
		return myAccountMapper.checkLogin(username, password);
	}

	public boolean add(MyAccount t) {
		
		return myAccountMapper.add(t);
	}

	public void delete(String id) {
		myAccountMapper.delete(id);
		
	}

	public List<MyAccount> getAll(String con) {
		
		return myAccountMapper.getAll(con);
	}

	public MyAccount getById(String id) {
		
		return myAccountMapper.getById(id);
	}

	public void update(MyAccount t) {
		myAccountMapper.update(t);
		
	}

	public void updatePassword(String newpassword, String id) {
		myAccountMapper.updatePassword(newpassword, id);
		
	}

}
