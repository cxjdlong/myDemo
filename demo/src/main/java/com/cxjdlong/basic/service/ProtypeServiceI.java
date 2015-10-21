package com.cxjdlong.basic.service;

import com.cxjdlong.basic.model.Createprotype;
import com.cxjdlong.basic.model.Pager;

public interface ProtypeServiceI {
	
	public void delectByID (String id);
	
	public void updateByID (Createprotype protype);
		
	public Createprotype selectByID(int id);
	
	public void add(Createprotype protype);
	
	public Pager<Createprotype> find();
}
