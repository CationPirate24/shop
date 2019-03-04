package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.Address;
import com.java.mapper.AddressMapper;

public class AddressServiceImpl implements AddressService{
	@Autowired
	private AddressMapper addressMapper;
	public boolean add(Address t) {
		
		return addressMapper.add(t);
	}

	public void delete(String id) {
		addressMapper.delete(id);
		
	}

	public List<Address> getAll(String con) {
		
		return addressMapper.getAll(con);
	}

	public Address getById(String id) {
		
		return addressMapper.getById(id);
	}

	public void update(Address t) {
		addressMapper.update(t);
		
	}

	public List<Address> getByUserId(String id) {
		
		return addressMapper.getByUserId(id);
	}

}
