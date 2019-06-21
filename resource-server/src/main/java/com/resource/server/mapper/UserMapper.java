package com.resource.server.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.resource.server.entity.User;
import org.apache.ibatis.annotations.Mapper;

/**
 * 
 *
 * @author alan
 * @date 2019-04-29 17:27:11
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {

}
