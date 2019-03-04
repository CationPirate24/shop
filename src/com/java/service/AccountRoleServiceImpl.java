package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.AccountRole;
import com.java.mapper.AccountRoleMapper;

public class AccountRoleServiceImpl implements AccountRoleService{
	@Autowired
	private AccountRoleMapper accountRoleMapper;
	
	public boolean add(AccountRole t) {
		
		return accountRoleMapper.add(t);
	}

	public void delete(String id) {
		accountRoleMapper.delete(id);
		
	}

	public List<AccountRole> getAll(String con) {
		
		return accountRoleMapper.getAll(con);
	}

	public AccountRole getById(String id) {
	
		return accountRoleMapper.getById(id);
	}

	public void update(AccountRole t) {
		accountRoleMapper.update(t);
		
	}

}
