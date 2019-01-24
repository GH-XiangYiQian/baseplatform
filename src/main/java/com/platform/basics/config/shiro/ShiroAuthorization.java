package com.platform.basics.config.shiro;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.platform.basics.entity.SysPermission;
import com.platform.basics.entity.SysRole;
import com.platform.basics.entity.User;
import com.platform.basics.service.SysPermissionService;
import com.platform.basics.service.UserService;

import lombok.extern.slf4j.Slf4j;

/**
 * Shiro授权认证
 * @author 	XiangYiQian
 * @date	2018-11-27 14:51:50
 * @update	2018-11-27 14:51:50
 * @version	1.0
 */
@Slf4j
public class ShiroAuthorization extends AuthorizingRealm {

	@Autowired
	private UserService userService;
	
	@Autowired
	private SysPermissionService sysPermissionService;
	
	/**
	 * 获取用户角色和权限
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		User use = (User) SecurityUtils.getSubject().getPrincipal();
		User user = userService.getUserById(use.getId());
		log.warn("=====>>>>>用户" + user.getUserName() + "获取权限");
		SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
		
		List<SysRole> roles = user.getSysRoles();
		Set<String> roleList =  roles.stream().map(SysRole::getRoleName).collect(Collectors.toSet());
		simpleAuthorizationInfo.setRoles(roleList);
		
		Set<SysPermission> permissions = sysPermissionService.selectSysPermissionByRoles(roles);
		Set<String> permissionList = permissions.stream().map(SysPermission::getPermission).collect(Collectors.toSet());
		simpleAuthorizationInfo.setStringPermissions(permissionList);
		
		return simpleAuthorizationInfo;
	}

	/**
	 * 登录认证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String account = (String) token.getPrincipal();
		String password = new String((char[]) token.getCredentials());
		log.warn("=====>>>>>用户" + account + "认证");
		User user = userService.findUserByAccount(account);
		if (user == null) {
			throw new UnknownAccountException("用户名或密码错误！");
		}
		if (!password.equals(user.getPassword())) {
			throw new IncorrectCredentialsException("用户名或密码错误！");
		}
		// 添加用户登录日志
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, password, getName());
		return info;
	}
}
