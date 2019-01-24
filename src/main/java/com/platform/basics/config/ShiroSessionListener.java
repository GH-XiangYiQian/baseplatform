package com.platform.basics.config;

import java.util.concurrent.atomic.AtomicInteger;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.SessionListener;

/**
 * shiro 会话管理
 * @author Administrator
 *
 */
public class ShiroSessionListener implements SessionListener {

	private final AtomicInteger sessionCount = new AtomicInteger(0);
	@Override
	public void onStart(Session session) {
		sessionCount.incrementAndGet();
		
	}

	@Override
	public void onStop(Session session) {
		sessionCount.decrementAndGet();
		
	}

	@Override
	public void onExpiration(Session session) {
		sessionCount.decrementAndGet();
		
	}

}
