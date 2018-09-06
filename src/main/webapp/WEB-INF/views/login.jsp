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
    <link rel="stylesheet" href="../../statics/layui/css/layui.css">
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .banner {
            height: 406px;
            position: relative;
            top: 90px;
            background: url("../../statics/images/banner.jpg") no-repeat;
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
    <form class="layui-form" id="loginForm" method="post"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
        <span id="error" class="error"></span>
        <div class="layui-form-item">
            <label class="layui-form-label">账号</label>
            <div class="layui-input-block">
                <input type="text" name="loginid" id="loginid" placeholder="请输入用户名" lay-verify="username"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-block">
                <input type="password" id="loginpwd" name="loginpwd" placeholder="请输入密码" lay-verify="password"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item" style="float: right;">
            <div class="layui-input-inline">
                <button class="layui-btn" lay-submit id="login" lay-filter="login">登录</button>
                <button class="layui-btn layui-btn-primary" type="reset">重置</button>
            </div>
        </div>
        <div class="layui-form-item register">
            还没账号？<a href="javascript:register()">立即注册</a>
        </div>
    </form>
</div>
<script src="../../statics/js/jquery-3.3.1.min.js"></script>
<script src="../../statics/layui/layui.js"></script>
<script src="../../statics/js/base.js"></script>
<script>
    <%--获取登录回调地址--%>
    var redirectUrl = "${redirect}";
    var LOGIN;
    layui.use(["form", "layer"], function () {
        var form = layui.form
            , layer = layui.layer;

    });
    LOGIN = {
        checkInput: function () {
            if ($("#loginid").val() == "") {
                layer.msg("用户名不能为空", {icon: 2});
                $("#loginid").focus();
                return false;
            }
            if ($("#loginpwd").val() == "") {
                layer.msg("密码不能为空", {icon: 2});
                $("#loginpwd").focus();
                return false;
            }
            return true;
        },
        doLogin: function () {
            $.post("/users/login.action", {
                loginid: $("#loginid").val(),
                loginpwd: $("#loginpwd").val()
            }, function (data) {
                if (data.status == 200) {
                    if (redirectUrl == "") {
                        layer.msg("登录成功!", {icon: 1});
                        location.href = "/page/index.action";
                    } else {
                        location.href = redirectUrl;
                    }
                } else {
                    layer.msg('登录失败!' + data.msg, {icon: 2});
                }
            });
        },
        login: function () {
            if (this.checkInput()) {
                this.doLogin();
            }
        }

    };
    $(function () {
        $("#login").on('click',function () {
            LOGIN.login();
        });
    });
</script>
</body>
</html>
