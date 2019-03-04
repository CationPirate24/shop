package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.Comments;
import com.java.mapper.CommentsMapper;

public class CommentsServiceImpl implements CommentsService{
	@Autowired
	private CommentsMapper commentsMapper;
	public boolean add(Comments t) {
		
		return commentsMapper.add(t);
	}

	public void delete(String id) {
		commentsMapper.delete(id);
		
	}

	public List<Comments> getAll(String con) {
		
		return commentsMapper.getAll(con);
	}

	public Comments getById(String id) {
		
		return commentsMapper.getById(id);
	}

	public void update(Comments t) {		
		commentsMapper.update(t);
	}

	public List<Comments> getByGoodsId(String goodsId) {
		
		return commentsMapper.getByGoodsId(goodsId);
	}

}
