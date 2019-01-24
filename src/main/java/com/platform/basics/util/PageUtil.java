package com.platform.basics.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.platform.basics.common.BasePlatformConstant;

/**
 * .分页工具类
 * 
 * @author 	XiangYiQian
 * @date	2019-1-14 14:13:41
 */
public class PageUtil {

	 public static Map<String,Object> buildPage(List<?> list,Long total) {
		 Map<String,Object> map = new HashMap<>(5);
	     map.put(BasePlatformConstant.Page.CODE,0);
	     map.put(BasePlatformConstant.Page.MSG,"");
	     map.put(BasePlatformConstant.Page.COUNT,total);
	     map.put(BasePlatformConstant.Page.DATA,list);
	     return map;
	 }
}
