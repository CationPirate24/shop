package com.java.bean;

/**
 * ��ַʵ���࣬��ӦADDRESS��
 * @author Administrator
 *
 */
public class Address {
	
	private String id;
	private String userId;
	private String address;
	private String name;
	private String phone;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Address [address=" + address + ", id=" + id + ", name=" + name
				+ ", phone=" + phone + ", userId=" + userId + "]";
	}
	
	
	
	
}
