package com.cxjdlong.basic.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxjdlong.basic.dao.CreateAdpicDao;
import com.cxjdlong.basic.model.CreateAdpic;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.AdpicServiceI;

@Service("adpicService")
public class AdpicServiceImpl implements AdpicServiceI {

	private CreateAdpicDao adpicDao;


	public CreateAdpicDao getAdpicDao() {
		return adpicDao;
	}
	@Autowired
	public void setAdpicDao(CreateAdpicDao adpicDao) {
		this.adpicDao = adpicDao;
	}

	@Override
	public void delectByID(String id) {
		adpicDao.delectByID(id);

	}

	@Override
	public CreateAdpic selectByID(int id) {
		return adpicDao.selectByID(id);
	}

	@Override
	public void updateByID(CreateAdpic adpic) {
		adpicDao.updateByID(adpic);
	}

	@Override
	public void add(CreateAdpic adpic) {
		adpicDao.add(adpic);
	}

	@Override
	public Pager<CreateAdpic> find() {

		int size = SystemContext.getPageSize();
		int offset = SystemContext.getPageOffset();

		Map<String, String> map = new HashMap<String, String>();
		map.put("offset", offset + "");
		map.put("size", size + "");
		int totalRecord = adpicDao.getFindTotal();

		List<CreateAdpic> dates = adpicDao.getFind(map);
		Pager<CreateAdpic> pager = new Pager<CreateAdpic>();
		pager.setDates(dates);
		pager.setPageSize(size);
		pager.setPageoffSize(offset);
		pager.setTotalRecord(totalRecord);
		pager.setTotalPage();
		return pager;
	}

}