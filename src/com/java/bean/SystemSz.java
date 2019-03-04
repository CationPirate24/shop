package com.java.bean;

public class SystemSz {
	private String id;
	private String websiteName;
	private String keyWord;
	private String describe;
	private String baNum;
	private String maxNum;
	private String postAccount;
	private String postKey;
	private String postsAddress;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getWebsiteName() {
		return websiteName;
	}
	public void setWebsiteName(String websiteName) {
		this.websiteName = websiteName;
	}
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getBaNum() {
		return baNum;
	}
	public void setBaNum(String baNum) {
		this.baNum = baNum;
	}
	public String getMaxNum() {
		return maxNum;
	}
	public void setMaxNum(String maxNum) {
		this.maxNum = maxNum;
	}
	public String getPostAccount() {
		return postAccount;
	}
	public void setPostAccount(String postAccount) {
		this.postAccount = postAccount;
	}
	public String getPostKey() {
		return postKey;
	}
	public void setPostKey(String postKey) {
		this.postKey = postKey;
	}
	public String getPostsAddress() {
		return postsAddress;
	}
	public void setPostsAddress(String postsAddress) {
		this.postsAddress = postsAddress;
	}
	@Override
	public String toString() {
		return "SystemSz [baNum=" + baNum + ", describe=" + describe + ", id="
				+ id + ", keyWord=" + keyWord + ", maxNum=" + maxNum
				+ ", postAccount=" + postAccount + ", postKey=" + postKey
				+ ", postsAddress=" + postsAddress + ", websiteName="
				+ websiteName + "]";
	}
	
	
}
