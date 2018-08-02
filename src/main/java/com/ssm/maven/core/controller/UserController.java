package com.ssm.maven.core.controller;

import com.ssm.maven.core.pojo.User;
import com.ssm.maven.core.service.UserService;
import org.springframework.stereotype.Controller;
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
    @RequestMapping("admin")
    public String redirectAdmin() {
        return "admin";
    }

    @RequestMapping("/login")
    @ResponseBody
    public Map<String,Object> login(HttpServletRequest request, String loginid, String loginpwd) throws Exception {
        Map<String,Object> map = new HashMap<>();
        User user = new User(loginid,loginpwd);
        user = userService.login(user);
        if (user != null && "admin".equals(user.getLoginId()) && "123456".equals(user.getLoginPwd())) {
            request.getSession().setAttribute("currUser", user);
            map.put("status",0);
        } else if (user != null) {
            request.getSession().setAttribute("currUser", user);
            map.put("status",1);
        } else {
            map.put("msg","用户名或密码输入不正确。");
        }
        // System.out.println(map);
        return map;
    }

    @RequestMapping("/regist")
    @ResponseBody
    public Map<String,Object> regist(HttpServletRequest request,String loginid,String loginpwd) {
        Map<String,Object> map = new HashMap<>();
        User user = new User();
        user.setLoginId(loginid);
        user.setLoginPwd(loginpwd);
        int count = userService.regist(user);

        if (count > 0) {
            map.put("status",true);
        } else {
            map.put("status",false);
        }
        return map;
    }

    //
    @RequestMapping("out")
    public String out(HttpServletRequest request) {
        request.getSession().removeAttribute("currUser");
        return "redirect:/";
    }
}
