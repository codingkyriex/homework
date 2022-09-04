package com.demos.labdemo.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.demos.labdemo.entity.User;
import org.apache.ibatis.annotations.Mapper;

/**
 * @program: labDemo
 * @description:
 * @author: xzs
 * @create: 2022-08-31 22:43
 **/

@Mapper
public interface UserMapper extends BaseMapper<User> {
}
