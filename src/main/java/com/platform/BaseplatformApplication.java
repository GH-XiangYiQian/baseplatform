package com.platform;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement(proxyTargetClass = true)// 启注解事务管理，等同于xml配置方式的
@SpringBootApplication
public class BaseplatformApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(BaseplatformApplication.class, args);
	}
	/**
	 * 打成war包  需要继承SpringBootServletInitializer 重写configure方法
	 * 打包成war的话,如果打包之后的文件中没有web.xml文件的话自己可以加进去一个最简单的web.xml(只有根节点的定义,而没有子元素)，
	 * 防止因缺乏web.xml文件而部署失败    钱3123
	 */
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(BaseplatformApplication.class);
    }
}