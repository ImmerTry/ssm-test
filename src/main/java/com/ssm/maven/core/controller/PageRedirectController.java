package com.ssm.maven.core.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/page")
public class PageRedirectController {
    /**
     * 商品管理
     *
     * @return
     */
    @RequestMapping("/itemManage")
    public String itemManage() {
        return "itemManage";
    }

    /**
     * 产品管理（分类）
     *
     * @return
     */
    @RequestMapping("/productManage")
    public String productManage() {
        return "productManage";
    }

    /**
     * 图片管理
     *
     * @param request
     * @return
     */
    @RequestMapping("/pictureManage")
    public String pictureManage(HttpServletRequest request) {
        return "pictureManage";
    }

    /**
     * 登录回调
     *
     * @param redirectURL 回调地址
     * @param model
     * @return
     */
    @RequestMapping("/login")
    public String loginPage(String redirectURL, Model model) {
        model.addAttribute("redirect", redirectURL);
        return "login";
    }

    /**
     * 展示商品
     *
     * @return
     */
    @RequestMapping("/showFruit")
    public String showFruit() {
        return "fruit";
    }

    /**
     * 注册
     *
     * @return
     */
    @RequestMapping("/register")
    public String registerPage() {
        return "register";
    }

    /**
     * 首页
     *
     * @return
     */
    @RequestMapping("/index")
    public String indexPage() {
        return "index";
    }

    /**
     * 后台登录
     *
     * @return
     */
    @RequestMapping("/adminLogin")
    public String adminLogin() {
        return "loginModal";
    }

    /**
     * 后台页面
     *
     * @return
     */
    @RequestMapping("/admin")
    public String redirectAdmin() {
        return "admin";
    }

    /**
     * 去购物车页面
     * @return
     */
    @RequestMapping("/goCart")
    public String goCart() {
        return "cart";
    }
}
