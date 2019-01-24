package com.platform.basics.util;

import java.io.Serializable;

import lombok.Data;

@Data
public class PageData implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**当前页*/
	private int page;
	
	/**每页多少条数据*/
	private int limit;

}
