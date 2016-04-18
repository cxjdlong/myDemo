package com.cxjdlong.basic.service;

import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.CreateUser;

public interface UserServiceI {

	public void delectByID (String id);
	
	public void updateByID (CreateUser user);
		
	public CreateUser selectByID(int id);
	
	public void add(CreateUser user);
	
	public Pager<CreateUser> find();

	public Pager<CreateUser> selectFun(String selectKey);
}
