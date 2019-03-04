package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.AfterSale;
import com.java.mapper.AfterSaleMapper;

public class AfterSaleServiceImpl implements AfterSaleService{
	@Autowired
	private AfterSaleMapper afterSaleMapper;
	
	public boolean add(AfterSale t) {
		
		return false;
	}

	public void delete(String id) {
		afterSaleMapper.delete(id);
		
	}

	public List<AfterSale> getAll(String con) {
		
		return afterSaleMapper.getAll(con);
	}

	public AfterSale getById(String id) {
		
		return null;
	}

	public void update(AfterSale t) {
		
		
	}

}
