package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.CommentsAndReply;
import com.java.mapper.CommentsAndReplyMapper;

public class CommentsAndReplyServiceImpl implements CommentsAndReplyService{
	@Autowired
	private CommentsAndReplyMapper comentsAndReplyService;
	public boolean add(CommentsAndReply t) {
		
		return comentsAndReplyService.add(t);
	}

	public void delete(String id) {
		comentsAndReplyService.delete(id);
		
	}

	public List<CommentsAndReply> getAll(String con) {
		
		return comentsAndReplyService.getAll(con);
	}

	public CommentsAndReply getById(String id) {
		
		return comentsAndReplyService.getById(id);
	}

	public void update(CommentsAndReply t) {
		comentsAndReplyService.update(t);
	}

	public List<String> getReplyByComments(String commentsId) {
		
		return comentsAndReplyService.getReplyByComments(commentsId);
	}

}
