package com.cxjdlong.basic.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cxjdlong.basic.model.Createnewstype;

public interface CreatenewstypeDao {
	
	Createnewstype selectByID(@Param(value = "id") String id);
	
	Createnewstype updateByID(@Param(value = "id") String id);
	
	void delectByID (@Param(value = "id") String id);
	
	List<Createnewstype> getFind(Map<String, String> map);
	
	int getFindTotal();
}
