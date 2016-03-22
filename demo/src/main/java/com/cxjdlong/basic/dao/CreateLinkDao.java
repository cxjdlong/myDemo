package com.cxjdlong.basic.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cxjdlong.basic.model.CreateLink;

public interface CreateLinkDao {
	
	CreateLink selectByID(@Param(value = "id") int id);
	
	void delectByID (@Param(value = "id") String id);
	
	void updateByID(CreateLink link);
	
	void add(CreateLink link);
	
	List<CreateLink> getFind(Map<String, String> map);
	
	int getFindTotal();
}
