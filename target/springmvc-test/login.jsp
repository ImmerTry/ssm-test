<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/7/27
  Time: 下午4:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户登录</title>
    <link rel="stylesheet" href="statics/layui/css/layui.css">
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .banner {
            height: 406px;
            position: relative;
            top: 90px;
            background: url("statics/images/banner.jpg") no-repeat;
            background-size: cover;
        }

        .layui-form {
            width: 320px;
            height: 206px;
            background-color: rgba(255, 255, 255, 0.1);
            position: relative;
            left: 470px;
            top: 100px;
        }

        .layui-form-item {
            position: relative;
            top: 20px;
            right: 15px;
        }

        .layui-btn {
            width: 68px;
            height: 33px;
            line-height: 33px;
        }

        .register {
            float: right;
            font-size: 14px;
            color: #333333;
        }

        .register a {
            /*color: #b61d1d;*/
            color: #ffffff;
        }

        .register a:hover {
            color: #b61d1d;
        }

        .error {
            position: absolute;
            background: rgba(255, 255, 255, 0.3);
            color: #e4393c;
            display: none;
            width: 320px;
            height: 20px;
            line-height: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="banner">
    <div class="layui-form" id="loginForm"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
        <span id="error" class="error"></span>
        <div class="layui-form-item">
            <label class="layui-form-label">账号</label>
            <div class="layui-input-inline">
                <input type="text" id="loginid" placeholder="请输入用户名" lay-verify="username" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="password" id="loginpwd" placeholder="请输入密码" lay-verify="password" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item" style="float: right;">
            <div class="layui-input-inline">
                <button class="layui-btn" lay-submit id="login">登录</button>
                <button class="layui-btn layui-btn-primary" id="reset">重置</button>
            </div>
        </div>
        <div class="layui-form-item register">
            还没账号？<a href="regist.jsp">立即注册</a>
        </div>
    </div>
</div>
<script src="statics/js/jquery-3.3.1.min.js"></script>
<script src="statics/layui/layui.js"></script>
<script>
    layui.use('form', function () {
        var form = layui.form;

        form.verify({
            username: function (value, item) { //value：表单的值、item：表单的DOM对象
                if (!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)) {
                    return '用户名不能有特殊字符';
                }
                if (/(^\_)|(\__)|(\_+$)/.test(value)) {
                    return '用户名首尾不能出现下划线\'_\'';
                }
                if (/^\d+\d+\d$/.test(value)) {
                    return '用户名不能全为数字';
                }
            }, password: [
                /^[\S]{6,12}$/
                , '密码必须6到12位，且不能出现空格'
            ]
        });
    });

    $("#login").click(function () {
        $.ajax({
            type: "post",
            url: "/user/login.action",
            dataType: "json",
            data: {
                loginid: $("#loginid").val(),
                loginpwd: $("#loginpwd").val()
            },
            success: function (data) {
                console.log(data);
                if (data.status == 0) {
                    window.location.href = "/user/admin.action"
                } else if (data.status == 1) {
                    window.location.href = "index.jsp"
                }
                if (data.msg != "" && data.msg != null) {
                    $("#error").text(data.msg);
                    $("#error").show();
                } else {
                    $("#error").hide();
                }
            }

        });
    });
    $("#reset").click(function () {
        $("#loginid").val("");
        $("#loginpwd").val("");
    });
</script>
</body>
</html>
