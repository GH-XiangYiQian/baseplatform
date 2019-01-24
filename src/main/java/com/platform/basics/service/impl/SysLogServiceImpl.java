package com.platform.basics.service.impl;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.LocalVariableTableParameterNameDiscoverer;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.platform.basics.annotation.OperationLog;
import com.platform.basics.entity.SysLog;
import com.platform.basics.entity.User;
import com.platform.basics.mapper.basemapper.SysLogMapper;
import com.platform.basics.service.SysLogService;
import com.platform.basics.util.AddressUtils;
import com.platform.basics.util.HttpContextUtils;
import com.platform.basics.util.PageData;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class SysLogServiceImpl implements SysLogService{

	@Autowired
	private SysLogMapper sysLogMapper;
	/**
	 *  获取日志信息
	 * @author 	XiangYiQian
	 * @param	sysLog
	 * @date	2018-11-19 11:17:18
	 * @update	2018-11-19 11:17:18
	 * @return	List<SysLog>
	 */
	@Override
	public List<SysLog> getList(SysLog sysLo, PageData pageData) {
		pageData.setPage(1);
		pageData.setLimit(10);
		PageHelper.startPage(pageData.getPage(), pageData.getLimit());
		List<SysLog> list = sysLogMapper.select(sysLo);
		return list;
	}

	/**
	 * 保存日志信息
	 * @author	XiangYiQian
	 * @param	sysLog
	 * @date	2018-11-19 11:18:30
	 * @update	2018-11-19 11:18:30
	 * @return	int
	 * @throws InvocationTargetException 
	 * @throws IllegalAccessException 
	 */
	@Override
	public void saveSysLog(ProceedingJoinPoint point, long excuteTime) {
		SysLog sysLog = new SysLog();
		String userName = null;
		MethodSignature signature = (MethodSignature) point.getSignature();
		Method method = signature.getMethod();
		//sysLog.setMethod(method.getName());
		// 获取注解上的描述
		OperationLog annotationLog = method.getAnnotation(OperationLog.class);
		if (annotationLog != null) {
			sysLog.setOperation(annotationLog.value());	
		}
		// 类名
		String className = point.getTarget().getClass().getName();
		// 方法名
		String methodName = signature.getName();
		log.info("ClassName：" + className + "   MethodName:" + methodName);
		sysLog.setMethod(className + "." + methodName);
		// 获取请求参数值
		Object[] args = point.getArgs();
		// 获取请求方法的参数名
		LocalVariableTableParameterNameDiscoverer u = new LocalVariableTableParameterNameDiscoverer();
		String[] paramNames = u.getParameterNames(method);
		
		if (args != null && paramNames != null ) {
			String params = "";
            for (int i = 0; i < args.length; i++) {
                if("password".equals(paramNames[i])) {
                    continue;
                }
                if("userName".equals(paramNames[i])) {
                	userName = args[i]+"";
                }
                params += "  " + paramNames[i] + ": " + args[i];
            }
            if (params.length() > 255){
                params = params.substring(0,254);
            }
            sysLog.setParams(params);
		}
		// 获取HttpServletRequest
		HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
		// 设置IP地址
        sysLog.setIp(AddressUtils.getIpAddr(request));
        // 获取位置
        sysLog.setLocation(AddressUtils.getCityInfo(sysLog.getIp()));
        sysLog.setExcuteTime((int)excuteTime);
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        sysLog.setUserName(user == null?"Login failed："+userName:user.getUserName());
        sysLog.setUserName(userName);
        sysLogMapper.insert(sysLog);
	}

}
