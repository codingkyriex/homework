package com.demos.labdemo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.demos.labdemo.dto.Result;
import com.demos.labdemo.entity.User;
import com.demos.labdemo.mapper.UserMapper;
import com.demos.labdemo.service.ILoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Objects;

/**
 * @program: labDemo
 * @description:
 * @author: xzs
 * @create: 2022-08-31 22:47
 **/

@Service
public class loginImpl extends ServiceImpl<UserMapper, User> implements ILoginService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public Result login(String num,String password) {
        QueryWrapper<User> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("number",num);
        User user = userMapper.selectOne(userQueryWrapper);
        if(user==null){
            System.out.println("账号不存在");
            return Result.fail("账号不存在");
        }
        if(!Objects.equals(user.getPassword(), password)){
            System.out.println("密码错误");
            return Result.fail("密码错误");
        }
        System.out.println("成功");
        return Result.ok();
    }
}
