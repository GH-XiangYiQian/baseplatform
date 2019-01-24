package com.platform.basics.entity;

import com.platform.basics.base.BaseModel;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 日志实体类
 * @author 	XiangYiQian
 * @date	2018-11-19 10:28:07
 */
@Setter
@Getter
@ToString
public class SysLog extends BaseModel{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**操作人*/
	private String userName;
	
	/**操作IP*/
	private String ip;
	
	/**本机  、外网*/
	private String location;
	
	/**方法*/
	private String method;
	
	/**执行的操作*/
	private String operation;
	
	/**参数*/
	private String params;
	
	/**执行时间*/
	private int excuteTime;
}
