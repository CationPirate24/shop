package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.Buys;
import com.java.mapper.BuysMapper;

public class BuysServiceImpl implements BuysService{
	
	@Autowired
	private BuysMapper buysMapper;
	
	public List<Buys> selectPay(String con) {
		
		return buysMapper.selectPay(con);
	}

	public boolean add(Buys t) {
		return buysMapper.add(t);
	}

	public void delete(String id) {
		buysMapper.delete(id);
		
	}

	public List<Buys> getAll(String con) {
		return buysMapper.getAll(con);
	}

	public Buys getById(String id) {
		return buysMapper.getById(id);
	}

	public void update(Buys t) {
		buysMapper.update(t);
		
	}

	public List<Buys> getByUserIdAndState(String state, String userId) {
		return buysMapper.getByUserIdAndState(state, userId);
	}

	public Buys getByUserIdAndStateAndGoodsId(String userId,
			String state, String goodsId) {
		return buysMapper.getByUserIdAndStateAndGoodsId(userId, state, goodsId);
	}

	

	

}
