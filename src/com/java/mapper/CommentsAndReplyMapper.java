package com.java.mapper;

import java.util.List;

import com.java.bean.CommentsAndReply;

public interface CommentsAndReplyMapper extends Dao<CommentsAndReply,String>{
	public List<String> getReplyByComments(String commentsId);
}
