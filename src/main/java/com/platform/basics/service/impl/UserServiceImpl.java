package com.platform.basics.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.platform.basics.entity.User;
import com.platform.basics.mapper.basemapper.UserMapper;
import com.platform.basics.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	/**
	 * 使用用户账号、密码查询用户信息(用户登陆)
	 * @author	XiangYiQian
	 * @param	user
	 * @date	2018-11-27 10:27:16
	 * @update	2018-11-27 10:27:16
	 * @return	User
	 */
	@Override
	public User getUserByAccountAndPassword(User user) {
		return userMapper.getUser(user);
	}
	
	/**
	 * 使用id获取用户详细信息
	 * @author 	XiangYiQian
	 * @param	id
	 * @date	2018-11-27 15:00:55
	 * @update	2018-11-27 15:00:55
	 * @return	User 
	 */
	@Override
	public User getUserById(Integer id) {
		return userMapper.getUserById(id);
	}


	/**
	 * 使用账号获取用户详细信息
	 * @author 	XiangYiQian
	 * @param	account
	 * @date	2018-11-27 15:00:55
	 * @update	2018-11-27 15:00:55
	 * @return	User 
	 */
	@Override
	public User findUserByAccount(String account) {
		return userMapper.findUserByAccount(account);
	}

}
