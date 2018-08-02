package com.ssm.maven.core.pojo;

import java.util.Date;

public class Order {
    private String orderId; //订单唯一标识
    private int adminId;    //用户唯一标识
    private int status; //订单状态
    private Date createTime;    //创建时间
    private int count;  //订单数量
    private int amount; //订单金额

    public Order() {
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreatTime(Date creatTime) {
        this.createTime = creatTime;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
