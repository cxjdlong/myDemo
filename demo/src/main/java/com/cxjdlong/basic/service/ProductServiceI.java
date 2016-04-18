package com.cxjdlong.basic.service;

import com.cxjdlong.basic.model.CreateProduct;
import com.cxjdlong.basic.model.Pager;

public interface ProductServiceI {
	
	public void delectByID (String id);
	
	public void updateByID (CreateProduct pro);
		
	public CreateProduct selectByID(int id);
	
	public void add(CreateProduct pro);
	
	public Pager<CreateProduct> find();
	
	public Pager<CreateProduct> selectFun(String selectKey);
}
