<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/6/28
  Time: 上午9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人注册</title>
    <link rel="stylesheet" href="../../statics/css/bootstrap.css">
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .header {
            height: 110px;
        }

        .header-center {
            padding: 0 30px;
            height: 76px;
        }

        hr {
            margin: 0;
        }

        .logo {
            margin-top: 24px;
            float: left;
            width: 160px;
            height: 50px;
            line-height: 50px;
            font-size: 30px;
        }

        .logo-title {
            float: left;
            height: 34px;
            line-height: 34px;
            font-size: 24px;
            color: #333;
            margin-top: 34px;
        }

        .header-context {
            font-size: 16px;
            float: right;
            margin-top: 55px;
            color: #999;
        }

        .header-context a {
            color: #e22;
        }

        .register {
            margin: 0 auto;
            width: 500px;
            position: relative;
            left: 30px;
            top: 60px;
        }

        #pass {
            position: relative;
            float: left;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="header-center">
        <div class="logo">
            <a href="/page/index.action">(*´▽｀)ノノ</a>
        </div>
        <div class="logo-title">
            欢迎注册
        </div>
        <div class="header-context">
            已有账号？<a href="javascript:login()">请登录></a>
        </div>
    </div>
</div>
<hr/>

<div class="form-horizontal register">
    <div class="form-group">
        <label class="col-lg-2 control-label" for="username">用户名</label>
        <div class="col-lg-4" style="height: 54px;">
            <input class="form-control" id="username" name="username" type="text"/>
            <span id="erro" class=""></span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-lg-2 control-label" for="password">密&nbsp;&nbsp;&nbsp;码</label>
        <div class="col-lg-4" style="height: 74px;">
            <input class="form-control" id="password" name="password" type="password"/>
            <span id="pass" class=""></span>
        </div>
        <div class="col-lg-5">
            <div class="btn-group" role="group">
                <button type="button" class="btn btn-success active">密文</button>
                <button type="button" class="btn btn-default">明文</button>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="col-lg-offset-2 col-lg-4" style="margin-top: -15px;">
            <button id="regist" class="btn btn-primary btn-block" type="button" onclick="REGISTER.reg()">注册</button>
        </div>
    </div>
</div>


<script src="../../statics/js/jquery-3.3.1.min.js"></script>
<script src="../../statics/js/bootstrap.js"></script>
<script src="../../statics/js/base.js"></script>
<script>
    /* 明文/密文 */
    $('.btn-group .btn:first').click(function () {
        $(this).removeClass('btn-default').addClass('btn-success active');
        $('.btn-group .btn:last').removeClass('btn-success active').addClass('btn-default');
        $('#password')[0].type = 'password';
    });

    $('.btn-group .btn:last').click(function () {
        $(this).removeClass('btn-default').addClass('btn-success active');
        $('.btn-group .btn:first').removeClass('btn-success active').addClass('btn-default');
        $('#password')[0].type = 'text';
    });
    /* 注册验证 */
    var REGISTER = {
        param: {
            //单点登录系统的url
            surl: ""
        },

        inputcheck: function () {
            //不能为空检查
            // 用户名验证
            $('#username').on('focus', function () {
                $(this).on('input', function () {
                    if (!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test($(this).val())) {
                        $(this).parents('.form-group').addClass('has-error');
                        $('#erro').text("用户名不能有特殊字符");
                    } else if (/(^\_)|(\__)|(\_+$)/.test($(this).val())) {
                        $(this).parents('.form-group').addClass('has-error');
                        $('#erro').text("用户名首尾不能出现下划线\'_\'");
                    } else if (/^\d+\d+\d$/.test($(this).val())) {
                        $(this).parents('.form-group').addClass('has-error');
                        $('#erro').text("用户名不能全为数字");
                    } else {
                        $(this).parents('.form-group').removeClass('has-error');
                        $('#erro').text("");
                    }
                });
            }).blur(function () {
                if ($(this).val().length == 0) {
                    $(this).parents('.form-group').addClass('has-error');
                    $('#erro').text("");
                }
            });
            // 密码验证
            $('#password').focus(function () {
                $(this).on('input', function () {
                    if (!/^[\S]{6,12}$/.test($(this).val())) {
                        $(this).parents('.form-group').addClass('has-error');
                        $('#pass').text("密码必须6到12位，且不能出现空格");
                    } else {
                        $(this).parents('.form-group').removeClass('has-error');
                        $('#pass').text("");
                    }
                });
            }).blur(function () {
                if ($(this).val().length == 0) {
                    $(this).parents('.form-group').addClass('has-error');
                    $('#pass').text("");
                }
            });
            return true;
        },
        beforeSubmit: function () {
            //检查用户是否已经被占用
            $.ajax({
                url: REGISTER.param.surl + "/users/check/" + encodeURI($("#username").val()) + "/1.action",
                success: function (data) {
                    if (data.data) {
                        REGISTER.doSubmit();
                    } else {
                        alert("此用户名已经被占用，请选择其他用户名")
                        // layer.msg("此用户名已经被占用，请选择其他用户名",{icon:2});
                        $("#username").select();
                    }
                }
            });

        },
        doSubmit: function () {
            $.post("/users/register.action", {
                loginid: $("#username").val(),
                loginpwd: $("#password").val()
            }, function (data) {
                if (data.status == 200) {
                    alert('用户注册成功，请登录！');
                    REGISTER.login();
                } else {
                    alert("注册失败！");
                }
            });
        },
        login:function() {
            location.href = "/page/login.action";
            return false;
        },
        reg: function () {
            if (this.inputcheck()) {
                this.beforeSubmit();
            }
        }

    }


    //提交验证
    // $("#regist").on('click', function () {
    //     if ($('.register .has-error').length > 0) {
    //         console.log($('.has-error'));
    //         return false;
    //     } else {
    //         // $(this).parents('form').submit();
    //         $.ajax({
    //             type: "post",
    //             url: "/user/regist.action",
    //             asyn: false,
    //             data: {
    //                 loginid: $("#username").val(),
    //                 loginpwd: $("#password").val()
    //             },
    //             dataType: "json",
    //             success: function (data) {
    //                 console.log(data);
    //                 if (data.status) {
    //                     window.location.href = "/page/login.action";
    //                 } else {
    //                     alert("注册失败");
    //                 }
    //             }
    //         });
    //     }
    //
    // });
</script>
</body>
</html>
