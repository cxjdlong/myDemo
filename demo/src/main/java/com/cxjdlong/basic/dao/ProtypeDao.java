package com.cxjdlong.basic.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cxjdlong.basic.model.Createprotype;

public interface ProtypeDao {
	
	Createprotype selectByID(@Param(value = "id") int id);
	
	void delectByID (@Param(value = "id") String id);
	
	void updateByID(Createprotype protype);
	
	void add(Createprotype protype);
	
	List<Createprotype> getFind(Map<String, String> map);
	
	int getFindTotal();
}
