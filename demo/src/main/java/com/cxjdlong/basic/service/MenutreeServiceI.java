package com.cxjdlong.basic.service;

import java.util.List;

import com.cxjdlong.basic.model.Menutree;

public interface MenutreeServiceI {
	
	public List<Menutree> getMenutreeFID(String id);
	
	public List<Menutree> getMenutreeZID (String id,String fid);
	
	public List<Menutree> getMenutreeAllID();
	
	public List<Menutree> getMenutreeByIdIn(String id);
	
	public Menutree getMenutreeByID(String id);
	
	public List<Menutree> getAllList();
}
