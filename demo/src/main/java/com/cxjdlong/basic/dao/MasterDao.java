package com.cxjdlong.basic.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cxjdlong.basic.model.Createmaster;

public interface MasterDao {

	Createmaster selectByID(@Param(value = "id") int id);
	
	Createmaster selectByUserID(@Param(value = "userid") String userid);
	
	void delectByID (@Param(value = "id") String id);
	
	void updateByID(Createmaster master);
	
	void updateSortByID(Createmaster master);
	
	void updateMasterLogin(Createmaster master);
	
	void add(Createmaster master);
	
	List<Createmaster> getFind(Map<String, String> map);
	
	int getFindTotal();
	
	Createmaster selectLogin(Map<String, String> map);
	

}