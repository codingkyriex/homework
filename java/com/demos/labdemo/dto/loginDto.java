package com.demos.labdemo.dto;

import lombok.Data;

/**
 * @program: labDemo
 * @description:
 * @author: xzs
 * @create: 2022-09-01 12:16
 **/

@Data
public class loginDto {
    private String id;
    private String pwd;
    private String token;
}
