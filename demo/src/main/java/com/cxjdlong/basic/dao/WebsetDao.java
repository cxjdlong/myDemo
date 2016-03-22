package com.cxjdlong.basic.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cxjdlong.basic.model.WebsiteConf;

public interface WebsetDao {
	
	void add(WebsiteConf webset);
	
	void updateByID(WebsiteConf webset);
	
	WebsiteConf selectByID(@Param(value = "id") int id);
	
	WebsiteConf selectByKey(@Param(value = "key") String key);
	
	void delectByID (@Param(value = "id") String id);
	
	List<WebsiteConf> getFind(Map<String, String> map);
	
	int getFindTotal();
	
}