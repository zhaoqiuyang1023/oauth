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

import java.io.Serializable;
import java.util.Date;


/**
 * @author hello
 * @date 2019-06-21 14:40:14
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("permission")
public class Permission extends Model<Permission> implements GrantedAuthority {
    private static final long serialVersionUID = 1L;


    @TableId(type = IdType.UUID)
    @TableField(value = "id")
    @ApiModelProperty(value = "")
    private Long id;

    @TableField(value = "name")
    @ApiModelProperty(value = "菜单名称")
    private String name;

    @TableField(value = "parent_id")
    @ApiModelProperty(value = "父菜单")
    private Long parentId;

    @TableField(value = "level")
    @ApiModelProperty(value = "菜单层级")
    private Long level;

    @TableField(value = "parent_ids")
    @ApiModelProperty(value = "父菜单联集")
    private String parentIds;

    @TableField(value = "sort")
    @ApiModelProperty(value = "排序")
    private Integer sort;

    @TableField(value = "href")
    @ApiModelProperty(value = "链接地址")
    private String href;

    @TableField(value = "target")
    @ApiModelProperty(value = "打开方式")
    private String target;

    @TableField(value = "icon")
    @ApiModelProperty(value = "菜单图标")
    private String icon;

    @TableField(value = "bg_color")
    @ApiModelProperty(value = "显示背景色")
    private String bgColor;

    @TableField(value = "is_show")
    @ApiModelProperty(value = "是否显示")
    private Boolean isShow;

    @TableField(value = "permission")
    @ApiModelProperty(value = "权限标识")
    private String permission;

    @TableField(value = "create_by")
    @ApiModelProperty(value = "")
    private Long createBy;

    @TableField(value = "create_date")
    @ApiModelProperty(value = "")
    private Date createDate;

    @TableField(value = "update_by")
    @ApiModelProperty(value = "")
    private Long updateBy;

    @TableField(value = "update_date")
    @ApiModelProperty(value = "")
    private Date updateDate;

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

    @Override
    public String getAuthority() {
        return name;
    }
}
