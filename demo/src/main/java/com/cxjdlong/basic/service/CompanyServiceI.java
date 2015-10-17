package com.cxjdlong.basic.service;

import com.cxjdlong.basic.model.Createcompanyinfo;
import com.cxjdlong.basic.model.Pager;

public interface CompanyServiceI {
	
	public Createcompanyinfo getcompanyByID(int id);
	
	public Createcompanyinfo getcompanyByKey(String key);
	
	public void updateByID (Createcompanyinfo company);

	public Pager<Createcompanyinfo> find();
}
