package com.cxjdlong.basic.service;

import com.cxjdlong.basic.model.Createnewstype;
import com.cxjdlong.basic.model.Pager;

public interface NewsTypeServiceI {
	
	public void delectByID (String id);
	
	public void updateByID (Createnewstype newstype);
		
	public Createnewstype selectByID(int id);
	
	public void add(Createnewstype newstype);
	
	public Pager<Createnewstype> find();
	
}
