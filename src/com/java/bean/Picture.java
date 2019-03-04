package com.java.bean;

public class Picture {
	private String id;
	private String goodsId;
	private String doPath;
	private String goodsName;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}
	public String getDoPath() {
		return doPath;
	}
	public void setDoPath(String doPath) {
		this.doPath = doPath;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	@Override
	public String toString() {
		return "Picture [doPath=" + doPath + ", goodsId=" + goodsId
				+ ", goodsName=" + goodsName + ", id=" + id + "]";
	}
	
	
	
	
}
