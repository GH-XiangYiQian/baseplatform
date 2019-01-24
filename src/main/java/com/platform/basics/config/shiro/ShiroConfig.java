package com.platform.basics.config.shiro;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;

import org.apache.shiro.codec.Base64;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.session.SessionListener;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.CookieRememberMeManager;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.crazycake.shiro.RedisCacheManager;
import org.crazycake.shiro.RedisManager;
import org.crazycake.shiro.RedisSessionDAO;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;

import com.platform.basics.config.ShiroSessionListener;
import com.platform.basics.config.SystemProperties;

import at.pollux.thymeleaf.shiro.dialect.ShiroDialect;

/**
 * shiro配置
 * @author	XiangYiQian
 * @date	2018-11-27 14:15:01
 * @update	2018-11-27 14:15:01
 * @version	1.0
 */
@Configuration
public class ShiroConfig {

	@Autowired
	private SystemProperties systemProperties;
	
	@Value("${spring.redis.host}")
    private String host;

    @Value("${spring.redis.port}")
    private int port;

    @Value("${spring.redis.password}")
    private String password;

    @Value("${spring.redis.timeout}")
    private String timeout;
    
	@Bean
	public ShiroFilterFactoryBean shiroFilterFactoryBean(SecurityManager securityManager) {
		ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean(); 
		shiroFilterFactoryBean.setSecurityManager(securityManager);
		//  设置登录路径
		shiroFilterFactoryBean.setLoginUrl(systemProperties.getShiro().getLoginUrl());
		//  设置退出路径
		shiroFilterFactoryBean.setSuccessUrl(systemProperties.getShiro().getSuccessUrl());
		//  设置未授权路径
		shiroFilterFactoryBean.setUnauthorizedUrl(systemProperties.getShiro().getUnauthorizedUrl());
		
		LinkedHashMap<String, String> filterChainDefinitionMap = new LinkedHashMap<>();
		String v_AnonUrls = systemProperties.getShiro().getAnonUrls();
		String[] anonUrls = v_AnonUrls.split(",");
		for (String url:anonUrls) {
			filterChainDefinitionMap.put(url, "anon");
		}
		// 配置退出过滤器，其中具体的退出代码Shiro已经替我们实现了
		filterChainDefinitionMap.put(systemProperties.getShiro().getLogoutUrl(), "logout");
		// 除上以外所有url都必须认证通过才可以访问，未通过认证自动访问LoginUrl
	    filterChainDefinitionMap.put("/**", "user");
		//  设置免授权路径
		shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
		return shiroFilterFactoryBean;
	}
	 // shiro 生命周期处理器
	@Bean(name = "lifecycleBeanPostProcessor")
	public static LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
		return new LifecycleBeanPostProcessor();
	}
   
	@Bean
	public ShiroAuthorization shiroAuthorization() {
		ShiroAuthorization authorization = new ShiroAuthorization();
		return authorization;
	} 
   
   /**
    * .用于开启 Thymeleaf 中的 shiro 标签的使用
    * @return ShiroDialect shiro 方言对象
    */
   @Bean
   public ShiroDialect shiroDialect() {
       return new ShiroDialect();
   }
   /**
    * cookie对象
    * @return
    */
   public SimpleCookie rememberMeCookie() {
       // 设置cookie名称，对应login.html页面的<input type="checkbox" name="rememberMe"/>
       SimpleCookie cookie = new SimpleCookie("rememberMe");
       // 设置cookie的过期时间
       cookie.setMaxAge(systemProperties.getShiro().getCookieTimeout());
       return cookie;
   }
   
   /**
    * cookie管理对象
    * @return
    */
   public CookieRememberMeManager rememberMeManager() {
       CookieRememberMeManager cookieRememberMeManager = new CookieRememberMeManager();
       cookieRememberMeManager.setCookie(rememberMeCookie());
       // rememberMe cookie加密的密钥
       cookieRememberMeManager.setCipherKey(Base64.decode("4AvVhmFLUs0KTA3Kprsdag=="));
       return cookieRememberMeManager;
   }
   
   /**
    * shiro 中配置 redis 缓存
    * @return RedisManager
    */
   private RedisManager redisManager() {
       RedisManager redisManager = new RedisManager();
       // 缓存时间，单位为秒
       redisManager.setExpire(systemProperties.getShiro().getExpireIn());
       redisManager.setHost(host);
       redisManager.setPort(port);
       if (password != null && !"".equals(password)){
           redisManager.setPassword(password);
       }
       redisManager.setTimeout(Integer.parseInt(timeout.replace("ms","")));
       return redisManager;
   }
   
   private RedisCacheManager cacheManager() {
       RedisCacheManager redisCacheManager = new RedisCacheManager();
       redisCacheManager.setRedisManager(redisManager());
       return redisCacheManager;
   }
   
   /**
    * session 管理对象
    * @return DefaultWebSessionManager
    */
   @Bean
   public DefaultWebSessionManager sessionManager() {
       DefaultWebSessionManager sessionManager = new DefaultWebSessionManager();
       Collection<SessionListener> listeners = new ArrayList<>();
       listeners.add(new ShiroSessionListener());
       // 设置session超时时间，单位为毫秒
       sessionManager.setGlobalSessionTimeout(systemProperties.getShiro().getSessionTimeout());
       sessionManager.setSessionListeners(listeners);
       sessionManager.setSessionDAO(redisSessionDAO());
       return sessionManager;
   }
   
   /**
    *  会话管理
    * @return
    */
   @Bean
   public RedisSessionDAO redisSessionDAO() {
       RedisSessionDAO redisSessionDAO = new RedisSessionDAO();
       redisSessionDAO.setRedisManager(redisManager());
       return redisSessionDAO;
   }
   /**
    * 	注入
    * @return
    */
   @Bean
   public SecurityManager securityManager() {
       DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
       // 配置 SecurityManager，并注入 shiroRealm
       securityManager.setRealm(shiroAuthorization());
       // 配置 rememberMeCookie
       securityManager.setRememberMeManager(rememberMeManager());
       // 配置 缓存管理类 cacheManager
       securityManager.setCacheManager(cacheManager());
       // session管理
       securityManager.setSessionManager(sessionManager());
       return securityManager;
   }
   
   /**
    *  开启shiro注解支持
    * 表示当前Subject已经通过login进行了身份验证；即Subject.isAuthenticated()返回true。
    * @RequiresAuthentication
    * 表示当前Subject已经身份验证或者通过记住我登录的。
    * @RequiresUser
    * 表示当前Subject没有身份验证或通过记住我登录过，即是游客身份。
    * @RequiresGuest
    * 表示当前Subject需要角色admin和user。
    * @RequiresRoles(value={"admin", "user"}, logical= Logical.AND)
    * 表示当前Subject需要权限user:a或user:b。
    * @RequiresPermissions (value = { " user : a ", " user : b " }, logical = Logical.OR)
    * @return
    */
   @Bean
   @DependsOn({"lifecycleBeanPostProcessor"})
   public DefaultAdvisorAutoProxyCreator advisorAutoProxyCreator() {
       DefaultAdvisorAutoProxyCreator advisorAutoProxyCreator = new DefaultAdvisorAutoProxyCreator();
       advisorAutoProxyCreator.setProxyTargetClass(true);
       return advisorAutoProxyCreator;
   }
   @Bean
   public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(SecurityManager securityManager) {
       AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
       authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);
       return authorizationAttributeSourceAdvisor;
   }
}
