package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.Goods;
import com.java.mapper.GoodsMapper;

public class GoodsServiceImpl implements GoodsService{
	
	@Autowired
	private GoodsMapper goodsMapper;

	public boolean add(Goods t) {
		
		return goodsMapper.add(t);
	}

	public void delete(String id) {
		goodsMapper.delete(id);
		
	}

	public List<Goods> getAll(String con) {
		
		return goodsMapper.getAll(con);
	}

	public Goods getById(String id) {
		
		return goodsMapper.getById(id);
	}

	public void update(Goods t) {
		goodsMapper.update(t);
		
	}

	public List<Goods> getByTexttureAndType(String textture, String type) {
		// TODO Auto-generated method stub
		return goodsMapper.getByTexttureAndType(textture, type);
	}

	public List<Goods> getByUse(String use) {
		
		return goodsMapper.getByUse(use);
	}

}
