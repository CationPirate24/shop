package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.java.bean.MyRole;
import com.java.mapper.MyRoleMapper;

public class MyRoleServiceImpl implements MyRoleService{
		@Autowired
		private MyRoleMapper myRoleMapper;

		public boolean add(MyRole t) {

			return myRoleMapper.add(t);
		}

		public void delete(String id) {
			myRoleMapper.delete(id);
			
		}

		public List<MyRole> getAll(String con) {
		
			return myRoleMapper.getAll(con);
		}

		public MyRole getById(String id) {

			return myRoleMapper.getById(id);
		}

		public void update(MyRole t) {
			myRoleMapper.update(t);
			
		}
		
}
