package com.oauth2.redis;

import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import redis.clients.jedis.JedisCluster;

import com.oauth2.entity.Constants;

@Component
public class RedisUtils {
    
    @Autowired
    private StringRedisTemplate stringRedisTemplate;
    
	public StringRedisTemplate getStringRedisTemplate() {
        return stringRedisTemplate;
    }

    public void setStringRedisTemplate(StringRedisTemplate stringRedisTemplate) {
        this.stringRedisTemplate = stringRedisTemplate;
    }

    //存储带过期时间的键值对
	public  void setex(String key, String value) {
		try {
			//jedis.setex(key, Constants.CODE_EXPIREIN, value);
		    stringRedisTemplate.opsForValue().set(key, value, Constants.CODE_EXPIREIN, TimeUnit.SECONDS);
		} catch (Exception e) {
			// 释放redis对象
			e.printStackTrace();
		}
	}
	
	public  String get(String key){
		String result = null;
		try{
			//result = jedis.get(key);
		    result = stringRedisTemplate.opsForValue().get(key);
		}catch (Exception e) {
			// 释放redis对象
			e.printStackTrace();
		}
		return result;
	}
	
	public  void remove(String key) {
		try {
			//jedis.del(key);
		    stringRedisTemplate.delete(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
