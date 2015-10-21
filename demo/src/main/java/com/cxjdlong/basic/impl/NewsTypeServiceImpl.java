package com.cxjdlong.basic.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxjdlong.basic.dao.CreatenewstypeDao;
import com.cxjdlong.basic.model.Createnews;
import com.cxjdlong.basic.model.Createnewstype;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.NewsTypeServiceI;

@Service("newstypeService")
public class NewsTypeServiceImpl implements NewsTypeServiceI {

	private CreatenewstypeDao newstypeDao;
	
	public CreatenewstypeDao getNewstypeDao() {
		return newstypeDao;
	}
	@Autowired
	public void setNewstypeDao(CreatenewstypeDao newstypeDao) {
		this.newstypeDao = newstypeDao;
	}

	@Override
	public void delectByID(String id) {
		newstypeDao.delectByID(id);
	}

	@Override
	public void updateByID(Createnewstype newstype) {
		newstypeDao.updateByID(newstype);
	}

	@Override
	public Createnewstype selectByID(int id) {
		
		return newstypeDao.selectByID(id);
	}

	@Override
	public void add(Createnewstype newstype) {
		newstypeDao.add(newstype);
	}

	@Override
	public Pager<Createnewstype> find() {
		
		int size = SystemContext.getPageSize();
		int offset = SystemContext.getPageOffset();

		Map<String, String> map = new HashMap<String, String>();
		map.put("offset", offset + "");
		map.put("size", size + "");
		int totalRecord = newstypeDao.getFindTotal();

		List<Createnewstype> dates = newstypeDao.getFind(map);
		Pager<Createnewstype> pager = new Pager<Createnewstype>();
		pager.setDates(dates);
		pager.setPageSize(size);
		pager.setPageoffSize(offset);
		pager.setTotalRecord(totalRecord);
		pager.setTotalPage();
		
		return pager;
	}

}
