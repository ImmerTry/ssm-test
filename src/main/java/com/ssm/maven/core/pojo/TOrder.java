package com.ssm.maven.core.pojo;

import java.util.Date;

public class TOrder {
    private String orderid;

    private String payment;

    private Integer paymentype;

    private String postmoney;

    private Integer status;

    private Date createtime;

    private Date updatetime;

    private Date paymenttime;

    private Date sendtime;

    private Date endtime;

    private Date closetime;

    private String shippingname;

    private String shippingcode;

    private Integer adminid;

    private String message;

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment == null ? null : payment.trim();
    }

    public Integer getPaymentype() {
        return paymentype;
    }

    public void setPaymentype(Integer paymentype) {
        this.paymentype = paymentype;
    }

    public String getPostmoney() {
        return postmoney;
    }

    public void setPostmoney(String postmoney) {
        this.postmoney = postmoney == null ? null : postmoney.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public Date getPaymenttime() {
        return paymenttime;
    }

    public void setPaymenttime(Date paymenttime) {
        this.paymenttime = paymenttime;
    }

    public Date getSendtime() {
        return sendtime;
    }

    public void setSendtime(Date sendtime) {
        this.sendtime = sendtime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Date getClosetime() {
        return closetime;
    }

    public void setClosetime(Date closetime) {
        this.closetime = closetime;
    }

    public String getShippingname() {
        return shippingname;
    }

    public void setShippingname(String shippingname) {
        this.shippingname = shippingname == null ? null : shippingname.trim();
    }

    public String getShippingcode() {
        return shippingcode;
    }

    public void setShippingcode(String shippingcode) {
        this.shippingcode = shippingcode == null ? null : shippingcode.trim();
    }

    public Integer getAdminid() {
        return adminid;
    }

    public void setAdminid(Integer adminid) {
        this.adminid = adminid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }
}