package com.ssm.maven.core.pojo;

public class Classification {
    private int classId;   //分类唯一标识
    private String className;  //分类名称
    private String viewKeyword; //搜索关键字

    public Classification() {
    }

    public Classification(int classId, String className, String viewKeyword) {
        this.classId = classId;
        this.className = className;
        this.viewKeyword = viewKeyword;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getViewKeyword() {
        return viewKeyword;
    }

    public void setViewKeyword(String viewKeyword) {
        this.viewKeyword = viewKeyword;
    }

    @Override
    public String toString() {
        return "Classification{" +
                "classId=" + classId +
                ", className='" + className + '\'' +
                ", viewKeyword='" + viewKeyword + '\'' +
                '}';
    }
}
