package com.cxjdlong.basic.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cxjdlong.basic.model.Createnews;

public interface CreatenewsDao {
	
	Createnews selectByID(@Param(value = "id") int id);
	
	void delectByID (@Param(value = "id") String id);
	
	void updateByID(Createnews news);
	
	void add(Createnews news);
	
	List<Createnews> getFind(Map<String, String> map);
	
	int getFindTotal();
	
	List<Createnews> selectFun(@Param(value="selKey") String  selKey);
}
