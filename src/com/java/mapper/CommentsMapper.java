package com.java.mapper;

import java.util.List;

import com.java.bean.Comments;

public interface CommentsMapper extends Dao<Comments,String>{
	public List<Comments> getByGoodsId(String goodsId);
	
}
