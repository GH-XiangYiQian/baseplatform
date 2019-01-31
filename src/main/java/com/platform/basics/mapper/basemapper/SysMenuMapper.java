package com.platform.basics.mapper.basemapper;

import java.util.List;

import com.platform.basics.base.BaseMapper;
import com.platform.basics.entity.SysMenu;
import com.platform.basics.entity.SysRole;

public interface SysMenuMapper extends BaseMapper<SysMenu> {
	
	/**
	 * 根据角色信息获取菜单信息
	 * @author 	XiangYiQian
	 * @param	roles
	 * @date	2018-12-3 09:11:00
	 * @update	2018-12-3 09:11:00
	 * @return	List<SysMenu>
	 */
	List<SysMenu> findSysMenuByRoles(List<SysRole> roles); 
	
	/**
	 * .获取所有父级菜单
	 * @author 	XiangYiQian
	 * @date	2019-1-21 13:40:12
	 * @return	List<Menu> 
	 */
	List<SysMenu> findParentMenu();
	
	/**
	 * .查询菜单信息
	 * @author 	XiangYiQian
	 * @param 	sysmenu
	 * @return
	 */
	List<SysMenu> findSysMenu(SysMenu sysmenu);
}