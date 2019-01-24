package com.platform.basics.util;

import java.util.Map;

import lombok.Data;

/**
 * .服务响应信息
 * @author 	XiangYiQian
 * @date	2018-11-21 15:48:36
 * @update	2018-11-21 15:48:36
 * @version	1.0
 */
@Data
public class ResponseEntity<T> {

	private int code;
	
	/**响应信息*/
	private String msg;
	
	/**相应数据*/
	private T data;
	
	/**自定义其它响应参数*/
	private Map<String, Object> obj;
	
	public ResponseEntity() {
		this.code = 200;
		this.msg = "操作成功";
	}
	
	public ResponseEntity(T data) {
		this.code = 200;
		this.msg = "操作成功";
		this.data = data;
	}
	
	public ResponseEntity(String msg) {
		this.code = 200;
		this.msg = msg;
	}
	
	public ResponseEntity(T data, String msg) {
		this.code = 200;
		this.data = data;
		this.msg = msg;
	}
	
	public ResponseEntity(T data, int code, String msg) {
		this.code = code;
		this.data = data;
		this.msg = msg;
	}
	
	public ResponseEntity(T data, String msg, Map<String, Object> obj) {
		this.code = 200;
		this.data = data;
		this.msg = msg;
		this.obj = obj;
	}
	
	public ResponseEntity(T data, String msg, Map<String, Object> obj, int code) {
		this.code = 200;
		this.data = data;
		this.msg = msg;
		this.obj = obj;
		this.code = code;
	}
	public ResponseEntity<T> error(String msg){
		this.code = 500;
		this.msg = msg;
		return this;
	}
	
	public ResponseEntity<T> error(String msg, int code){
		this.code = code;
		this.msg = msg;
		return this;
	}
	
	public ResponseEntity<T> error(T data, String msg){
		this.code = 500;
		this.msg = msg;
		this.data = data;
		return this;
	}
	
	public ResponseEntity<T> error(Map<String, Object> obj, String msg){
		this.code = 500;
		this.msg = msg;
		this.obj = obj;
		return this;
	}
	
	public ResponseEntity<T> error(Map<String, Object> obj, String msg, int code) {
		this.code = code;
		this.msg = msg;
		this.obj = obj;
		return this;
	}
}
