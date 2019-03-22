package com.platform.basics.exception.handler;

import org.apache.shiro.authz.AuthorizationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

import com.platform.basics.config.SystemProperties;
import com.platform.basics.exception.BasePlatformException;
import com.platform.basics.util.ResponseEntity;

import lombok.extern.slf4j.Slf4j;

/**
 * .处理所有异常
 * @author 	XiangYiQian
 * @date	2019-1-15 11:15:57
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {
	
	@Autowired
	private SystemProperties systemProperties;
	
	/**
	 * .处理shiro异常
	 * @author 	XiangYiQian
	 * @date	2019-1-15 11:15:57
	 */
	@ExceptionHandler(value = AuthorizationException.class)
	public ModelAndView handleAuthorizationException(AuthorizationException e) {
		log.error("没有权限访问");
		return new ModelAndView(systemProperties.getShiro().getUnauthorizedUrl());
	}
	
	/**
	 * .处理未知异常
	 * @author 	XiangYiQian
	 * @param	e
	 * @date	2019-1-15 11:19:38
	 * @return	ResponseEntity
	 */
	@ExceptionHandler(value = Exception.class)
	public ResponseEntity<Object> handleException(Exception e) {
		e.printStackTrace();
        log.error(e.getMessage());
        return new ResponseEntity<>().error(e.getMessage());
	}
	/**
	 * .处理自定义异常
	 * @author 	XiangYiQian
	 * @param	e
	 * @date	2019-1-15 11:27:26
	 * @return	ResponseExtity
	 */
	@ExceptionHandler(value = BasePlatformException.class)
	public ResponseEntity<Object> basePlatformException(BasePlatformException e) {
		e.printStackTrace();
		log.error(e.getMessage());
		return new ResponseEntity<>().error(e.getMessage());
	}
	
	/**
	 * .处理所有接口数据验证异常
	 * @author	XiangYiQian
	 * @param	e
	 * @date	2019-1-15 11:32:09
	 * @return	ResponseEntity
	 */
	@ExceptionHandler(value = BindException.class)// MethodArgumentNotValidException.class
	public ResponseEntity<Object> handleBindException(BindException e) {
		e.printStackTrace();
		log.error(e.getMessage());
        String[] str = e.getBindingResult().getAllErrors().get(0).getCodes()[1].split("\\.");
        StringBuffer msg = new StringBuffer(str[1]+":");
        msg.append(e.getBindingResult().getAllErrors().get(0).getDefaultMessage());
        return new ResponseEntity<>().error(msg.toString());
	}
}
