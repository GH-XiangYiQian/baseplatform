package com.platform.basics.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.platform.basics.config.SystemProperties;
import com.platform.basics.exception.BasePlatformException;
import com.platform.basics.service.SysLogService;

/**
 * .切面保存日志
 * @author 	XiangYiQian
 * @date	2018-11-21 16:39:10
 * @update	2018-11-21 16:39:10
 * @version	1.0
 */
@Aspect
@Component
public class LogAspect {
	
	@Autowired
	private SystemProperties systemProperties;
	
	@Autowired
	private SysLogService sysLogService;
	
	@Pointcut("@annotation(com.platform.basics.annotation.OperationLog)")
	public void pointcut() {
		
	}
	
	@Around("pointcut()")
	public Object around(ProceedingJoinPoint point){
		Object result = null;
		long beginTime = System.currentTimeMillis();
		try {
			// 执行方法
			result = point.proceed();
		} catch (Throwable e) {
			// 此处的异常若是为自定义异常,需上抛,否则在全局异常无法捕获到自定义异常
			if (e instanceof BasePlatformException) {
				throw new BasePlatformException(((BasePlatformException) e).getId(), e.getMessage());
			} 
		}
		long excuteTime = System.currentTimeMillis() - beginTime;
		if (systemProperties.getOpenAopLog()) {
			sysLogService.saveSysLog(point, excuteTime);
		} 
		return result;
	}
}
