package com.cxjdlong.basic.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import com.cxjdlong.basic.model.Createcompanyinfo;

public interface CompanyDao {
	
	void add(Createcompanyinfo company);
	
	void updateByID(Createcompanyinfo company);
	
	Createcompanyinfo selectByID(@Param(value = "id") int id);
	
	void delectByID (@Param(value = "id") String id);
	
	List<Createcompanyinfo> getFind(Map<String, String> map);
	
	int getFindTotal();
	
}