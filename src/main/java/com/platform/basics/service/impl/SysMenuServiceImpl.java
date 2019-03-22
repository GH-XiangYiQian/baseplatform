package com.platform.basics.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.platform.basics.entity.SysMenu;
import com.platform.basics.entity.SysRole;
import com.platform.basics.exception.BasePlatformException;
import com.platform.basics.mapper.basemapper.SysMenuMapper;
import com.platform.basics.service.SysMenuService;
import com.platform.basics.util.PageData;
import com.platform.basics.util.StringUtils;
import com.platform.basics.vo.MenuVo;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class SysMenuServiceImpl implements SysMenuService{
	
	@Autowired
	private SysMenuMapper sysMenuMapper; 
	
	@Override
	public SysMenu findSysMenuById(Integer id) {
		return sysMenuMapper.selectByPrimaryKey(id);
	}
	
	/**
	 * .根据角色信息获取菜单信息
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
	public List<SysMenu> findSysMenu(SysMenu menu, PageData pageData) {
		//PageHelper.startPage(pageData.getPage(), pageData.getLimit());
		return sysMenuMapper.findSysMenu(menu);
	}

	@Override
	public List<SysMenu> selectSysMenu(SysMenu menu, PageData pageData) {
		return sysMenuMapper.select(menu);
	}

	@Transactional(rollbackFor = Throwable.class)
	@Override
	public void insertSysMenu(SysMenu menu) {
		menu.setLevelNumber(0);
		menu.setGmtCreate(new Date());
		menu.setGmtModified(new Date());
		if (menu.getPid() == 0) {
			menu.setLevelNumber(0);
		}
		SysMenu sysMenu = new SysMenu();
		sysMenu.setPid(menu.getPid());
		sysMenu.setName(menu.getName());
		if (menu.getPid() == 0) {
			menu.setLevel(1);
		} else {
			menu.setLevel(2);
		}
		// 添加菜单
		sysMenuMapper.insert(menu);
		// 更新父级菜单子菜单的数量
		if (menu.getPid() != 0) {
			SysMenu v_SysMenu = new SysMenu();
			v_SysMenu.setId(menu.getPid());
			v_SysMenu.setLevelNumber(1);
			sysMenuMapper.updateMenuLevelNumber(v_SysMenu);
		}
	}

	@Override
	public void validateMenu(SysMenu menu) {
		SysMenu sysMenu = new SysMenu();
		sysMenu.setPid(menu.getPid());
		sysMenu.setName(menu.getName());
		// pid不能为空
		if (menu.getPid() == null) {
			throw new BasePlatformException(1, "pid不能为空!");
		}
		// 菜单名称不能为空
		if (StringUtils.isEmpty(menu.getName())) {
			throw new BasePlatformException(2, "菜单名称不能为空!");
		}
		// 菜单名称不能重复
		List<SysMenu> listMenu = sysMenuMapper.select(sysMenu);
		if (listMenu.size() > 0) {
			throw new BasePlatformException(3, "菜单名称不能重复!");
		}
		// 链接地址不能为空
		if (StringUtils.isEmpty(menu.getUrl())) {
			throw new BasePlatformException(4,"链接地址不能为空!");
		}
		// 菜单排序不能为空
		if (menu.getSoft() == null) {
			throw new BasePlatformException(5,"菜单排序不能为空!");
		}
		// 排序序号不能重复
		SysMenu v_SysMenu = new SysMenu();
		v_SysMenu.setPid(menu.getPid());
		v_SysMenu.setSoft(menu.getSoft());
		List<SysMenu> v_ListMenu = sysMenuMapper.select(v_SysMenu);
		if (v_ListMenu.size() > 0) {
			throw new BasePlatformException(6, "菜单排序不能重复!");
		} 
	}

	@Override
	public void updateSysMenu(SysMenu sysMenu) {
		// 验证修改信息
		this.updateValidateSysMenu(sysMenu);
		// 保存修改信息
		sysMenuMapper.updateByPrimaryKey(sysMenu);
	}
	
	/**
	 * .修改菜单验证
	 * @author 	XiangYiQian
	 * @param 	sysMenu
	 * @date	2019-2-15 14:57:08
	 * @return	void
	 */
	public void updateValidateSysMenu(SysMenu sysMenu) {
		// 菜单名称不能为空
		if (StringUtils.isEmpty(sysMenu.getName())) {
			throw new BasePlatformException(1, "菜单名称不能为空!");
		}
		// 查询要修改的数据 
		SysMenu v_Menu = sysMenuMapper.selectByPrimaryKey(sysMenu);
		// 链接地址不能为空
		if (StringUtils.isEmpty(sysMenu.getUrl())) {
			throw new BasePlatformException(4, "链接地址不能为空!");
		}
		// 菜单排序不能为空
		if (sysMenu.getSoft() == null) {
			throw new BasePlatformException(5, "菜单排序不能为空!");
		}
		// 判断是否修改了菜单名称
		if (!sysMenu.getName().equals(v_Menu.getName())) {
			SysMenu i_Menu = new SysMenu();
			i_Menu.setPid(sysMenu.getPid());
			i_Menu.setName(sysMenu.getName());
			// 菜单名称不能重复
			List<SysMenu> v_ListSysMenu = sysMenuMapper.select(i_Menu);
			if (v_ListSysMenu.size() > 0) {
				throw new BasePlatformException(1, "菜单名称不能重复!");
			}
		}
		SysMenu v_SysMenu = new SysMenu();
		v_SysMenu.setPid(sysMenu.getPid());
		v_SysMenu.setSoft(sysMenu.getSoft());
		// 是否修改了父级菜单
		if (!v_Menu.getPid().equals(sysMenu.getPid())) {
			List<SysMenu> v_ListMenu = sysMenuMapper.select(v_SysMenu);
			if (v_ListMenu.size() > 0) {
				throw new BasePlatformException(6, "菜单排序不能重复!");
			}
		}
		if (!v_Menu.getSoft().equals(sysMenu.getSoft())) {
			// 排序序号不能重复
			List<SysMenu> v_ListMenu = sysMenuMapper.select(v_SysMenu);
			if (v_ListMenu.size() > 0) {
				throw new BasePlatformException(6, "菜单排序不能重复!");
			}
		}
	}

	@Transactional
	@Override
	public void deleteSysMenu(Integer id) {
		// 删除子菜单
		sysMenuMapper.deleteSysMenuByPid(id);
		// 删除当前菜单
		sysMenuMapper.deleteByPrimaryKey(id);
	}
}
