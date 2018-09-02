package com.ssm.maven.core.pojo;

public class TOrderSend {
    private String orderid;

    private String sendname;

    private String address;

    private Integer phoneno;

    private String province;

    private String city;

    private String region;

    private String detailed;

    private Integer postalcode;

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
    }

    public String getSendname() {
        return sendname;
    }

    public void setSendname(String sendname) {
        this.sendname = sendname == null ? null : sendname.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Integer getPhoneno() {
        return phoneno;
    }

    public void setPhoneno(Integer phoneno) {
        this.phoneno = phoneno;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region == null ? null : region.trim();
    }

    public String getDetailed() {
        return detailed;
    }

    public void setDetailed(String detailed) {
        this.detailed = detailed == null ? null : detailed.trim();
    }

    public Integer getPostalcode() {
        return postalcode;
    }

    public void setPostalcode(Integer postalcode) {
        this.postalcode = postalcode;
    }
}