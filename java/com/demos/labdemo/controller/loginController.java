package com.demos.labdemo.controller;

import com.demos.labdemo.dto.Result;
import com.demos.labdemo.dto.loginDto;
import com.demos.labdemo.service.impl.loginImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import sun.security.jgss.LoginConfigImpl;

/**
 * @program: labDemo
 * @description:
 * @author: xzs
 * @create: 2022-09-01 12:11
 **/

@RestController
@RequestMapping("/users")
public class loginController {
    @Autowired
    private loginImpl loginImpl;
    @PostMapping("/login")
    public Result login(@RequestBody loginDto loginDto){
        return loginImpl.login(loginDto.getId(),loginDto.getPwd());
    }
}
