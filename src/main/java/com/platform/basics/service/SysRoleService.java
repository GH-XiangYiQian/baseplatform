package com.platform.basics.service;
/**
 * 角色信息操作相关接口
 * 
 * @author 	XiangYiQian
 * @date	2018-12-3 15:21:37
 */

import java.util.List;
import java.util.Map;

import com.platform.basics.entity.SysRole;

public interface SysRoleService {
	
	/**
	 * .依据用户信息查询角色信息
	 * @author	XiangYiQian
	 * @param	userId
	 * @date	2018-12-3 15:23:42
	 * @update	2018-12-3 15:23:42
	 * @return	List<SysRole>
	 */
	List<SysRole> findSysRoleByUserId(Integer userId);
	
	/**
	 * .获取用户角色信息
	 * @author 	XiangYiQian
	 * @date	2019-1-30 11:36:52
	 * @return	List<SysRole>
	 */
	List<SysRole> findSysRole(SysRole role);
	
	/**
	 * .获取用户角色信息
	 * @author 	XiangYiQian
	 * @date	2019-1-30 11:36:52
	 * @return	List<Map<String,Object>>
	 */
	List<Map<String,Object>> findSysRoleResultMap(SysRole role);
}
