package com.java.service;

import java.util.List;

import com.java.bean.CommentsAndReply;

public interface CommentsAndReplyService extends Service<CommentsAndReply,String>{
	public List<String> getReplyByComments(String commentsId);
}
