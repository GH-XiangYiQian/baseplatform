package com.platform.basics.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.platform.basics.annotation.OperationLog;
import com.platform.basics.entity.SysPermission;
import com.platform.basics.service.SysPermissionService;
import com.platform.basics.util.HttpContextUtils;
import com.platform.basics.util.PageData;
import com.platform.basics.util.ResponseEntity;

@RestController
@RequestMapping(value = "/permission")
public class PermissionController {
	
	@Autowired
	private SysPermissionService sysPermissionService;
	
	/**
	 * .权限首页
	 * 
	 */
	@OperationLog("查看菜单信息")
	@RequestMapping(value = "/index")
	public ModelAndView index() {
		SysPermission sysPermission = new SysPermission();
		sysPermission.setPid(0);
		List<SysPermission> list = sysPermissionService.selectSysPermission(sysPermission, null);
		HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
		request.setAttribute("data", list);
		return new ModelAndView("/system/permission/index");
	}
	
	/**
	 * .获取所有权限信息
	 * @author	XiangYiQian
	 * @date	2019-1-15 17:42:06
	 * @return	ResponseEntity
	 */
	@OperationLog("查看权限信息")
	@RequiresPermissions(value = {"admin", "permission:all", "permission:select"}, logical= Logical.OR)
	@RequestMapping(value = "/findpermission")
	public ResponseEntity<List<SysPermission>> findSysPermission(SysPermission sysPermission, PageData pageData) {
		List<SysPermission> list = sysPermissionService.findSysPermission(sysPermission, pageData);
		ResponseEntity<List<SysPermission>> resp = new ResponseEntity<>(list, 0, "");
		return resp;
	}
	
	/**
	 * . 删除权限信息
	 * @author 	XiangYiQian
	 * @param 	sysPermission
	 * @date	2019-1-16 09:31:08
	 * @return	ResponseEntity
	 */
	@OperationLog("删除权限信息")
	@RequiresPermissions(value = {"admin", "permission:all", "permission:delete"}, logical= Logical.OR)
	@RequestMapping(value = "/delete")
	public ResponseEntity<Object> deleteSysPermission(Integer id) {
		int record = sysPermissionService.deleteSysPermissionById(id);
		if (record > 0) {
			return new ResponseEntity<>();
		} else {
			return new ResponseEntity<>().error("删除失败!");
		}
	}
	
	/**
	 * .添加权限信息
	 * @author 	XiangYiQian 
	 * @param 	sysPermission
	 * @date	2019-1-16 09:39:07
	 * @return	ResponseEntity
	 * @throws  Exception 
	 */
	@OperationLog("新增权限")
	@RequiresPermissions(value = {"admin", "permission:all", "permission:add"}, logical= Logical.OR)
	@RequestMapping(value = "/insert")
	public ResponseEntity<Object> insertSysPermission(@Valid SysPermission sysPermission) throws Exception {
		sysPermission.setGmtCreate(new Date());
		sysPermission.setGmtModified(new Date());
		int record = sysPermissionService.insertSysPermission(sysPermission);
		if (record > 0) {
			return new ResponseEntity<>("添加成功");
		} else {
			return new ResponseEntity<>().error("新增失败!");
		}
	}
	
	/**
	 * .修改权限信息
	 * @author 	XiangYiQian
	 * @param 	sysPermission
	 * @date	2019-1-16 09:45:18
	 * @return	ResponseEntity
	 */
	@OperationLog("修改权限信息")
	@RequiresPermissions(value = {"admin", "permission:all", "permission:update"}, logical= Logical.OR)
	@RequestMapping(value = "/update")
	public ResponseEntity<Object> updateSysPermission(@Valid SysPermission sysPermission) {
		sysPermission.setGmtModified(new Date());
		int record = sysPermissionService.updateSysPermission(sysPermission);
		if (record > 0) {
			return new ResponseEntity<>("修改成功");
		} else {
			return new ResponseEntity<>().error("修改失败!");
		}
	}
}
