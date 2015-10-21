package com.cxjdlong.basic.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cxjdlong.basic.model.CreateProduct;

public interface ProductDao {
	
	CreateProduct selectByID(@Param(value = "id") int id);
	
	void delectByID (@Param(value = "id") String id);
	
	void updateByID(CreateProduct pro);
	
	void add(CreateProduct pro);
	
	List<CreateProduct> getFind(Map<String, String> map);
	
	int getFindTotal();
}
