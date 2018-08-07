package com.ssm.maven.core.controller;

import org.springframework.stereotype.Controller;
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

    @RequestMapping("/login")
    public String loginPage(HttpServletRequest request) {
        return "redirect:/login.jsp";
    }

    @RequestMapping("/showFruit")
    public String showFruit(HttpServletRequest request) {
        return "redirect:/fruit.jsp";
    }
}
