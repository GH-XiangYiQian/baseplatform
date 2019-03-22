package com.platform.basics.controller;


import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.platform.basics.annotation.OperationLog;
import com.platform.basics.entity.User;
import com.platform.basics.service.UserService;
import com.platform.basics.util.PageData;
import com.platform.basics.util.ResponseEntity;


/**
 * .用户信息接口
 * @author	XiangYiQian
 * @date	2019-1-14 11:32:12
 */
@RestController
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	/**
	 * .用户首页
	 * @author 	XiangYiQian
	 * @date	2019-2-19 15:18:44
	 * @return	ModelView
	 */
	@OperationLog("用户首页")
	@RequestMapping(value = "/index")
	public ModelAndView index() {
		return new ModelAndView("/system/user/index");
	}
	
	/**
	 * .用户列表信息
	 * @author 	XiangYiQian
	 * @param	user
	 * @date	2019-2-19 17:22:05
	 * @return	ResponseEntity
	 */
	@OperationLog("用户列表")
	@RequiresPermissions(value = {"admin","user:all", "user:select"})
	@RequestMapping(value = "/selectUser")
	public ResponseEntity<List<User>> findUser(User user, PageData pageData) {
		List<User> userList = userService.findUser(user);
		ResponseEntity<List<User>> result = new ResponseEntity<>(userList, 0, "");
		return result;
	}
}
