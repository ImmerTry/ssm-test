package com.ssm.maven.core.pojo;

public class Item {
    private String itemId;  //商品唯一标识
    private int classId; //分类唯一标识
    private String itemName;    //商品名称
    private int price;  //商品价格
    private String description; //商品简介
    private String remark;  //商品说明
    private String picturePath; //商品图片存储路径

    public Item() {
    }

    public Item(String itemId, int classId, String itemName, int price, String description, String remark) {
        this.itemId = itemId;
        this.classId = classId;
        this.itemName = itemName;
        this.price = price;
        this.description = description;
        this.remark = remark;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getPicturePath() {
        return picturePath;
    }

    public void setPicturePath(String picturePath) {
        this.picturePath = picturePath;
    }
}
