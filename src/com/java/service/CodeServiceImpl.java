package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.Code;
import com.java.mapper.CodeMapper;

public class CodeServiceImpl implements CodeService{

	@Autowired
	private CodeMapper codeMapper;
	
	public boolean add(Code t) {
		
		return codeMapper.add(t);
	}

	public void delete(String id) {
		codeMapper.delete(id);
		
	}

	public List<Code> getAll(String con) {
		
		return codeMapper.getAll(con);
	}

	public Code getById(String id) {
		
		return codeMapper.getById(id);
	}

	public void update(Code t) {
		codeMapper.update(t);
		
	}

}
