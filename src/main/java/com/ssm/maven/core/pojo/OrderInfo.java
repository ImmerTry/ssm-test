package com.ssm.maven.core.pojo;

import java.util.List;

public class OrderInfo extends TOrder {

    private List<TOrderInfo> orderInfos;
    private TOrderSend orderSend;

    public List<TOrderInfo> getOrderInfos() {
        return orderInfos;
    }

    public void setOrderInfos(List<TOrderInfo> orderInfos) {
        this.orderInfos = orderInfos;
    }

    public TOrderSend getOrderSend() {
        return orderSend;
    }

    public void setOrderSend(TOrderSend orderSend) {
        this.orderSend = orderSend;
    }
}
