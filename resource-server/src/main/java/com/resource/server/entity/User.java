package com.resource.server.entity;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;


/**
 * 
 *
 * @author alan
 * @date 2019-04-29 17:27:11
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("user")
public class User extends Model<User> {
private static final long serialVersionUID=1L;


        @TableId(type = IdType.UUID)
    @TableField(value ="id")
@ApiModelProperty(value = "主键")
private String id;

    @TableField(value ="login_name")
@ApiModelProperty(value = "")
private String loginName;

    @TableField(value ="username")
@ApiModelProperty(value = "")
private String username;

    @TableField(value ="password")
@ApiModelProperty(value = "")
private String password;

/**
 * primary key
 */
@Override
protected Serializable pkVal(){
        return this.id;
        }
        }
