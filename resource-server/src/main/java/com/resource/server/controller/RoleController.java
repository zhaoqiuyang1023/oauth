package com.resource.server.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.resource.server.entity.Role;
import com.resource.server.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 
 *
 * @author alan
 * 2019-04-29 16:21:23
 */
@RestController
@RequestMapping("/role")
public class RoleController {


    @Autowired
    private RoleService roleService;


    @PreAuthorize("hasAuthority('edit')")
    @RequestMapping("/all")
    public List<Role> sa(){
        return roleService.selectList(new EntityWrapper<Role>().ne("id","123"));
    }

}
