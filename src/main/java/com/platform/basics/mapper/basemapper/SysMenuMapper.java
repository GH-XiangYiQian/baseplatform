package com.platform.basics.mapper.basemapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	
	/**
	 * .更新子菜单的数量
	 * @author 	XiangYiQian
	 * @param	sysMenu
	 * @date	2019-2-12 11:46:45
	 * @return	int
	 */
	int updateMenuLevelNumber(SysMenu sysMenu);
	
	/**
	 * .依据pid删除菜单信息
	 * @author 	XiangYiQian
	 * @param	pid
	 * @date	2019-2-15 17:34:40
	 * @return	int
	 */
	int deleteSysMenuByPid(@Param("pid") Integer pid);
	
}