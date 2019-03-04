package com.java.bean;

public class MyAccount {
	private String id;
	private String username;
	private String password;
	
	
	private String userId;
	
	@Override
	public String toString() {
		return "MyAccount [id=" + id + ", password=" + password + ", userId="
				+ userId + ", username=" + username + "]";
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
