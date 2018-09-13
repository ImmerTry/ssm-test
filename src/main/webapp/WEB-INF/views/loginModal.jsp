<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/6/25
  Time: 下午8:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登陆</title>
    <link rel="stylesheet" href="../../statics/css/bootstrap.min.css">
</head>
<body>
<!-- 触发模态弹出窗的元素 -->
<%--<button type="button" data-toggle="modal" data-target="#mymodal" class="btn btn-primary">点击</button>--%>
<div class="modal fade" id="mymodal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <div class="modal-title">
                    <h1 class="text-center text-primary" style="color:green">后台登录</h1>
                </div>
            </div>
            <div class="modal-body">
                <form class="form" id="loginForm" method="post" onsubmit="return false;">
                    <div class="form-group-lg" id="accountDiv">
                        <label class="sr-only" for="inputAccount">账号</label>
                        <div class="input-group">
                            <div class="input-group-addon"><!--添加字体插件-->
                                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                            </div>
                            <input class="form-control" id="inputAccount" name="loginId" type="text"
                                   placeholder="账号"
                                   required
                                   autofocus>
                        </div>
                        <div class="hidden text-center" id="accountMsg"><span
                                class="glyphicon glyphicon-exclamation-sign"></span>用户名不存在
                        </div>
                    </div>
                    <br>
                    <div class="form-group-lg" id="pwdDiv">
                        <label class="sr-only" for="inputPassword">密码</label>
                        <div class="input-group">
                            <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                            <input class="form-control" id="inputPassword" name="loginPwd" type="password"
                                   placeholder="密码"
                                   required>
                            <div class="input-group-addon"><span class="glyphicon glyphicon-eye-open"></span></div>
                        </div>
                        <div class="hidden text-center" id="pwdMsg"><span
                                class="glyphicon glyphicon-exclamation-sign"></span>用户名密码错误
                        </div>
                    </div>
                    <div class="checkbox">
                        <label> <input type="checkbox" value="remember-me">记住我</label>
                    </div>
                    <div class="text-right">
                        <%--<button class="btn btn-default btn-lg" id="btn_register" type="submit">注册</button>--%>
                        <button class="btn btn-primary btn-lg" id="btn_login">登录</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="../../statics/js/jquery-3.3.1.min.js"></script>
<script src="../../statics/js/bootstrap.js"></script>
<script>
    $(function () {
        $("#mymodal").modal({
            backdrop: false
        });
    });

    $("#btn_login").on('click',function () {
       // alert($("#loginForm").serialize());
        $.ajax({
            url:"/user/login.action",
            type:"post",
            dataType:"json",
            data:$("#loginForm").serialize(),
            success:function (data) {
               if (data.status == 200) {
                   location.href = "/page/admin.action";
                   alert(data.msg);
               } else {
                   alert(data.msg);
               }
            }
        })
    });

</script>
</body>
</html>
