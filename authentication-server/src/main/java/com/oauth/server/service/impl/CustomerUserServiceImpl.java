package com.oauth.server.service.impl;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.oauth.server.entity.*;
import com.oauth.server.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;


@Service("customerUserService")
public class CustomerUserServiceImpl implements UserDetailsService {


    @Autowired
    UserRolePkService userRolePkService;

    @Autowired
    UserService userService;

    @Autowired
    private PermissionService permissionService;

    @Autowired
    private RolePermissionPkService rolePermissionPkService;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User myser = userService.selectOne(new EntityWrapper<User>().eq("login_name", s));
        List<UserRolePk> roleList = userRolePkService.selectList(new EntityWrapper<UserRolePk>().eq("user_id", myser.getId()));
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (UserRolePk userRolePk : roleList) {
            List<RolePermissionPk> rolePermissionPks = rolePermissionPkService.selectList(new EntityWrapper<RolePermissionPk>().eq("role_id", userRolePk.getRoleId()));
            for (RolePermissionPk rolePermissionPk : rolePermissionPks) {
                Permission permission = permissionService.selectById(rolePermissionPk.getPermissionId());
                authorities.add(permission);
            }
        }
        return myser;
    }
}
