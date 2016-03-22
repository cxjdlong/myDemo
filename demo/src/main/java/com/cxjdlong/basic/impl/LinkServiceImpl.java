package com.cxjdlong.basic.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxjdlong.basic.dao.CreateLinkDao;
import com.cxjdlong.basic.model.CreateLink;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.LinkServiceI;

@Service("linkService")
public class LinkServiceImpl implements LinkServiceI {

	private CreateLinkDao linkDao;

	public CreateLinkDao getLinkDao() {
		return linkDao;
	}
	@Autowired
	public void setLinkDao(CreateLinkDao linkDao) {
		this.linkDao = linkDao;
	}

	@Override
	public void delectByID(String id) {
		linkDao.delectByID(id);

	}

	@Override
	public CreateLink selectByID(int id) {
		return linkDao.selectByID(id);
	}

	@Override
	public void updateByID(CreateLink link) {
		linkDao.updateByID(link);
	}

	@Override
	public void add(CreateLink link) {
		linkDao.add(link);
	}

	@Override
	public Pager<CreateLink> find() {

		int size = SystemContext.getPageSize();
		int offset = SystemContext.getPageOffset();

		Map<String, String> map = new HashMap<String, String>();
		map.put("offset", offset + "");
		map.put("size", size + "");
		int totalRecord = linkDao.getFindTotal();

		List<CreateLink> dates = linkDao.getFind(map);
		Pager<CreateLink> pager = new Pager<CreateLink>();
		pager.setDates(dates);
		pager.setPageSize(size);
		pager.setPageoffSize(offset);
		pager.setTotalRecord(totalRecord);
		pager.setTotalPage();
		return pager;
	}

}