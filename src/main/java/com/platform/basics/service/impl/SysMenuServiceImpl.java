package com.platform.basics.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.platform.basics.entity.SysMenu;
import com.platform.basics.entity.SysRole;
import com.platform.basics.mapper.basemapper.SysMenuMapper;
import com.platform.basics.service.SysMenuService;
import com.platform.basics.vo.MenuVo;

import lombok.extern.slf4j.Slf4j;
@Service
@Slf4j
public class SysMenuServiceImpl implements SysMenuService{
	
	@Autowired
	private SysMenuMapper sysMenuMapper; 
	/**
	 * 根据角色信息获取菜单信息
	 * @author 	XiangYiQian
	 * @param	roles
	 * @date	2018-12-3 09:11:00
	 * @update	2018-12-3 09:11:00
	 * @return	List<SysMenu>
	 */
	@Override
	public List<SysMenu> findSysMenuByRoles(List<SysRole> roles) {
		if(roles == null || roles.isEmpty()) {
			log.info("当前用户没有任何角色信息");
			return new ArrayList<>();
		}
		return sysMenuMapper.findSysMenuByRoles(roles);
	}
	
	/**
	 * .获取子菜单
	 * @author 	XiangYiQian
	 * @param 	menus
	 * @date	2019-1-14 17:12:42
	 * @return
	 */
	@Override
	public List<MenuVo> findChildMenu(List<SysMenu> menus) {
		List<MenuVo> menuVoList = new ArrayList<>();
		for (SysMenu sysMenu:menus) {
			if (sysMenu.getLevel() != 1) {
				MenuVo menuVo = new MenuVo();
				menuVo.setName(sysMenu.getName());
				menuVo.setPath(sysMenu.getUrl());
				menuVo.setComponent(sysMenu.getUrl());
				if(sysMenu.getIframe()){
					menuVo.setIframe("true");
	            }
				menuVoList.add(menuVo);
			}
		}
		return menuVoList;
	}

	@Override
	public List<SysMenu> findParentMenu() {
		return sysMenuMapper.findParentMenu();
	}

	@Override
	public List<SysMenu> findSysMenu(SysMenu menu) {
		return sysMenuMapper.select(menu);
	}

}
