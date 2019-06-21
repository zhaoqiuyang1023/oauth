package com.oauth.server.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;

import com.oauth.server.mapper.UserRolePkMapper;
import com.oauth.server.entity.UserRolePk;
import com.oauth.server.service.UserRolePkService;


@Service("userRolePkService")
public class UserRolePkServiceImpl extends ServiceImpl<UserRolePkMapper, UserRolePk> implements UserRolePkService {

}
