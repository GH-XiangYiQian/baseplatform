package com.platform.basics.service;

import java.util.List;

import com.platform.basics.entity.SysMenu;
import com.platform.basics.entity.SysRole;
import com.platform.basics.util.PageData;
import com.platform.basics.vo.MenuVo;
/**
 * 菜单信息操作相关接口
 * @author 	XiangYiQian
 * @date	2018-12-3 09:14:45
 */
public interface SysMenuService {
	
	/**
	 * .使用id查询菜单信息
	 * @author 	XiangYiQian
	 * @param	id
	 * @date	2019-2-15 11:25:15
	 * @return	SysMenu
	 */
	SysMenu findSysMenuById(Integer id);
	
	/**
	 * .查询菜单信息 (模糊查询)
	 * @author 	XiangYiQian
	 * @param	menu
	 * @date	2019-1-22 14:41:27
	 * @return 	List<SysMenu>
	 */
	List<SysMenu> findSysMenu(SysMenu menu, PageData pageData);
	
	/**
	 * .查询菜单信息 (精确查询)
	 * @author 	XiangYiQian
	 * @param	menu
	 * @date	2019-1-22 14:41:27
	 * @return 	List<SysMenu>
	 */
	List<SysMenu> selectSysMenu(SysMenu menu, PageData pageData);
	
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
	 * .获取子菜单
	 * @author 	XiangYiQian
	 * @param 	menus
	 * @date	2019-1-14 17:12:42
	 * @return
	 */
	List<MenuVo> findChildMenu(List<SysMenu> menus);
	
	/**
	 * .获取所有父级菜单
	 * @author 	XiangYiQian
	 * @date	2019-1-21 13:40:12
	 * @return	List<Menu> 
	 */
	List<SysMenu> findParentMenu();
	
	/**
	 * .新增菜单
	 * @author 	XiangYiQian
	 * @param	menu
	 * @date	2019-1-31 09:55:47
	 * @return	void
	 */
	void insertSysMenu(SysMenu menu);
	
	/**
	 * .验证菜单
	 * @author 	XiangYiQian
	 * @param 	menu
	 * @date	2019-2-15 09:37:00
	 * @return	void
	 */
	void validateMenu(SysMenu menu);
	
	/**
	 * .修改保存菜单
	 * @author 	XiangYiQian
	 * @param	sysMenu
	 * @date	2019-2-15 14:49:53
	 * @return	void
	 */
	void updateSysMenu(SysMenu sysMenu);
	
	/**
	 * .删除菜单信息
	 * @author 	XiangYiQian
	 * @param	id
	 * @date	2019-2-15 17:31:24
	 * @return	void
	 */
	void deleteSysMenu(Integer id);
}
