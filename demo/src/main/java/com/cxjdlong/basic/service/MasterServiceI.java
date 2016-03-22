package com.cxjdlong.basic.service;

import com.cxjdlong.basic.model.Createmaster;
import com.cxjdlong.basic.model.Pager;

public interface MasterServiceI {

	public void delectByID (String id);
	
	public void updateByID (Createmaster master);
	
	public void updateMasterLogin (Createmaster master);
	
	public void updateSortByID (Createmaster master);
		
	public Createmaster selectByID(int id);
	
	public void add(Createmaster master);
	
	public Pager<Createmaster> find();
	
	public Createmaster selectLogin(Createmaster master);

	
}
