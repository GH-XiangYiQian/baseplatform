package com.platform.basics.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import com.platform.basics.config.shiro.ShiroProperties;

import lombok.Data;

/**
 * 系统配置
 * 
 * @author 	XiangYiQian
 * @date	2018-11-19 09:23:23
 */
@Data
@Component
@ConfigurationProperties(prefix="sysproperties")
public class SystemProperties {
	
	private SystemProperties sysproperties = this;
	
	private ShiroProperties shiro = new ShiroProperties();
	
	/**登陆日志*/
	private Boolean loginAopLog;
	
	/**系统日志*/
	private Boolean openAopLog;
	
	/***/

}
