package com.cxjdlong.basic.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxjdlong.basic.dao.ProtypeDao;
import com.cxjdlong.basic.model.Createprotype;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.ProtypeServiceI;

@Service("protypeService")
public class ProtypeServiceImpl implements ProtypeServiceI {
	
	private ProtypeDao protypeDao;
	
	public ProtypeDao getProtypeDao() {
		return protypeDao;
	}
	@Autowired
	public void setProtypeDao(ProtypeDao protypeDao) {
		this.protypeDao = protypeDao;
	}

	@Override
	public void delectByID(String id) {
		protypeDao.delectByID(id);
	}

	@Override
	public void updateByID(Createprotype protype) {
		protypeDao.updateByID(protype);
	}

	@Override
	public Createprotype selectByID(int id) {
		return protypeDao.selectByID(id);
	}

	@Override
	public void add(Createprotype protype) {
		protypeDao.add(protype);
	}

	@Override
	public Pager<Createprotype> find() {

		int size = SystemContext.getPageSize();
		int offset = SystemContext.getPageOffset();

		Map<String, String> map = new HashMap<String, String>();
		map.put("offset", offset + "");
		map.put("size", size + "");
		int totalRecord = protypeDao.getFindTotal();

		List<Createprotype> dates = protypeDao.getFind(map);
		Pager<Createprotype> pager = new Pager<Createprotype>();
		pager.setDates(dates);
		pager.setPageSize(size);
		pager.setPageoffSize(offset);
		pager.setTotalRecord(totalRecord);
		pager.setTotalPage();
		
		return pager;
	}

}
