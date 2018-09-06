package com.ssm.maven.core.service;

import com.ssm.maven.core.pojo.TUser;
import com.ssm.maven.core.pojo.User;
import com.ssm.maven.core.util.JDResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

    /**
     * 登录拦截 获取 token 对应 user
     * @param request
     * @param response
     * @return
     */
    TUser getUserByToken(HttpServletRequest request, HttpServletResponse response);
}
