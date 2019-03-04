package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.Advice;
import com.java.mapper.AdviceMapper;

public class AdviceServiceImpl implements AdviceService{
	@Autowired
	private AdviceMapper adviceMapper;
	
	public boolean add(Advice t) {
		
		return adviceMapper.add(t);
	}

	public void delete(String id) {
		adviceMapper.delete(id);
		
	}

	public List<Advice> getAll(String con) {
	
		return adviceMapper.getAll(con);
	}

	public Advice getById(String id) {
	
		return adviceMapper.getById(id);
	}

	public void update(Advice t) {
		adviceMapper.update(t);		
	}

}
