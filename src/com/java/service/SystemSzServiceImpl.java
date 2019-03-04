package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.SystemSz;
import com.java.mapper.SystemSzMapper;

public class SystemSzServiceImpl implements SystemSzService{
	
	@Autowired
	private SystemSzMapper systemSzMapper;
	
	public boolean add(SystemSz t) {
		
		return systemSzMapper.add(t);
	}

	public void delete(String id) {
		systemSzMapper.delete(id);
		
	}

	public List<SystemSz> getAll(String con) {
		
		return systemSzMapper.getAll(con);
	}

	public SystemSz getById(String id) {
		
		return systemSzMapper.getById(id);
	}

	public void update(SystemSz t) {
		systemSzMapper.update(t);
		
	}

}
