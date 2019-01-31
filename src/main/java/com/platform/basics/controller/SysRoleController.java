package com.platform.basics.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.platform.basics.annotation.OperationLog;
import com.platform.basics.entity.SysRole;
import com.platform.basics.service.SysRoleService;

@RestController
@RequestMapping(value = "role")
public class SysRoleController {

	@Autowired
	private SysRoleService sysRoleService;
	
	/**
	 * .获取所有角色
	 * @author	XiangYiQian
	 * @date	2019-1-30 11:30:47
	 * @return	List<SysRole>
	 */
	@OperationLog("获取所有角色")
	@RequestMapping("/getAllRole")
	public List<SysRole> getAllRole(SysRole role) {
		List<SysRole> roles = sysRoleService.findSysRole(role);
		return roles;
	}
	
	/**
	 * .获取所有角色
	 * @author	XiangYiQian
	 * @date	2019-1-30 11:30:47
	 * @return	List<SysRole>
	 */
	@OperationLog("获取所有角色")
	@RequestMapping("/findSysRoleResultMap")
	public List<Map<String,Object>> findSysRoleResultMap(SysRole role) {
		List<Map<String,Object>> roles = sysRoleService.findSysRoleResultMap(role);
		return roles;
	}
	
}
