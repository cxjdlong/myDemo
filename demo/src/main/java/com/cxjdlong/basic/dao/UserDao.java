package com.cxjdlong.basic.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import com.cxjdlong.basic.model.CreateUser;

public interface UserDao {

	CreateUser selectByID(@Param(value = "id") int id);
	
	void delectByID (@Param(value = "id") String id);
	
	void updateByID(CreateUser user);
	
	void add(CreateUser user);
	
	List<CreateUser> getFind(Map<String, String> map);
	
	int getFindTotal();

}