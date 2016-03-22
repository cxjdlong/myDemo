package com.cxjdlong.basic.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxjdlong.basic.dao.WebsetDao;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.model.WebsiteConf;
import com.cxjdlong.basic.service.WebsetServiceI;

@Service("websetService")
public class WebsetServiceImpl implements WebsetServiceI {

	private WebsetDao websetDao;
	
	
	public WebsetDao getWebsetDao() {
		return websetDao;
	}
	@Autowired
	public void setWebsetDao(WebsetDao websetDao) {
		this.websetDao = websetDao;
	}

	@Override
	public WebsiteConf getByID(int id) {
		return websetDao.selectByID(id);
	}

	@Override
	public void updateByID(WebsiteConf webset) {
		websetDao.updateByID(webset);
	}

	@Override
	public Pager<WebsiteConf> find() {
		int size = SystemContext.getPageSize();
		int offset = SystemContext.getPageOffset();
		
		Map<String,String> map = new HashMap<String,String>(); 		
		map.put("offset", offset+"");
		map.put("size",size+"");
		int totalRecord = websetDao.getFindTotal();
		
		List<WebsiteConf> dates = websetDao.getFind(map);
		Pager<WebsiteConf> pager = new Pager<WebsiteConf>();
		pager.setDates(dates);
		pager.setPageSize(size);
		pager.setPageoffSize(offset);
		pager.setTotalRecord(totalRecord);
		return pager;
	}
	@Override
	public WebsiteConf getByKey(String key) {
		
		return websetDao.selectByKey(key);
	}


}
