package com.ssm.maven.core.pojo;

/**
 * 图片表
 */
public class Picture {
    private String itemId;  //商品唯一标识Id
    private String picturePath; //图片路径地址
    private int classId;    //图片分类

    public Picture() {
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getPicturePath() {
        return picturePath;
    }

    public void setPicturePath(String picturePath) {
        this.picturePath = picturePath;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    @Override
    public String toString() {
        return "Picture{" +
                "itemId='" + itemId + '\'' +
                ", picturePath='" + picturePath + '\'' +
                ", classId=" + classId +
                '}';
    }
}
