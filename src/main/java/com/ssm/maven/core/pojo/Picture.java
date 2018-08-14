package com.ssm.maven.core.pojo;

/**
 * 图片表
 */
public class Picture {
    private int pictureId;  //图片表唯一标识
    private String itemId;  //商品唯一标识Id
    private String itemName;    //图片名称
    private String picturePath; //图片路径地址
    private int classId;    //图片分类

    public Picture() {
    }

    public Picture(String itemId, String picturePath) {
        this.itemId = itemId;
        this.picturePath = picturePath;
    }

    public Picture(String itemId, String picturePath, int classId) {
        this.itemId = itemId;
        this.picturePath = picturePath;
        this.classId = classId;
    }

    public int getPictureId() {
        return pictureId;
    }

    public void setPictureId(int pictureId) {
        this.pictureId = pictureId;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
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
