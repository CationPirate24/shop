package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.Reply;
import com.java.mapper.ReplyMapper;

public class ReplyServiceImpl implements ReplyService{
	@Autowired
	private ReplyMapper replyMapper;
	public boolean add(Reply t) {
		
		return replyMapper.add(t);
	}

	public void delete(String id) {
		replyMapper.delete(id);
		
	}

	public List<Reply> getAll(String con) {
		
		return replyMapper.getAll(con);
	}

	public Reply getById(String id) {
		
		return replyMapper.getById(id);
	}

	public void update(Reply t) {
		replyMapper.update(t);
		
	}

}
