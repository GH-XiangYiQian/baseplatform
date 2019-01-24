package com.platform.basics.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.platform.basics.entity.SysRole;
import com.platform.basics.mapper.basemapper.SysRoleMapper;
import com.platform.basics.service.SysRoleService;

@Service
public class SysRoleServiceImpl implements SysRoleService{

	@Autowired
	private SysRoleMapper sysRoleMapper;
	/**
	 * .依据用户信息查询角色信息
	 * @author	XiangYiQian
	 * @param	userId
	 * @date	2018-12-3 15:23:42
	 * @update	2018-12-3 15:23:42
	 * @return	List<SysRole>
	 */
	@Override
	public List<SysRole> findSysRoleByUserId(Integer userId) {
		if (userId==null) {
			return new ArrayList<>();
		}
		return sysRoleMapper.findSysRoleByUserId(userId);
	}
}
