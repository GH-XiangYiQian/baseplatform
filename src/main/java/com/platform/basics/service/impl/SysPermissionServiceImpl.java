package com.platform.basics.service.impl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.platform.basics.entity.SysPermission;
import com.platform.basics.entity.SysRole;
import com.platform.basics.mapper.basemapper.SysPermissionMapper;
import com.platform.basics.service.SysPermissionService;
import com.platform.basics.util.PageData;

@Service
public class SysPermissionServiceImpl implements SysPermissionService{

	@Autowired
	private SysPermissionMapper sysPermissionMapper;
	
	@Override
	public Set<SysPermission> selectSysPermissionByRoles(List<SysRole> roles) {
		return sysPermissionMapper.selectSysPermissionByRoles(roles);
	}

	@Override
	public List<SysPermission> findSysPermission(SysPermission sysPermission, PageData pageData) {
		//PageHelper.startPage(pageData.getPage(), pageData.getLimit());
		return sysPermissionMapper.findSysPermission(sysPermission);
	}

	@Override
	public int deleteSysPermissionById(Integer id) {
		return sysPermissionMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int updateSysPermission(SysPermission sysPermission) {
		return sysPermissionMapper.updateByPrimaryKey(sysPermission);
	}

	@Override
	public int insertSysPermission(SysPermission sysPermission)throws Exception {
		return sysPermissionMapper.insert(sysPermission);
	}

	@Override
	public List<SysPermission> selectSysPermission(SysPermission sysPermission, PageData pageData) {
		return sysPermissionMapper.select(sysPermission);
	}

}
