package com.cxjdlong.basic.service;

import com.cxjdlong.basic.model.CreateLink;
import com.cxjdlong.basic.model.Pager;

public interface LinkServiceI {
	
	public void delectByID (String id);
	
	public void updateByID (CreateLink link);
		
	public CreateLink selectByID(int id);
	
	public void add(CreateLink link);
	
	public Pager<CreateLink> find();
}
