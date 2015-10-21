package com.cxjdlong.basic.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxjdlong.basic.dao.UserDao;
import com.cxjdlong.basic.model.CreateProduct;
import com.cxjdlong.basic.model.CreateUser;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.model.User;
import com.cxjdlong.basic.service.UserServiceI;

@Service("userService")
public class UserServiceImpl implements UserServiceI {

	private UserDao userDao;
		
	public UserDao getUserDao() {
		return userDao;
	}

	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void delectByID(String id) {
		userDao.delectByID(id);
	}

	@Override
	public void updateByID(CreateUser user) {
		userDao.updateByID(user);
	}

	@Override
	public CreateUser selectByID(int id) {
		
		return userDao.selectByID(id);
	}

	@Override
	public void add(CreateUser user) {
		userDao.add(user);
	}

	@Override
	public Pager<CreateUser> find() {
		
		int size = SystemContext.getPageSize();
		int offset = SystemContext.getPageOffset();

		Map<String, String> map = new HashMap<String, String>();
		map.put("offset", offset + "");
		map.put("size", size + "");
		int totalRecord = userDao.getFindTotal();

		List<CreateUser> dates = userDao.getFind(map);
		Pager<CreateUser> pager = new Pager<CreateUser>();
		pager.setDates(dates);
		pager.setPageSize(size);
		pager.setPageoffSize(offset);
		pager.setTotalRecord(totalRecord);
		pager.setTotalPage();
		return pager;
	}

}
