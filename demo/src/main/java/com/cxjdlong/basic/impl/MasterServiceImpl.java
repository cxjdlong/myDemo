package com.cxjdlong.basic.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.cxjdlong.basic.dao.MasterDao;
import com.cxjdlong.basic.model.Createmaster;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.MasterServiceI;
import com.cxjdlong.basic.util.MD5;

@Service("masterService")
public class MasterServiceImpl implements MasterServiceI {

	private MasterDao masterDao;
	private MD5 md5 = new MD5();	

	public MasterDao getUserDao() {
		return masterDao;
	}
	@Autowired
	public void setUserDao(MasterDao userDao) {
		this.masterDao = userDao;
	}

	@Override
	public void delectByID(String id) {
		masterDao.delectByID(id);
	}

	@Override
	public void updateByID(Createmaster master) {
		
		if(master.getUserpswd().equals("default")){
			master.setUserpswd(null);
		}else{
			master.setUserpswd(md5.getMD5ofStr(master.getUserpswd().trim()).toLowerCase());
		}
		masterDao.updateByID(master);
	}

	@Override
	public Createmaster selectByID(int id) {
		
		return masterDao.selectByID(id);
	}

	@Override
	public void add(Createmaster master) {
		masterDao.add(master);
	}

	@Override
	public Pager<Createmaster> find() {
		
		int size = SystemContext.getPageSize();
		int offset = SystemContext.getPageOffset();

		Map<String, String> map = new HashMap<String, String>();
		map.put("offset", offset + "");
		map.put("size", size + "");
		int totalRecord = masterDao.getFindTotal();

		List<Createmaster> dates = masterDao.getFind(map);
		Pager<Createmaster> pager = new Pager<Createmaster>();
		pager.setDates(dates);
		pager.setPageSize(size);
		pager.setPageoffSize(offset);
		pager.setTotalRecord(totalRecord);
		pager.setTotalPage();
		return pager;
	}
	@Override
	public Createmaster selectLogin(Createmaster master) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("username", master.getUserid());
		map.put("userpasswd", md5.getMD5ofStr(master.getUserpswd().trim()).toLowerCase());
		
		Createmaster muser =  masterDao.selectLogin(map);
		return muser;
	}
	@Override
	public void updateMasterLogin(Createmaster master) {	
		master.setLastIP(master.getLoginIp());
		master.setLastlogintime(master.getLogintime());
		masterDao.updateMasterLogin(master);
	}
	@Override
	public void updateSortByID(Createmaster master) {
		masterDao.updateSortByID(master);
		
	}
	@Override
	/**
	 * true 可以注册 false 不可注册 以存在
	 */
	public boolean checkMasterUserID(String userid) {
		Createmaster muser = masterDao.selectByUserID(userid);
		if(muser==null){
			return true;
		}else{
			return false;
		}
	}

}
