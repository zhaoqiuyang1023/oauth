package com.oauth.server.mapper;

import com.oauth.server.entity.User;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 
 *
 * @author hello
 * @date 2019-06-21 14:19:38
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {

}
