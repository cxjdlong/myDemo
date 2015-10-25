package com.cxjdlong.basic.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxjdlong.basic.dao.ResourceDao;
import com.cxjdlong.basic.model.Menutree;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.Resourcefields;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.ResourceServiceI;

@Service("resourceService")
public class ResourceServiceImpl implements ResourceServiceI {
	
	private ResourceDao resourceDao;

	public ResourceDao getResourceDao() {
		return resourceDao;
	}
	@Autowired
	public void setResourceDao(ResourceDao resourceDao) {
		this.resourceDao = resourceDao;
	}
	
	@Override
	public List<Resourcefields> getResourceFID(String id) {
		
		return resourceDao.getResourceByFID(id);
	}
	@Override
	public List<Resourcefields> getResourceZID(String id,String fid) {
		
		return resourceDao.getResourceByZID(id,fid);
	}
	@Override
	public List<Resourcefields> getResourceAllID() {
		
		return resourceDao.getResourceAllID();
	}
	@Override
	public Resourcefields getRestourceByID(String id) {
		
		return resourceDao.getResourceById(id);
	}
	@Override
	public List<Resourcefields> getAllList() {
		
		return resourceDao.getAllList();
	}
	@Override
	public Pager<Resourcefields> find() {
		
		int size = SystemContext.getPageSize();
		int offset = SystemContext.getPageOffset();
		System.out.println("size="+size+",offset="+offset);
		Map<String,String> map = new HashMap<String,String>(); 		
		map.put("offset", offset+"");
		map.put("size",size+"");
		int totalRecord = resourceDao.getFindTotal();
		
		List<Resourcefields> dates = resourceDao.getFind(map);
		Pager<Resourcefields> pager = new Pager<Resourcefields>();
		pager.setDates(dates);
		pager.setPageSize(size);
		pager.setPageoffSise(offset);
		pager.setTotalRecord(totalRecord);
		return pager;
	}
	

}
