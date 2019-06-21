package com.oauth.server;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.concurrent.TimeUnit;

@RunWith(SpringRunner.class)
@SpringBootTest()
public class AuthApplicationTests {


    @Autowired
    private StringRedisTemplate redisTemplate;

    @Test
    public void contestLoads() {
        String password = new BCryptPasswordEncoder().encode("123456");
        System.out.println(password);

        System.out.println(PasswordEncoderFactories.createDelegatingPasswordEncoder().encode("123456"));

        Boolean boo = BCrypt.checkpw("123456", "{bcrypt}$2a$10$KNuB8IfRh.iUODr1knX/puznFaqIVvbPkynFRm.5PHVy5ujhWrY9G");
        System.out.println(boo);
    }

    @Test
    public void redis() {

        redisTemplate.opsForValue().set("user_session:::123123", "我是内容1");
       // redisTemplate.opsForValue().set("a:c", "我是内容2");
        System.out.println(redisTemplate.opsForValue().get("user_session:::123123"));
        redisTemplate.opsForValue().set("1223", "我是内容2", 1000, TimeUnit.SECONDS);
        redisTemplate.opsForValue().set("123", "我是内容3");
    }
}
