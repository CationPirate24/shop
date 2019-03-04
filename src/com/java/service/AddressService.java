package com.java.service;

import java.util.List;

import com.java.bean.Address;

public interface AddressService extends Service<Address,String>{
	
	public List<Address> getByUserId(String id);

}
