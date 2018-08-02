package com.ssm.maven.core.pojo;

import java.util.Date;

public class User {
    private int adminId;    //用户唯一标识
    private String loginId; //登录账号
    private String loginPwd;    //登录密码
    private Date loginTime; //登录时间

    public User() {
    }

    public User(String loginId, String loginPwd) {
        this.loginId = loginId;
        this.loginPwd = loginPwd;
    }

    public User(String loginId, String loginPwd, Date loginTime) {
        this.loginId = loginId;
        this.loginPwd = loginPwd;
        this.loginTime = loginTime;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getLoginId() {
        return loginId;
    }

    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }

    public String getLoginPwd() {
        return loginPwd;
    }

    public void setLoginPwd(String loginPwd) {
        this.loginPwd = loginPwd;
    }

    public Date getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    @Override
    public String toString() {
        return "User{" +
                "adminId=" + adminId +
                ", loginId='" + loginId + '\'' +
                ", loginPwd='" + loginPwd + '\'' +
                ", loginTime=" + loginTime +
                '}';
    }
}
