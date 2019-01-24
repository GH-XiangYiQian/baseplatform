package com.platform.basics.config.shiro;

import lombok.Data;

/**
 * shiro配置
 * @author	XiangYiQian
 * @date	2018-11-27 13:40:13
 * @update	2018-11-27 13:40:22 
 * @version	1.0
 */
@Data
public class ShiroProperties {
	
	/**登录*/
	private String loginUrl;
	
	/**登录成功后跳转的url*/
	private String successUrl;
	
	/**退出*/
	private String logoutUrl;
	
	/**未授权*/
	private String unauthorizedUrl;
	
	/**免认证的url*/
	private String anonUrls;
	
	/**session超时设置*/
	private long sessionTimeout;
	
	/**
     * rememberMe 有效时长，默认为 86400 秒，即一天
     */
    private Integer cookieTimeout;
    
    /**
     * shiro redis缓存时长，默认值 1800 秒
     */
    private Integer expireIn;
	
}
