package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyResource;
import com.java.mapper.MyResourceMapper;

public class MyResourceServiceImpl implements MyResourceService{
	@Autowired
	private MyResourceMapper myResourceMapper;
	
	public boolean add(MyResource t) {
		
		return myResourceMapper.add(t);
	}

	public void delete(String id) {
		myResourceMapper.delete(id);		
	}

	public List<MyResource> getAll(String con) {
		
		return myResourceMapper.getAll(con);
	}

	public MyResource getById(String id) {
	
		return myResourceMapper.getById(id);
	}

	public void update(MyResource t) {
		myResourceMapper.update(t);
		
	}

}
