package com.cxjdlong.basic.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cxjdlong.basic.dao.UserDao;
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
	public User getUserById(String id) {
		return userDao.selectByPrimaryKey(id);
	}
	
}
