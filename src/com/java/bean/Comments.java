package com.java.bean;
/**
 * 
 * @author Administrator
 *
 */
public class Comments {
	
	private String id;
	private String goodsId;
	private String content;
	private String createTime;
	private String type;
	private String goodsType;
	private String textture;
	private String userId;
	public String getGoodsType() {
		return goodsType;
	}
	public void setGoodsType(String goodsType) {
		this.goodsType = goodsType;
	}
	public String getTextture() {
		return textture;
	}
	public void setTextture(String textture) {
		this.textture = textture;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}
	public String getGoodsId() {
		return goodsId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserId() {
		return userId;
	}
	
	
}
