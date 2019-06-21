package com.oauth.server.entity;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import io.swagger.annotations.ApiModelProperty;
import com.baomidou.mybatisplus.enums.IdType;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.List;


/**
 * @author hello
 * @date 2019-06-21 14:19:38
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("user")
public class User extends Model<User> implements UserDetails {
    private static final long serialVersionUID = 1L;


    @TableId(type = IdType.UUID)
    @TableField(value = "id")
    @ApiModelProperty(value = "用户ID")
    private Long id;

    @TableField(value = "login_name")
    @ApiModelProperty(value = "登录名")
    private String loginName;

    @TableField(value = "nick_name")
    @ApiModelProperty(value = "昵称")
    private String nickName;

    @TableField(value = "icon")
    @ApiModelProperty(value = "")
    private String icon;

    @TableField(value = "password")
    @ApiModelProperty(value = "密码")
    private String password;

    @TableField(value = "salt")
    @ApiModelProperty(value = "shiro加密盐")
    private String salt;

    @TableField(value = "tel")
    @ApiModelProperty(value = "手机号码")
    private String tel;

    @TableField(value = "email")
    @ApiModelProperty(value = "邮箱地址")
    private String email;

    @TableField(value = "locked")
    @ApiModelProperty(value = "是否锁定")
    private Boolean locked;

    @TableField(value = "create_date")
    @ApiModelProperty(value = "")
    private Date createDate;

    @TableField(value = "create_by")
    @ApiModelProperty(value = "")
    private Long createBy;

    @TableField(value = "update_date")
    @ApiModelProperty(value = "")
    private Date updateDate;

    @TableField(value = "update_by")
    @ApiModelProperty(value = "")
    private Long updateBy;

    @TableField(value = "remarks")
    @ApiModelProperty(value = "")
    private String remarks;

    @TableField(value = "del_flag")
    @ApiModelProperty(value = "")
    private Boolean delFlag;

    @TableField(exist = false)

    private List<Permission> authorities;
    /**
     * primary key
     */
    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public String getUsername() {
        return loginName;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
