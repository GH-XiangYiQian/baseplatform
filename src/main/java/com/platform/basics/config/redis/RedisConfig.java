package com.platform.basics.config.redis;

import java.io.Serializable;
import java.time.Duration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.cache.interceptor.KeyGenerator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.RedisPassword;
import org.springframework.data.redis.connection.RedisStandaloneConfiguration;
import org.springframework.data.redis.connection.jedis.JedisClientConfiguration;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

/**
 * redis配置
 * @author 	XiangYiQian
 * @date	2018-11-28 11:01:33
 * @update	2018-11-28 11:01:33
 * @version	1.0
 */
@Configuration
public class RedisConfig extends CachingConfigurerSupport {
	
	@Value("${spring.redis.host}")
    private String host;

    @Value("${spring.redis.port}")
    private int port;

    @Value("${spring.redis.password}")
    private String password;

    @Value("${spring.redis.timeout}")
    private String timeout;

    @Value("${spring.redis.jedis.pool.max-idle}")
    private int maxIdle;

    @Value("${spring.redis.jedis.pool.max-wait}")
    private String maxWaitMillis;
    
    /**
     * Jedis连接池配置
     * @author	XiangYiQian
     */
    @Bean
    public JedisConnectionFactory jedisConnectionFactory() {
    	 RedisStandaloneConfiguration redisStandaloneConfiguration = new RedisStandaloneConfiguration();
         redisStandaloneConfiguration.setHostName(host);
         redisStandaloneConfiguration.setPort(port);
         redisStandaloneConfiguration.setPassword(RedisPassword.of(password));
         JedisClientConfiguration.JedisClientConfigurationBuilder jedisClientConfiguration = JedisClientConfiguration.builder();
         jedisClientConfiguration.connectTimeout(Duration.ofMillis(Integer.parseInt(timeout.replace("ms",""))));
         jedisClientConfiguration.usePooling();
         return new JedisConnectionFactory(redisStandaloneConfiguration, jedisClientConfiguration.build());
    }
    
    @Bean
    public JedisPool redisPoolFactory() {
        JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
        jedisPoolConfig.setMaxIdle(maxIdle);
        jedisPoolConfig.setMaxWaitMillis(Long.parseLong(maxWaitMillis.replace("ms","")));
        if (password != null && !"".equals(password)) {
            return new JedisPool(jedisPoolConfig, host, port, Integer.parseInt(timeout.replace("ms","")), password);
        } else {
            return new JedisPool(jedisPoolConfig, host, port, Integer.parseInt(timeout.replace("ms","")));
        }
    }
    
    /**
     * redis序列化
     * @author	XiangYiQian
     * @date	2018-11-28 11:23:32
     * @update	2018-11-28 11:23:32
     */
    @SuppressWarnings({ "unused", "rawtypes" })
	@Bean
    @ConditionalOnMissingBean(name = "redisTemplate")
    public RedisTemplate<String, Object> redisTemplate(RedisConnectionFactory redisConnectionFactory) {
    	RedisTemplate<String, Object> redisTemplate = new RedisTemplate<>();
    	//  使用fastjson序列化
    	FastJsonRedisSerializer fastJsonRedisSerializer = new FastJsonRedisSerializer<>(Object.class);
    	//  value使用fastJsonRedisSerializer序列化
    	redisTemplate.setKeySerializer(new StringRedisSerializer());
    	redisTemplate.setHashKeySerializer(new StringRedisSerializer());
    	redisTemplate.setConnectionFactory(redisConnectionFactory);
    	return redisTemplate;
    }
    
    /**
     * redis缓存管理器
     * @author	XiangYiQian
     * @param	redisConnectionFactory
     * @date	2018-11-28 11:38:06
     * @update	2018-11-28 11:38:06
     * @return	CacheManager
     */
    @Bean
    public CacheManager cacheManager(RedisConnectionFactory redisConnectionFactory) {
    	RedisCacheManager.RedisCacheManagerBuilder builder = RedisCacheManager.RedisCacheManagerBuilder
    				.fromConnectionFactory(redisConnectionFactory);
    	return builder.build();
    }
    
    @Bean
    @ConditionalOnMissingBean(StringRedisTemplate.class)
    public StringRedisTemplate stringRedisTemplate(RedisConnectionFactory redisConnectionFactory) {
    	 StringRedisTemplate template = new StringRedisTemplate();
         template.setConnectionFactory(redisConnectionFactory);
         return template;
    }
    
    /**
     * 自定义缓存key生成策略
     * 使用方法 @Cacheable(keyGenerator="keyGenerator")
     * @return
     */
    @Bean
    @Override
    public KeyGenerator keyGenerator() {
        return (target, method, params) -> {
            StringBuilder sb = new StringBuilder();
            sb.append(target.getClass().getName());
            sb.append(method.getName());
            for (Object obj : params) {
                sb.append(obj.toString());
            }
            return sb.toString();
        };
    }

    @Bean
    public RedisTemplate<String, Serializable> limitRedisTemplate(RedisConnectionFactory redisConnectionFactory) {
        RedisTemplate<String, Serializable> template = new RedisTemplate<>();
        template.setKeySerializer(new StringRedisSerializer());
        template.setValueSerializer(new GenericJackson2JsonRedisSerializer());
        template.setConnectionFactory(redisConnectionFactory);
        return template;
    }
}
