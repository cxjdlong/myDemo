package com.cxjdlong.basic.service;

import com.cxjdlong.basic.model.WebsiteConf;
import com.cxjdlong.basic.model.Pager;

public interface WebsetServiceI {
	
	public WebsiteConf getByID(int id);
	
	public WebsiteConf getByKey(String key);
	
	public void updateByID (WebsiteConf webset);

	public Pager<WebsiteConf> find();
}
