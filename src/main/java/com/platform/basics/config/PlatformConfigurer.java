package com.platform.basics.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.util.ResourceUtils;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class PlatformConfigurer implements WebMvcConfigurer{
	
	/**登陆拦截器*/
	@Autowired
	private LoginInterceptor loginInterceptor;
	
	public void addViewControllers(ViewControllerRegistry registry) {
		//首页
        registry.addViewController("/common/app").setViewName("/common/app");
        //设置
        registry.addViewController("/common/setting").setViewName("/common/setting");
        //跳转登陆注册页面
        registry.addViewController("/").setViewName("/user/login");
        registry.addViewController("/login.html").setViewName("/user/login");
        registry.addViewController("/signUp.html").setViewName("/register");
        
	}
	
	/**
	 * 配置模板资源路径
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// 配置模板资源路径
	    registry.addResourceHandler("/templates/**").addResourceLocations(ResourceUtils.CLASSPATH_URL_PREFIX+"/templates/");
	    registry.addResourceHandler("/static/**").addResourceLocations(ResourceUtils.CLASSPATH_URL_PREFIX+"/static/");  
	}
	
	/**
     * 重写添加拦截器方法并添加配置拦截器
     * @param registry
     */
	 @Override
	 public void addInterceptors(InterceptorRegistry registry) {
		 InterceptorRegistration interceptorReg = registry.addInterceptor(loginInterceptor).addPathPatterns("/**");
		 interceptorReg.excludePathPatterns("/static/**");
		 interceptorReg.excludePathPatterns("/templates/**");
		 interceptorReg.excludePathPatterns("/login.html","/image/**","/css/**","/js/**","/plugins/**","/swagger/**");
	 }

}
