package com.oauth.server.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;

import com.oauth.server.mapper.RolePermissionPkMapper;
import com.oauth.server.entity.RolePermissionPk;
import com.oauth.server.service.RolePermissionPkService;


@Service("rolePermissionPkService")
public class RolePermissionPkServiceImpl extends ServiceImpl<RolePermissionPkMapper, RolePermissionPk> implements RolePermissionPkService {

}
