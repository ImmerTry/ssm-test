package com.ssm.maven.core.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/page")
public class PageRedirectController {
    @RequestMapping("/itemManage")
    public String itemManage(HttpServletRequest request){
        return "itemManage";
    }

    @RequestMapping("/productManage")
    public String productManage(HttpServletRequest request) {
        return "productManage";
    }

    @RequestMapping("/pictureManage")
    public String pictureManage(HttpServletRequest request) {
        return "pictureManage";
    }

    /**
     * 登录回调
     * @param redirectURL 回调地址
     * @param model
     * @return
     */
    @RequestMapping("/login")
    public String loginPage(String redirectURL, Model model) {
        model.addAttribute("redirect",redirectURL);
        return "login";
    }

    @RequestMapping("/showFruit")
    public String showFruit(HttpServletRequest request) {
        return "fruit";
    }
    @RequestMapping("/register")
    public String registerPage(HttpServletRequest request) {
        return "register";
    }
    @RequestMapping("/index")
    public String indexPage(HttpServletRequest request) {
        return "index";
    }
}
