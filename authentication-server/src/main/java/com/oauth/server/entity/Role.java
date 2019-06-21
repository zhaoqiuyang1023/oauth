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
 * @date 2019-06-21 14:37:36
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("role")
public class Role extends Model<Role> {
    private static final long serialVersionUID = 1L;


    @TableId(type = IdType.UUID)
    @TableField(value = "id")
    @ApiModelProperty(value = "")
    private Long id;

    @TableField(value = "name")
    @ApiModelProperty(value = "角色名称")
    private String name;

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

    /**
     * primary key
     */
    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}
