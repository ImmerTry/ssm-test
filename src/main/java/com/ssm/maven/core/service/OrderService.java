package com.ssm.maven.core.service;

import com.ssm.maven.core.pojo.OrderInfo;
import com.ssm.maven.core.util.JDResult;

/**
 * 订单生成服务
 */
public interface OrderService {
    JDResult createOrder(OrderInfo orderInfo);

    String createOrderId(OrderInfo orderInfo);

}
