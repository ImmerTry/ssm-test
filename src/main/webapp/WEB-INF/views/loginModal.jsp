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
<div class="modal show">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="text-center text-primary" style="color:green">登录</h1>
            </div>
            <div class="modal-body">
                <form class="form col-md-12" id="loginForm" action="${pageContext.request.contextPath}/user/login.action" method="post">
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
                    <div class="form-group">
                        <button class="btn btn-default btn-lg col-md-6" id="btn_register" type="submit">注册</button>
                        <button class="btn btn-primary btn-lg col-md-6" id="btn_login" type="submit">登录</button>
                    </div>
                </form>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../../statics/js/jquery-3.3.1.min.js"></script>
<script>
    /*跳转注册页面*/
</script>
<script src="../../statics/js/bootstrap.js"></script>
</body>
</html>
