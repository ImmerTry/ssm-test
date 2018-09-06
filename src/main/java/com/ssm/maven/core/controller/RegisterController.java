package com.ssm.maven.core.controller;

import com.ssm.maven.core.pojo.TUser;
import com.ssm.maven.core.service.LoginService;
import com.ssm.maven.core.service.RegisterService;
import com.ssm.maven.core.util.ExceptionUtil;
import com.ssm.maven.core.util.JDResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 注册注册接口
 */
@Controller
@RequestMapping("/users")
public class RegisterController {

    @Autowired
    private RegisterService registerService;
    @Autowired
    private LoginService loginService;

    /**
     * 校验数据
     *
     * @param param
     * @param type
     * @return
     */
    @RequestMapping("/check/{param}/{type}")
    @ResponseBody
    public Object checkData(@PathVariable String param, @PathVariable Integer type) {

        try {
            JDResult result = registerService.checkData(param, type);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return JDResult.build(500,ExceptionUtil.getStackTrace(e));
        }
    }

    /**
     * 用户注册
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public JDResult register(TUser user) {

        try {
            JDResult result = registerService.register(user);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return JDResult.build(500,ExceptionUtil.getStackTrace(e));
        }
    }

    /**
     * 用户登录
     *
     * @param loginid
     * @param loginpwd
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public JDResult login(String loginid, String loginpwd
            , HttpServletRequest request, HttpServletResponse response) {
        try {
            JDResult result = loginService.login(loginid, loginpwd, request, response);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return JDResult.build(500, ExceptionUtil.getStackTrace(e));
        }
    }

    /**
     * 根据token获取user对象（json）
     *
     * @param token
     * @return
     */
    @RequestMapping("/token/{token}")
    @ResponseBody
    public JDResult getUserByToken(@PathVariable String token) {

        try {
            JDResult result = loginService.getUserByToken(token);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return JDResult.build(500, ExceptionUtil.getStackTrace(e));
        }
    }

}
