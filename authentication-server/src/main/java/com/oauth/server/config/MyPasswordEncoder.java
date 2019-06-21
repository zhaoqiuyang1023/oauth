package com.oauth.server.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.util.DigestUtils;
import org.springframework.util.StringUtils;

/**
 * 自定义密码认证器
 */

@Slf4j
public class MyPasswordEncoder implements PasswordEncoder {


    private String salt;

    public MyPasswordEncoder(String salt) {
        this.salt = salt;
    }

    @Override
    public String encode(CharSequence charSequence) {
        return charSequence.toString();
    }

    @Override
    public boolean matches(CharSequence charSequence, String s) {
        System.out.println(charSequence); //原始密码
        System.out.println(s);     //数据库存入的密码

        String bcryPtpass = new BCryptPasswordEncoder().encode(charSequence);
        String md5Password = DigestUtils.md5DigestAsHex(charSequence.toString().getBytes());
        log.info(md5Password);
        if (!StringUtils.isEmpty(salt)) {
            md5Password = DigestUtils.md5DigestAsHex((charSequence.toString() + salt).getBytes());
        }
        return bcryPtpass.equals(s) || md5Password.equals(s);
    }
}
