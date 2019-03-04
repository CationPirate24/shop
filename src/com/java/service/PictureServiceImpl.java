package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.Picture;
import com.java.mapper.PictureMapper;

public class PictureServiceImpl implements PictureService{
	
	@Autowired
	private PictureMapper pictureMapper;
	
	public boolean add(Picture t) {
		
		return pictureMapper.add(t);
	}

	public void delete(String id) {
		pictureMapper.delete(id);
		
	}

	public List<Picture> getAll(String con) {
	
		return pictureMapper.getAll(con);
	}

	public Picture getById(String id) {
		
		return pictureMapper.getById(id);
	}

	public void update(Picture t) {
		pictureMapper.update(t);
		
	}

	public Picture getByGoodsId(String goodsId) {
		// TODO Auto-generated method stub
		return pictureMapper.getByGoodsId(goodsId);
	}

}
