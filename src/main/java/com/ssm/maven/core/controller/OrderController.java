package com.ssm.maven.core.controller;

import com.ssm.maven.core.pojo.CartItem;
import com.ssm.maven.core.pojo.OrderInfo;
import com.ssm.maven.core.pojo.TUser;
import com.ssm.maven.core.service.CartService;
import com.ssm.maven.core.service.OrderService;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {


    @Autowired
    private OrderService orderService;
    @Autowired
    private CartService cartService;

    /**
     * 展示订单支付成功页面
     * @param orderInfo
     * @param model
     * @param request
     * @return
     */

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String createOrder(OrderInfo orderInfo, Model model, HttpServletRequest request) {
        //取用户信息
        TUser user = (TUser) request.getAttribute("user");
        //补全orederInfo属性
        orderInfo.setLoginid(user.getLoginid());
        //获取订单id
        String orderId = orderService.createOrderId(orderInfo);
        //取订单总额
        model.addAttribute("orderId", orderId);
        model.addAttribute("payment", orderInfo.getPayment());
        DateTime dateTime = new DateTime();
        dateTime.plusDays(3);
        model.addAttribute("date", dateTime.toString("yyyy-MM-dd"));
        return "success";

    }

    /**
     * 展示订单详情页面
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/showOrder")
    public String showOrder(Model model, HttpServletRequest request) {
        //获取商品列表
        List<CartItem> itemList = cartService.getItems(request);
        model.addAttribute("cartList", itemList);
        return "order";
    }

}
