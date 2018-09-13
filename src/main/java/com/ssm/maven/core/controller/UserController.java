package com.ssm.maven.core.controller;

import com.ssm.maven.core.pojo.User;
import com.ssm.maven.core.service.UserService;
import com.ssm.maven.core.util.JDResult;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping("loginIndex")
    public String loginIndex() {
        return "redirect:/login.jsp";
    }

    @RequestMapping("/login")
    @ResponseBody
    public JDResult login(String loginId, String loginPwd, HttpServletRequest request) {
        User user = new User(loginId, DigestUtils.md5DigestAsHex(loginPwd.getBytes()));
        user = userService.login(user);
        if (user != null && "admin".equals(user.getLoginId())) {
            request.getSession().setAttribute("currUser",user);
            return JDResult.build(200, "登录成功");
        }
        return JDResult.build(500, "用户名或密码输入有误");
    }

    @RequestMapping("/regist")
    @ResponseBody
    public Map<String, Object> regist(HttpServletRequest request, String loginid, String loginpwd) {
        Map<String, Object> map = new HashMap<>();
        User user = new User();
        user.setLoginId(loginid);
        user.setLoginPwd(loginpwd);
        int count = userService.regist(user);

        if (count > 0) {
            map.put("status", true);
        } else {
            map.put("status", false);
        }
        return map;
    }

    //
    @RequestMapping("/out")
    public String out(HttpServletRequest request) {
        request.getSession().removeAttribute("currUser");
        return "index";
    }
}
