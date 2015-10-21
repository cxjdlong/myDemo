package com.cxjdlong.basic.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxjdlong.basic.dao.CreatenewsDao;
import com.cxjdlong.basic.model.Createnews;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.NewsServiceI;

@Service("newsService")
public class NewsServiceImpl implements NewsServiceI {

	private CreatenewsDao newsDao;

	public CreatenewsDao getNewsDao() {
		return newsDao;
	}

	@Autowired
	public void setNewsDao(CreatenewsDao newsDao) {
		this.newsDao = newsDao;
	}

	@Override
	public void delectByID(String id) {
		newsDao.delectByID(id);

	}

	@Override
	public Createnews selectByID(int id) {
		return newsDao.selectByID(id);
	}

	@Override
	public void updateByID(Createnews news) {
		newsDao.updateByID(news);
	}

	@Override
	public void add(Createnews news) {
		newsDao.add(news);
	}

	@Override
	public Pager<Createnews> find() {

		int size = SystemContext.getPageSize();
		int offset = SystemContext.getPageOffset();

		Map<String, String> map = new HashMap<String, String>();
		map.put("offset", offset + "");
		map.put("size", size + "");
		int totalRecord = newsDao.getFindTotal();

		List<Createnews> dates = newsDao.getFind(map);
		Pager<Createnews> pager = new Pager<Createnews>();
		pager.setDates(dates);
		pager.setPageSize(size);
		pager.setPageoffSize(offset);
		pager.setTotalRecord(totalRecord);
		pager.setTotalPage();
		return pager;
	}

}