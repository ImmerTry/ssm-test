package com.ssm.maven.core.service.impl;

import com.ssm.maven.core.dao.JedisClient;
import com.ssm.maven.core.dao.TOrderInfoMapper;
import com.ssm.maven.core.dao.TOrderMapper;
import com.ssm.maven.core.dao.TOrderSendMapper;
import com.ssm.maven.core.pojo.OrderInfo;
import com.ssm.maven.core.pojo.TOrderInfo;
import com.ssm.maven.core.pojo.TOrderSend;
import com.ssm.maven.core.service.OrderService;
import com.ssm.maven.core.util.HttpClientUtil;
import com.ssm.maven.core.util.JDResult;
import com.ssm.maven.core.util.JackJson;
import com.ssm.maven.core.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 订单服务
 */
@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private TOrderMapper orderMapper;
    @Autowired
    private TOrderInfoMapper infoMapper;
    @Autowired
    private TOrderSendMapper sendMapper;
    @Autowired
    private JedisClient jedisClient;
    @Value("${REDIS_ORDER_GEN_KEY}")
    private String REDIS_ORDER_GEN_KEY;
    @Value("${ORDER_ID_BEGIN}")
    private String ORDER_ID_BEGIN;
    @Value("${REDIS_ORDER_DETAIL_GEN_KEY}")
    private String REDIS_ORDER_DETAIL_GEN;
    @Value("${ORDER_CREATE_URL}")
    private String ORDER_CREATE_URL;

    @Override
    public JDResult createOrder(OrderInfo orderInfo) {
        //生成订单id
        String id = jedisClient.get(REDIS_ORDER_GEN_KEY);
        if (StringUtil.isEmpty(id)) {
            //不存在则创建
            jedisClient.set(REDIS_ORDER_GEN_KEY, ORDER_ID_BEGIN);
        }
        //创建订单id
        long orderId = jedisClient.incr(REDIS_ORDER_GEN_KEY);
        //补全字段
        orderInfo.setOrderid(String.valueOf(orderId));
        //订单状态 未付款
        orderInfo.setStatus(1);
        Date date = new Date();
        orderInfo.setCreatetime(date);
        orderInfo.setUpdatetime(date);
        //插入订单表
        orderMapper.insert(orderInfo);
        //插入订单明细表
        //补全字段
        List<TOrderInfo> orderInfos = orderInfo.getOrderInfos();
        for (TOrderInfo tOrderInfo : orderInfos) {
            //生成订单明细Id
            long detailId = jedisClient.incr(REDIS_ORDER_DETAIL_GEN);
            //补全订单id
            tOrderInfo.setId(String.valueOf(detailId));
            //补全订单号
            tOrderInfo.setOrederid(String.valueOf(orderId));
            //插入数据
            infoMapper.insert(tOrderInfo);
        }
        //插入物流表
        TOrderSend orderSend = orderInfo.getOrderSend();
        //补全字段
        orderSend.setOrderid(String.valueOf(orderId));
        //插入数据
        sendMapper.insert(orderSend);

        return JDResult.ok(orderId);
    }

    @Override
    public String createOrderId(OrderInfo orderInfo) {
        String json = JackJson.fromObjectToJson(orderInfo);
        //提交订单数据
        String jsonResult = HttpClientUtil.doPostJson(ORDER_CREATE_URL, json);
        //转换为java对象
        JDResult result = JDResult.format(jsonResult);
        //获取订单ID
        String orderId = result.getData().toString();
        return orderId;
    }
}
