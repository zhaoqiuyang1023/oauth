package com.oauth.server.entity;

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
 * @author hello
 * @date 2019-06-21 14:42:13
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("role_permission_pk")
public class RolePermissionPk extends Model<RolePermissionPk> {
    private static final long serialVersionUID = 1L;


    @TableId(type = IdType.UUID)
    @TableField(value = "role_id")
    @ApiModelProperty(value = "")
    private Long roleId;

    @TableField(value = "permission_id")
    @ApiModelProperty(value = "")
    private Long permissionId;

    /**
     * primary key
     */
    @Override
    protected Serializable pkVal() {
        return this.roleId;
    }
}
