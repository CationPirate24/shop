package com.java.service;

import com.java.bean.Picture;

public interface PictureService extends Service<Picture,String>{
	public Picture getByGoodsId(String goodsId);


}
