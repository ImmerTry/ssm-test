package com.ssm.maven.core.service.impl;

import com.ssm.maven.core.dao.UserDAO;
import com.ssm.maven.core.pojo.TUser;
import com.ssm.maven.core.pojo.User;
import com.ssm.maven.core.service.UserService;
import com.ssm.maven.core.util.*;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserDAO userDAO;
    @Value("${SSO_USER_TOKEN_URL}")
    private String SSO_USER_TOKEN_URL;

    @Override
    public User login(User user) {
        return userDAO.getUser(user);
    }

    @Override
    public int regist(User user) {
        return userDAO.addUser(user);
    }

    /**
     * 拦截处理
     * @param request
     * @param response
     * @return
     */
    @Override
    public TUser getUserByToken(HttpServletRequest request, HttpServletResponse response) {
        try {
            //获取当前用户token
            String token = CookieUtils.getCookieValue(request, "LL_TOKEN");
            //判断token是否有值
            if (StringUtil.isEmpty(token)) {
                return null;
            }
            //查询用户信息返回json数据
            String json = HttpClientUtil.doGet(SSO_USER_TOKEN_URL + token + ".action");
            //json数据转换为Java对象
            JDResult result = JDResult.formatToPojo(json, TUser.class);
            //获取token对应用户的状态码
            if (result.getStatus() != 200) {
                return null;
            }
            //取用户对象
            result = JDResult.formatToPojo(json, TUser.class);
            //转换成user
            TUser user = (TUser) result.getData();
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


}
