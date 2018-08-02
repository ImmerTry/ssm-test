package com.ssm.maven.core.service.impl;

import com.ssm.maven.core.dao.UserDAO;
import com.ssm.maven.core.pojo.User;
import com.ssm.maven.core.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserDAO userDAO;

    @Override
    public User login(User user) {
        return userDAO.getUser(user);
    }

    @Override
    public int regist(User user) {
         return userDAO.addUser(user);
    }
}
