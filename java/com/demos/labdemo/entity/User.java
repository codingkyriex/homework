package com.demos.labdemo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @program: labDemo
 * @description:
 * @author: xzs
 * @create: 2022-08-31 22:33
 **/

@Data
@TableName("xzs_user")
public class User {
    @TableId(value = "id",type = IdType.AUTO)
    private int id;
    private String number;
    private String password;
}
