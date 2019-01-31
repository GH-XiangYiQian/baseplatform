package com.platform.basics.service;

import java.util.List;
import java.util.Set;

import com.platform.basics.entity.SysPermission;
import com.platform.basics.entity.SysRole;
import com.platform.basics.util.PageData;

/**
 * 权限操作接口
 * @author	XiangYiQian
 * @date	2018-11-27 15:33:28
 * @update	2018-11-27 15:33:28
 * @version	1.0
 */
public interface SysPermissionService {
	
	/**
	 * 依据角色信息获取权限信息 
	 * @author 	XiangYiQian
	 * @param 	roles
	 * @date	2018-11-27 15:39:22
	 * @update	2018-11-27 15:39:22
	 * @return	Set<SysPermission>
	 */
	Set<SysPermission> selectSysPermissionByRoles(List<SysRole> roles);
	
	/**
	 * .查询权限信息(模糊查询)
	 * @author 	XiangYiQian
	 * @param 	sysPermission
	 * @date	2019-1-16 08:51:13
	 * @return
	 */
	List<SysPermission> findSysPermission(SysPermission sysPermission, PageData pageData);
	
	/**
	 * .查询权限信息(精确查询)
	 * @author 	XiangYiQian
	 * @param 	sysPermission
	 * @date	2019-1-16 08:51:13
	 * @return
	 */
	List<SysPermission> selectSysPermission(SysPermission sysPermission, PageData pageData);
	
	/**
	 * .依据id删除权限信息 
	 * @author 	XiangYiQian
	 * @param 	id
	 * @date	2019-1-16 08:53:46
	 * @return
	 */
	int deleteSysPermissionById(Integer id);
	
	/**
	 * .修改权限信息
	 * @author 	XiangYiQian
	 * @param 	sysPermission
	 * @date	2019-1-16 08:56:03
	 * @return
	 */
	int updateSysPermission(SysPermission sysPermission);
	
	/**
	 * .添加权限信息
	 * @author 	XiangYiQian
	 * @param 	sysPermission
	 * @date	2019-1-16 08:56:44
	 * @return
	 */
	int insertSysPermission(SysPermission sysPermission) throws Exception;

}
