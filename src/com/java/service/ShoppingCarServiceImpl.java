package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.ShoppingCar;
import com.java.mapper.ShoppingCarMapper;

public class ShoppingCarServiceImpl implements ShoppingCarService{

	@Autowired
	private ShoppingCarMapper shoppingCarMapper;
	

	public boolean add(ShoppingCar t) {
		return shoppingCarMapper.add(t);
	}

	public void delete(String id) {
		shoppingCarMapper.delete(id);
	}

	public List<ShoppingCar> getAll(String con) {
		return null;
	}

	public ShoppingCar getById(String id) {
		return shoppingCarMapper.getById(id);
	}

	public void update(ShoppingCar t) {
		shoppingCarMapper.update(t);
	}



	public List<ShoppingCar> getByUserId(String userId) {
		return shoppingCarMapper.getByUserId(userId);
	}

	public ShoppingCar getByUserIdAndGoodsId(String userId, String goodsId) {
		return shoppingCarMapper.getByUserIdAndGoodsId(userId, goodsId);
	}

}
