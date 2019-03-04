package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.RoleResource;
import com.java.mapper.RoleResourceMapper;

public class RoleResourceServiceImpl implements RoleResourceService{
	@Autowired
	private RoleResourceMapper roleResourceMapper;
	
	public boolean add(RoleResource t) {
		
		return roleResourceMapper.add(t);
	}

	public void delete(String id) {
		roleResourceMapper.delete(id);
		
	}

	public List<RoleResource> getAll(String con) {
		
		return roleResourceMapper.getAll(con);
	}

	public RoleResource getById(String id) {
	
		return roleResourceMapper.getById(id);
	}

	public void update(RoleResource t) {
		roleResourceMapper.update(t);
	}

}
