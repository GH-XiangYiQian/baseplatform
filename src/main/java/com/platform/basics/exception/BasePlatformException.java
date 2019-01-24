package com.platform.basics.exception;

import lombok.Getter;
/**
 * .异常处理
 * @author 	XiangYiQian
 * @date	2019-1-15 10:03:54
 */
@Getter
public class BasePlatformException extends RuntimeException{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	
	public BasePlatformException(int id, String msg) {
		super(msg);
		this.id = id;
	}

}
