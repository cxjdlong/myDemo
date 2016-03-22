package com.cxjdlong.basic.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cxjdlong.basic.model.CreateAdpic;

public interface CreateAdpicDao {
	
	CreateAdpic selectByID(@Param(value = "id") int id);
	
	void delectByID (@Param(value = "id") String id);
	
	void updateByID(CreateAdpic adpic);
	
	void add(CreateAdpic adpic);
	
	List<CreateAdpic> getFind(Map<String, String> map);
	
	int getFindTotal();
}
