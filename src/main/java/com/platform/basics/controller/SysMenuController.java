package com.platform.basics.controller;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.platform.basics.annotation.OperationLog;
import com.platform.basics.entity.SysMenu;
import com.platform.basics.entity.SysRole;
import com.platform.basics.entity.User;
import com.platform.basics.service.SysMenuService;
import com.platform.basics.service.SysRoleService;
import com.platform.basics.util.ResponseEntity;
import com.platform.basics.vo.MenuVo;

@RestController
@RequestMapping(value = "/menu")
public class SysMenuController {
	
	@Autowired
	private SysMenuService sysMenuService;
	
	@Autowired
	private SysRoleService sysRoleService;
	
	/**
	 * .获取所有角色所拥有的子菜单
	 * @author 	XiangYiQian
	 * @date	2019-1-21 13:32:34
	 * @return
	 */
	@OperationLog("查询角色所拥有的所有子菜单")
	@RequestMapping(value = "/buildMenuUrl")
	public List<MenuVo> buildMenuUrl() {
		User user = (User) SecurityUtils.getSubject().getPrincipal();
		List<SysRole> roles = sysRoleService.findSysRoleByUserId(user.getId());
		List<SysMenu> menus = sysMenuService.findSysMenuByRoles(roles);
		List<MenuVo> menuVos = sysMenuService.findChildMenu(menus);
		return menuVos;
	}
	
	
	/**
	 * .获取所有的父级菜单
	 * @author 	XiangYiQian
	 * @date	2019-1-21 13:52:06
	 * @return	ResponseEntity<List<SysMenu>>
	 */
	@OperationLog("获取所有父级菜单")
	@RequestMapping(value = "/queryparentmenu")
	public ResponseEntity<List<SysMenu>> queryParentMenu() {
		List<SysMenu> data = sysMenuService.findParentMenu();
		return new ResponseEntity<List<SysMenu>>(data);
	}
}
