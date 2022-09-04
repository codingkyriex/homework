package com.demos.labdemo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.demos.labdemo.dto.Result;
import com.demos.labdemo.entity.User;

/**
 * @program: labDemo
 * @description:
 * @author: xzs
 * @create: 2022-08-31 22:47
 **/
public interface ILoginService extends IService<User> {
    Result login(String a,String b);
}
