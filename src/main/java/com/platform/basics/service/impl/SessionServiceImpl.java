package com.platform.basics.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.SessionDAO;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.subject.support.DefaultSubjectContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.platform.basics.entity.User;
import com.platform.basics.entity.UserOnLine;
import com.platform.basics.exception.BasePlatformException;
import com.platform.basics.service.SessionService;
import com.platform.basics.util.AddressUtils;
import com.platform.basics.util.HttpContextUtils;
import com.platform.basics.util.PageUtil;

import cn.hutool.http.HttpStatus;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class SessionServiceImpl implements SessionService{

	@Autowired
	private SessionDAO sessionDao;
	
	@Override
	public Map<String, Object> getOnLine() {
		List<UserOnLine> list = new ArrayList<>(); 
		Collection<Session> sessions = sessionDao.getActiveSessions();
		for (Session session : sessions) {
			UserOnLine onLine = new UserOnLine();
			if (session.getAttribute(DefaultSubjectContext.PRINCIPALS_SESSION_KEY) == null) {
				continue;
			} else {
				SimplePrincipalCollection principalCollection = (SimplePrincipalCollection) session.getAttribute(DefaultSubjectContext.PRINCIPALS_SESSION_KEY);
				User user = (User) principalCollection.getPrimaryPrincipal();
				onLine.setUserName(user.getUserName());
				onLine.setUserId(String.valueOf(user.getId()));
			}
			onLine.setId(String.valueOf(session.getId()));
			onLine.setHost(session.getHost());
			Long timeout = session.getTimeout();
            if (timeout == 0L) {
            	onLine.setStatus("离线");
            } else {
            	onLine.setStatus("在线");
            }
            onLine.setStartTimestamp(session.getStartTimestamp());
            onLine.setLastAccessTime(session.getLastAccessTime());
            onLine.setTimeout(timeout);
            onLine.setLocation(AddressUtils.getCityInfo(onLine.getHost()));
            list.add(onLine);
		}
		return PageUtil.buildPage(list,Long.parseLong(list.size()+""));
	}

	@Override
	public void forceLogout(String sessionId) {
		HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
		String id = request.getSession().getId();
		if (sessionId.equals(id)) {
			throw new BasePlatformException(HttpStatus.HTTP_BAD_REQUEST, "不能剔除自己!");
		}
		try {
			Session session = sessionDao.readSession(sessionId);
			session.setTimeout(0);
			session.stop();
			sessionDao.delete(session);
		} catch (Exception e) {
			log.error("剔除用户失败!");
			throw new BasePlatformException(HttpStatus.HTTP_INTERNAL_ERROR, "剔除用户失败!");
		}
	}

}
