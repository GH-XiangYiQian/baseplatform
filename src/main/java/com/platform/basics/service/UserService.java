package com.platform.basics.service;

import java.util.List;

import com.platform.basics.entity.User;

/**
 * 用户信息接口
 * @author	XiangYiQian 
 * @date	2018-11-27 10:25:50
 * @update	2018-11-27 10:25:50
 * @version	1.0
 */
public interface UserService {
	
	/**
	 * 使用用户账号、密码查询用户信息(用户登陆)
	 * @author	XiangYiQian
	 * @param	user
	 * @date	2018-11-27 10:27:16
	 * @update	2018-11-27 10:27:16
	 * @return	User
	 */
	User getUserByAccountAndPassword(User user);
	
	/**
	 * 使用id获取用户详细信息
	 * @author 	XiangYiQian
	 * @param	id
	 * @date	2018-11-27 15:00:55
	 * @update	2018-11-27 15:00:55
	 * @return	User 
	 */
	User getUserById(Integer id);
	
	/**
	 * 使用账号获取用户详细信息
	 * @author 	XiangYiQian
	 * @param	account
	 * @date	2018-11-27 15:00:55
	 * @update	2018-11-27 15:00:55
	 * @return	User 
	 */
	User findUserByAccount(String account);
	
	/**
	 * .查询用户信息(模糊查询)
	 * @author 	XiangYiQian
	 * @param 	user
	 * @date	2019-2-20 08:50:24
	 * @return	List<User>
	 */
	List<User> findUser(User user);
	
	/**
	 * .查询用户信息(精确查询)
	 * @author 	XiangYiQian
	 * @param	user
	 * @date	2019-2-20 09:07:31
	 * @return	List<User>
	 */
	List<User> selectUser(User user);
	
	/**
	 * .更新用户信息
	 * @author	XiangYiQian
	 * @param	user
	 * @date	2019-3-5 10:44:16
	 * @return	void
	 */
	void updateUserById(User user);
	
	

}
