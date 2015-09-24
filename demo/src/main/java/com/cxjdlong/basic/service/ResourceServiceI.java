package com.cxjdlong.basic.service;

import java.util.List;

import com.cxjdlong.basic.model.Resourcefields;

public interface ResourceServiceI {
	
	public List<Resourcefields> getResourceFID(String id);
	
	public List<Resourcefields> getResourceZID (String id,String fid);
	
	public List<Resourcefields> getResourceAllID();
	
	public Resourcefields getRestourceByID(String id);
	
	public List<Resourcefields> getAllList();
}
