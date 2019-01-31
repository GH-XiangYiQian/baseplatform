package com.platform.basics.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.platform.basics.entity.SysRole;
import com.platform.basics.mapper.basemapper.SysRoleMapper;
import com.platform.basics.service.SysRoleService;

@Service
public class SysRoleServiceImpl implements SysRoleService{

	@Autowired
	private SysRoleMapper sysRoleMapper;
	
	@Override
	public List<SysRole> findSysRoleByUserId(Integer userId) {
		return sysRoleMapper.findSysRoleByUserId(userId);
	}
	
	@Override
	public List<SysRole> findSysRole(SysRole role) {
		return sysRoleMapper.select(role);
	}
	
	@Override
	public List<Map<String, Object>> findSysRoleResultMap(SysRole role) {
		return sysRoleMapper.findSysRoleResultMap(role);
	}
}
