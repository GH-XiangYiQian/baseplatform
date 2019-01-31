package com.platform.basics.mapper.basemapper;

import java.util.List;
import java.util.Set;

import com.platform.basics.base.BaseMapper;
import com.platform.basics.entity.SysPermission;
import com.platform.basics.entity.SysRole;

public interface SysPermissionMapper extends BaseMapper<SysPermission> {
	/**
	 * 依据角色信息获取权限信息 
	 * @author 	XiangYiQian
	 * @param 	roles
	 * @date	2018-11-27 15:39:22
	 * @update	2018-11-27 15:39:22
	 * @return	List<SysPermission>
	 */
	Set<SysPermission> selectSysPermissionByRoles(List<SysRole> roles);
	
	/**
	 * .查询权限信息
	 * @author 	XiangYiQian
	 * @param 	permission
	 * @return
	 */
	List<SysPermission> findSysPermission(SysPermission permission);
}