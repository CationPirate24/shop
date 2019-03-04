package com.java.bean;

public class MyUser {
	private String id;
	private String name;
	private String phone;
	private String address;
	private String type;
	private String sex;
	private String age;
	private String describe;
	private String integral;
	private String email;
	private String birth;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getIntegral() {
		return integral;
	}
	public void setIntegral(String integral) {
		this.integral = integral;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getDescribe() {
		return describe;
	}
	@Override
	public String toString() {
		return "MyUser [address=" + address + ", age=" + age + ", birth="
				+ birth + ", describe=" + describe + ", email=" + email
				+ ", id=" + id + ", integral=" + integral + ", name=" + name
				+ ", phone=" + phone + ", sex=" + sex + ", type=" + type + "]";
	}
	
	
}
