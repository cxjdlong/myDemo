package com.cxjdlong.basic.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cxjdlong.basic.model.Createnewstype;

public interface CreatenewstypeDao {
	
	void add(Createnewstype newstype);
	
	Createnewstype selectByID(@Param(value = "id") int id);
	
	void updateByID(Createnewstype newstype);
	
	void delectByID (@Param(value = "id") String id);
	
	List<Createnewstype> getFind(Map<String, String> map);
	
	int getFindTotal();
}
