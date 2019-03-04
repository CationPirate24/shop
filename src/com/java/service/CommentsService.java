package com.java.service;

import java.util.List;

import com.java.bean.Comments;

public interface CommentsService extends Service<Comments,String>{
	public List<Comments> getByGoodsId(String goodsId);
	
}
