package com.cxjdlong.basic.dao;


import com.cxjdlong.basic.model.User;

public interface UserDao {


	User selectByPrimaryKey(String id);

}