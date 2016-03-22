package com.cxjdlong.basic.service;

import com.cxjdlong.basic.model.CreateAdpic;
import com.cxjdlong.basic.model.Pager;

public interface AdpicServiceI {
	
	public void delectByID (String id);
	
	public void updateByID (CreateAdpic news);
		
	public CreateAdpic selectByID(int id);
	
	public void add(CreateAdpic adpic);
	
	public Pager<CreateAdpic> find();
}
