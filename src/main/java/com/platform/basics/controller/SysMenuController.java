package com.platform.basics.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.platform.basics.annotation.OperationLog;
import com.platform.basics.entity.SysMenu;
import com.platform.basics.entity.SysRole;
import com.platform.basics.entity.User;
import com.platform.basics.service.SysMenuService;
import com.platform.basics.service.SysRoleService;
import com.platform.basics.util.PageData;
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
	
	/**
	 * .菜单首页
	 * @author 	XiangYiQian
	 * @date	2019-1-24 17:02:58
	 * @return	ModelAndView
	 */
	@OperationLog("菜单首页")
	@RequestMapping(value= "/index")
	public ModelAndView index() {
		SysMenu sysMenu = new SysMenu();
		sysMenu.setPid(0);
		List<SysMenu> topMenus= sysMenuService.selectSysMenu(sysMenu, null);
		ModelAndView mv = new ModelAndView("/system/menu/index");
		mv.addObject("topMenus", topMenus);
		return mv;
	}
	
	/**
	 * .新增菜单页面
	 * @author	XiangYiQian
	 * @date	2019-1-30 11:19:22
	 * @return	ModelAndView
	 */
	@OperationLog("新增菜单页面")
	@RequiresPermissions(value = {"admin", "menu:all", "menu:add"})
	@RequestMapping(value = "insertPage")
	public ModelAndView toMenuAddPage() {
		SysMenu sysMenu = new SysMenu();
		sysMenu.setPid(0);
		List<SysMenu> topMenus= sysMenuService.selectSysMenu(sysMenu, null);
		ModelAndView mv = new ModelAndView("/system/menu/add");
		mv.addObject("topMenus", topMenus);
		return mv;
	}
	
	/**
	 * .添加菜单
	 * @author 	XiangYiQian
	 * @param	sysMenu
	 * @date	2019-1-31 11:18:00
	 * @reurn	ResponseEntity<Object>
	 */
	@OperationLog("添加菜单")
	@RequiresPermissions(value = {"admin", "menu:all", "menu:add"})
	@RequestMapping(value = "/insert")
	public ResponseEntity<Object> insertMenu(SysMenu sysMenu) {
		ResponseEntity<Object> resp = new ResponseEntity<>();
		sysMenuService.validateMenu(sysMenu);
		sysMenuService.insertSysMenu(sysMenu);
		return resp;
	}
	
	
	/**
	 * .菜单查询
	 * @author 	XiangYiQian
	 * @param 	sysMenu
	 * @param 	pageData
	 * @date	2019-1-24 16:05:01
	 * @return	ResponseEntity<List<SysMenu>>
	 */
	@OperationLog("菜单查询")
	@RequiresPermissions(value = {"admin", "menu:all", "menu:select"})
	@RequestMapping(value = "/querymenu")
	public ResponseEntity<List<SysMenu>> querySysMenu(SysMenu sysMenu, PageData pageData) {
		List<SysMenu> data = new ArrayList<SysMenu>();
		data = sysMenuService.findSysMenu(sysMenu, pageData);
		return new ResponseEntity<List<SysMenu>>(data,0,"操作成功");
	}
	
	/**
	 * .修改菜单页面
	 * @author	XiangYiQian
	 * @param	id
	 * @date	2019-2-15 11:34:42
	 * @return	ModelAndView
	 */
	@OperationLog("修改菜单页面")
	@RequiresPermissions(value = {"admin", "menu:all", "menu:update"})
	@RequestMapping(value = "/updatePage")
	public ModelAndView toUpdatePage(Integer id) {
		ModelAndView mv= new ModelAndView();
		SysMenu sysMenu = new SysMenu();
		sysMenu.setPid(0);
		SysMenu menu = sysMenuService.findSysMenuById(id);
		List<SysMenu> topMenus= sysMenuService.selectSysMenu(sysMenu, null);
		mv.addObject("topMenus", topMenus);
		mv.addObject("menu", menu);
		mv.setViewName("/system/menu/update");
		return mv;
	}
	
	
	/**
	 * .修改保存菜单
	 * @author	XiangYiQian
	 * @param	sysMenu
	 * @date	2019-2-15 14:21:45
	 * @return	ResponseEntity
	 */
	@OperationLog("修改保存菜单")
	@RequiresPermissions(value = {"admin", "menu:all", "menu:update"})
	@RequestMapping(value = "/update")
	public ResponseEntity<Object> updateSysMenu(@RequestBody SysMenu sysMenu) {
		ResponseEntity<Object> result = new ResponseEntity<>();
		sysMenuService.updateSysMenu(sysMenu);
		return result;
	}
	
	/**
	 * .删除菜单信息
	 * @author 	XiangYiQian
	 * @param	id
	 * @date	2019-2-15 17:27:31
	 * @return	ResponseEntity
	 */
	@OperationLog("删除菜单信息")
	@RequiresPermissions(value = {"admin", "menu:all", "menu:delete"})
	@RequestMapping(value = "/delete")
	public ResponseEntity<Object> deleteSysMenu(@RequestParam Integer id) {
		sysMenuService.deleteSysMenu(id);
		return new ResponseEntity<Object>();
	}
}
