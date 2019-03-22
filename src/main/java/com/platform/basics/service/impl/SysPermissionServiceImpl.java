package com.platform.basics.service.impl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.platform.basics.entity.SysPermission;
import com.platform.basics.entity.SysRole;
import com.platform.basics.exception.BasePlatformException;
import com.platform.basics.mapper.basemapper.SysPermissionMapper;
import com.platform.basics.service.SysPermissionService;
import com.platform.basics.util.PageData;
import com.platform.basics.util.StringUtils;

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
	public void deleteSysPermissionById(Integer id) {
		sysPermissionMapper.deleteSysPermissionByPid(id);
		sysPermissionMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int updateSysPermission(SysPermission sysPermission) {
		return sysPermissionMapper.updateByPrimaryKey(sysPermission);
	}

	@Override
	public int insertSysPermission(SysPermission sysPermission) {
		validatePermission(sysPermission);
		return sysPermissionMapper.insert(sysPermission);
	}

	@Override
	public List<SysPermission> selectSysPermission(SysPermission sysPermission, PageData pageData) {
		return sysPermissionMapper.select(sysPermission);
	}

	@Override
	public SysPermission findSysPermissionById(Integer id) {
		return sysPermissionMapper.selectByPrimaryKey(id);
	}

	
	/**
	 * .校验权限信息
	 * @author 	XiangYiQian
	 * @param	sysPermission
	 * @date	2019-2-19 13:49:19
	 * @return	void
	 */
	public void validatePermission(SysPermission permission) {
		// 权限名称不能为空
		if (StringUtils.isEmpty(permission.getPermission())) {
			throw new BasePlatformException(1, "权限名称不能为空");
		}
		// 权限名称不能重复
		SysPermission v_Permission = new SysPermission();
		v_Permission.setPermission(permission.getPermission()); 
		List<SysPermission> sysPermission = sysPermissionMapper.select(v_Permission);
		if (sysPermission.size() > 0) {
			throw new BasePlatformException(2, "权限名称不能重复");
		}
	}
}
