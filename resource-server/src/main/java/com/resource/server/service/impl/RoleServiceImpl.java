package com.resource.server.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.resource.server.entity.Role;
import com.resource.server.mapper.RoleMapper;
import com.resource.server.service.RoleService;
import org.springframework.stereotype.Service;


@Service("roleService")
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {

}
