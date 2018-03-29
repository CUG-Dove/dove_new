package com.sanxia.dove.platform.service;

import com.sanxia.dove.common.core.dto.MapDto;
import com.sanxia.dove.platform.entity.system.User;

import java.util.Map;

public interface UserService{
    /**
     * 判断用户是否可以登陆，不能则返回null Description：<br/>
     */
    User login(String account, String password);

    /**
     * 注册
     */
    MapDto register(User user);

    /**
     * 验证 用户名
     */
    Boolean validateUserName(String username);

    /**
     * 验证邮箱
     */
    Boolean validateEmail(String email);

    /**
     * 保存或更新用户信息
     */
    MapDto saveOrUpdate(User user);

    /**
     *  删除用户 by ID
     * @param id
     * @param user
     * @return
     */
    MapDto deleteById(String id, User user);

    /**
     * 修改密码
     */
    MapDto updatePwd(String username, String currentPwd, String newPwd, User user);
}
