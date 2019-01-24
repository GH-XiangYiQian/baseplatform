package com.platform.basics.service;

import java.util.List;

import org.aspectj.lang.ProceedingJoinPoint;

import com.platform.basics.entity.SysLog;
import com.platform.basics.util.PageData;


/**
 * 日志
 * @author 	XiangYiQian
 * @date	2018-11-19 11:09:43
 */
public interface SysLogService {
	
	/**
	 * 获取所有日志信息
	 * @author 	XiangYiQian
	 * @param	sysLog
	 * @date	2018-11-19 11:10:59
	 * @update	2018-11-19 11:10:59
	 * @return	List<SysLog>	
	 */
	List<SysLog> getList(SysLog sysLo, PageData pageData);
	
	/**
	 * 保存日志信息
	 * @author 	XiangYiQian
	 * @param	sysLog
	 * @date	2018-11-19 11:13:46
	 * @update	2018-11-19 11:13:46
	 * @return	int
	 */
	void saveSysLog(ProceedingJoinPoint point, long excuteTime);

}
