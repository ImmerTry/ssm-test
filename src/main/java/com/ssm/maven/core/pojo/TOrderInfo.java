package com.ssm.maven.core.pojo;

public class TOrderInfo {
    private String id;

    private String itemid;

    private String orederid;

    private Integer count;

    private String itemname;

    private Long price;

    private Long amount;

    private String picturepath;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid == null ? null : itemid.trim();
    }

    public String getOrederid() {
        return orederid;
    }

    public void setOrederid(String orederid) {
        this.orederid = orederid == null ? null : orederid.trim();
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname == null ? null : itemname.trim();
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    public String getPicturepath() {
        return picturepath;
    }

    public void setPicturepath(String picturepath) {
        this.picturepath = picturepath == null ? null : picturepath.trim();
    }
}