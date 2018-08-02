package com.ssm.maven.core.service;

import com.ssm.maven.core.pojo.User;

public interface UserService {
    /**
     * 用户登录
     * @param user
     * @return
     */
    User login(User user);

    /**
     * 用户注册
     * @param user
     * @return
     */
    int regist(User user);
}
