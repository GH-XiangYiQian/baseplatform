package com.platform.basics.mapper.basemapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.platform.basics.base.BaseMapper;
import com.platform.basics.entity.SysRole;
/**
 *  角色信息操作相关接口
 * @author	XiangYiQian
 * @date	2018-12-3 15:32:30
 */
public interface SysRoleMapper extends BaseMapper<SysRole> {
	
	/**
	 * .依据用户信息查询角色信息
	 * @author	XiangYiQian
	 * @param	userId
	 * @date	2018-12-3 15:23:42
	 * @update	2018-12-3 15:23:42
	 * @return	List<SysRole>
	 */
	List<SysRole> findSysRoleByUserId(@Param("userId")Integer userId);
}