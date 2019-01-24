package com.platform.basics.controller;

import java.util.Map;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.platform.basics.annotation.OperationLog;
import com.platform.basics.service.SessionService;
import com.platform.basics.util.ResponseEntity;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping(value = "/online")
public class SessionController {

	@Autowired
	private SessionService sessionService;
	/**
	 * .在线用户
	 * @author	XiangYiQian
	 * @date	2019-1-14 11:34:01
	 * @return	ModeAndView
	 */
	@RequestMapping("/index")
	public ModelAndView index() {
		return new ModelAndView("/system/online/index");
	}
	@OperationLog("查看在线用户")
	@RequestMapping(value = "/getOnlineInfo")
	public Map<String, Object> getOnline() {
		return sessionService.getOnLine();
	}
	
	/**
	 * .踢出用户
	 * @author 	XiangYiQian
	 * @param	id
	 */
	@OperationLog("踢出用户")
	@RequiresPermissions(value={"admin", "user:all","user:logout"}, logical= Logical.OR)
	@DeleteMapping(value = "/forceLogout")
	public ResponseEntity<Object> forceLogout(String id) {
		log.warn("REST request to forceLogout User : {}" ,id);
		sessionService.forceLogout(id);
		return new ResponseEntity<>();
	}
}
