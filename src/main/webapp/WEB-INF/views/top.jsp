<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/9/3
  Time: 上午10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<style>
    /*头部样式*/
    .head_nav {
        height: 30px;
        line-height: 30px;
        background-color: #e3e4e5;
    }

    .head_nav2 {
        position: relative;
        margin-left: 30px;
        margin-right: 30px;
    }

    .head_nav2 ul li {
        float: left;
        list-style: none;
    }

    .fl {
        padding-left: 15px;
        padding-right: 15px;
        float: left;
        margin-bottom: 0;
        color: #999999;
    }

    .fl li {
        padding: 0 5px;
    }

    .fl li a {
        color: #999999;
    }

    .fl li a:hover {
        color: #e4393c;
    }

    .fr {
        padding-left: 15px;
        padding-right: 15px;
        float: right;
        margin-bottom: 0;
    }

    .fr a {
        color: #999999;
    }

    .fr a:hover {
        color: #e4393c;
    }
</style>
<body>
<div class="head_nav">
    <div class="head_nav2">
        <ul class="fl">
            <li id="loginbar">你好，<a href="javascript:login()">请登录</a>&nbsp;
                <a href="javascript:register()">免费注册</a></li>
        </ul>
        <ul class="fr">
            <a href="">购物车</a>
        </ul>
    </div>
</div>
<script src="../../statics/js/base.js"></script>
<script src="../../statics/js/jquery-3.3.1.min.js"></script>
<script src="../../statics/js/js.cookie.js"></script>
<script>
    var TT = {
        checkLogin: function () {
            var _ticket = Cookies.get("LL_TOKEN");
            if (!_ticket) {
                return;
            }
            $.ajax({
                url: "http://localhost:8080/users/token/" + _ticket + ".action",
                dataType: "json",
                type: "GET",
                success: function (data) {
                    if (data.status == 200) {
                        var username = data.data.loginid;
                        var html = "<em style='font-style: normal;color:#e4393c;font-size: 16px;'>"
                            + username + "</em>" + "&nbsp;&nbsp;"
                            + "<a href=\"javascript:logout()\">退出</a>";
                        $("#loginbar").html(html);
                    }
                }
            });
        }
    };

    $(function () {
        // 查看是否已经登录，如果已经登录查询登录信息
        TT.checkLogin();
    });

    function logout() {
        $.ajax({
            url: "http://localhost:8080/users/logout.action",
            dataType: "json",
            success: function (data) {
                if (data.status == 200) {
                    $("#loginbar").html("");
                    location.reload();
                }
            }
        })
    }
</script>
</body>
</html>
