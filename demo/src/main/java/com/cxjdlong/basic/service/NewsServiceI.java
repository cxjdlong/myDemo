package com.cxjdlong.basic.service;


import com.cxjdlong.basic.model.Createnews;
import com.cxjdlong.basic.model.Pager;

public interface NewsServiceI {
	
	public void delectByID (String id);
	
	public void updateByID (Createnews news);
		
	public Createnews selectByID(int id);
	
	public void add(Createnews news);
	
	public Pager<Createnews> find();
	
	public Pager<Createnews> selectFun(String selectKey);
}
