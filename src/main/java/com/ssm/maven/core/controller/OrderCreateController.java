package com.ssm.maven.core.controller;

import com.ssm.maven.core.pojo.OrderInfo;
import com.ssm.maven.core.service.OrderService;
import com.ssm.maven.core.util.ExceptionUtil;
import com.ssm.maven.core.util.JDResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class OrderCreateController {

    @Autowired
    private OrderService orderService;

    /**
     * 生成订单服务
     * @param orderInfo
     * @return
     */
    @RequestMapping(value = "/createOrder", method = RequestMethod.POST)
    @ResponseBody
    public JDResult createOrder(@RequestBody OrderInfo orderInfo) {
        try {
            JDResult result = orderService.createOrder(orderInfo);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return JDResult.build(500, ExceptionUtil.getStackTrace(e));
        }
    }
}
