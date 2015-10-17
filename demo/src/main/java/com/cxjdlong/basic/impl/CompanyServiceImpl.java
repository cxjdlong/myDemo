package com.cxjdlong.basic.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxjdlong.basic.dao.CompanyDao;
import com.cxjdlong.basic.model.Createcompanyinfo;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.CompanyServiceI;

@Service("companyService")
public class CompanyServiceImpl implements CompanyServiceI {

	private CompanyDao companyDao;
	
	public CompanyDao getCompanyDao() {
		return companyDao;
	}
	@Autowired
	public void setCompanyDao(CompanyDao companyDao) {
		this.companyDao = companyDao;
	}
	
	@Override
	public Createcompanyinfo getcompanyByID(int id) {
		return companyDao.selectByID(id);
	}

	@Override
	public void updateByID(Createcompanyinfo company) {
		companyDao.updateByID(company);
	}

	@Override
	public Pager<Createcompanyinfo> find() {
		int size = SystemContext.getPageSize();
		int offset = SystemContext.getPageOffset();
		
		Map<String,String> map = new HashMap<String,String>(); 		
		map.put("offset", offset+"");
		map.put("size",size+"");
		int totalRecord = companyDao.getFindTotal();
		
		List<Createcompanyinfo> dates = companyDao.getFind(map);
		Pager<Createcompanyinfo> pager = new Pager<Createcompanyinfo>();
		pager.setDates(dates);
		pager.setPageSize(size);
		pager.setPageoffSise(offset);
		pager.setTotalRecord(totalRecord);
		return pager;
	}
	@Override
	public Createcompanyinfo getcompanyByKey(String key) {
		
		return companyDao.selectByKey(key);
	}


}
