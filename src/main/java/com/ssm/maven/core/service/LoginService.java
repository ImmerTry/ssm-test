package com.ssm.maven.core.service;

import com.ssm.maven.core.util.JDResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface LoginService {
    /**
     * 用户登录
     *
     * @param loginid
     * @param loginpwd
     * @param request
     * @param response
     * @return
     */
    JDResult login(String loginid, String loginpwd, HttpServletRequest request
            , HttpServletResponse response);

    /**
     * 根据token获取user对象
     *
     * @param token
     * @return
     */
    JDResult getUserByToken(String token);

    /**
     * 用户退出
     * @param request
     * @param response
     * @return
     */
    void logout(HttpServletRequest request,HttpServletResponse response);
}
