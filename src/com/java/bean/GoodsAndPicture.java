package com.java.bean;

public class GoodsAndPicture {

	private String BuysId;
	private String goodsId;
	private String name;
	private String textture;
	private String type;
	private int price;
	private String nums;
	private String weight; 
	private String pictureDoPath;
	private int num1;
	private int allPrice;
	
	private String buysType;
	
	
	public int getAllPrice() {
		return allPrice;
	}
	public void setAllPrice(int allPrice) {
		this.allPrice = allPrice;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTextture() {
		return textture;
	}
	public void setTextture(String textture) {
		this.textture = textture;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getNums() {
		return nums;
	}
	public void setNums(String nums) {
		this.nums = nums;
	}
	public String getPictureDoPath() {
		return pictureDoPath;
	}
	public void setPictureDoPath(String pictureDoPath) {
		this.pictureDoPath = pictureDoPath;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getWeight() {
		return weight;
	}
	
	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}
	public String getGoodsId() {
		return goodsId;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum1() {
		return num1;
	}
	public void setBuysId(String buysId) {
		BuysId = buysId;
	}
	public String getBuysId() {
		return BuysId;
	}
	public void setBuysType(String buysType) {
		this.buysType = buysType;
	}
	public String getBuysType() {
		return buysType;
	}
}
