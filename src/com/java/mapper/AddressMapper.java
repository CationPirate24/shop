package com.java.mapper;

import java.util.List;

import com.java.bean.Address;

public interface AddressMapper extends Dao<Address,String>{
	
	public List<Address> getByUserId(String id);

}
