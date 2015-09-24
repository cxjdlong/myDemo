package com.cxjdlong.basic.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cxjdlong.basic.model.Resourcefields;

public interface ResourceDao {
	
	List<Resourcefields> getResourceByFID(@Param(value = "id") String id);
	
	List<Resourcefields> getResourceByZID(@Param(value = "id") String id,@Param(value = "fid") String fid);
	
	List<Resourcefields> getResourceAllID();
	
	Resourcefields getResourceById(String id);
	
	List<Resourcefields> getAllList();
}
