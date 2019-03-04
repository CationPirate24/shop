package com.java.mapper;

import com.java.bean.Picture;

public interface PictureMapper extends Dao<Picture,String>{
	public Picture getByGoodsId(String goodsId);


}
