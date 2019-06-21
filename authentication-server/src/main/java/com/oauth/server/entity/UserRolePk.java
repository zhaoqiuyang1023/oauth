package com.oauth.server.entity;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import io.swagger.annotations.ApiModelProperty;
import com.baomidou.mybatisplus.enums.IdType;

import java.io.Serializable;
import java.util.Date;


/**
 * @author hello
 * @date 2019-06-21 14:42:37
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("user_role_pk")
public class UserRolePk extends Model<UserRolePk> {
    private static final long serialVersionUID = 1L;


    @TableId(type = IdType.UUID)
    @TableField(value = "user_id")
    @ApiModelProperty(value = "")
    private Long userId;

    @TableField(value = "role_id")
    @ApiModelProperty(value = "")
    private Long roleId;

    /**
     * primary key
     */
    @Override
    protected Serializable pkVal() {
        return this.userId;
    }
}
