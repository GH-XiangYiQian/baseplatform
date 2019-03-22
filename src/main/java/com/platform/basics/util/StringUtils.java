package com.platform.basics.util;
/**
 * .字符串处理工具
 * @author 	XiangYiQian
 * @date	2019-2-15 10:07:15
 */
public class StringUtils {

	
	/**
	 * .判断字符串是否为null 或者为""
	 * @author 	XiangYiQian
	 * @param	str
	 * @date	2019-2-15 10:08:18
	 * @return	boolean
	 */
	public static boolean isEmpty(String str) {
		if (str == null || "".equals(str)) {
			return true;
		}
		return false;
	}
	
	/**
	 * .判断字符串是否不为null 或者不为""
	 * @author 	XiangYiQian
	 * @param	str
	 * @date	2019-2-15 10:08:18
	 * @return	boolean
	 */
	public static boolean isNotEmpty(String str) {
		if (str != null || !"".equals(str)) {
			return true;
		}
		return false;
	}
	
}
