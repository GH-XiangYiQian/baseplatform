package com.platform.basics.service;

import java.util.Map;

public interface SessionService {
	
	/**
	 * .获取在线用户
	 * @author	XiangYiQian
	 * @date	2019-1-14 13:35:41
	 * @return	Map<String, Object>
	 */
	Map<String, Object> getOnLine();
	
	/**
	 * .剔除用户
	 * @author 	XiangYiQian
	 * @param	id
	 * @date	2019-1-15 09:51:48
	 * @return	void
	 */
	void forceLogout(String sessionId);
}
