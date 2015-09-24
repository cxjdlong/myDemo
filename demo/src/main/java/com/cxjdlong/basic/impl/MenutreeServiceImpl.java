package com.cxjdlong.basic.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxjdlong.basic.dao.MenutreeDao;
import com.cxjdlong.basic.model.Menutree;
import com.cxjdlong.basic.service.MenutreeServiceI;

@Service("menutreeService")
public class MenutreeServiceImpl implements MenutreeServiceI {
	
	private MenutreeDao menutreeDao;

	public MenutreeDao getMenutreeDao() {
		return menutreeDao;
	}
	@Autowired
	public void setMenutreeDao(MenutreeDao menutreeDao) {
		this.menutreeDao = menutreeDao;
	}
	@Override
	public List<Menutree> getMenutreeFID(String id) {
		
		return menutreeDao.getMenutreeByFID(id);
	}
	@Override
	public List<Menutree> getMenutreeZID(String id, String fid) {
		
		return menutreeDao.getMenutreeByZID(id, fid);
	}
	@Override
	public List<Menutree> getMenutreeAllID() {
		
		return null;
	}
	@Override
	public Menutree getMenutreeByID(String id) {
		
		return menutreeDao.getMenutreeById(id);
	}
	@Override
	public List<Menutree> getAllList() {
		
		return menutreeDao.getAllList();
	}
	@Override
	public List<Menutree> getMenutreeByIdIn(String id) {
		
		return menutreeDao.getMenutreeByIdIn(id);
	}
	

	

}
