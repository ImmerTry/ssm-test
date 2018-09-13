<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/6/28
  Time: 上午8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>生鲜系统后台</title>
    <link rel="stylesheet" href="../../statics/css/side.css">
    <link rel="stylesheet" href="../../statics/css/iconfont.css">
    <link rel="stylesheet" href="../../statics/css/bootstrap.min.css">
</head>
<body>
<header>
    <div class="header">
        <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <span class="brand">系统后台管理</span>
                </div>
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><span class="admin">管理员</span></li>
                        <li class="dropdown">
                            ${currUser.loginId}
                            <span class="dropdown-toggle"><i class="caret"></i></span>
                            <ul class="dropdown-menu">
                                <li><a href="#">个人信息</a></li>
                                <li><a href="/page/adminLogin.action">切换账户</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="/user/out.action">退出</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<aside class="aside">
    <div class="menu_dropdown">
        <dl id="menu_items">
            <dt>
                <i class="Hui-iconfont">&#xe620;</i>
                商品管理
                <i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
            </dt>
            <dd>
                <ul>
                    <li>
                        <a href="/page/itemManage.action" target="iframe_show">商品管理</a>
                    </li>
                </ul>
            </dd>
        </dl>
        <dl id="menu_prouct">
            <dt>
                <i class="Hui-iconfont">&#xe6c6;</i>
                产品管理
                <i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
            </dt>
            <dd>
                <ul>
                    <li>
                        <a href="/page/productManage.action" target="iframe_show">产品管理</a>
                    </li>
                </ul>
            </dd>
        </dl>
        <dl id="menu_picture">
            <dt>
                <i class="Hui-iconfont">&#xe646;</i>
                图片管理
                <i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
            </dt>
            <dd>
                <ul>
                    <li>
                        <a href="/page/pictureManage.action" target="iframe_show">图片管理</a>
                    </li>
                </ul>
            </dd>
        </dl>
        <dl id="menu_order">
            <dt>
                <i class="Hui-iconfont">&#xe687;</i>
                订单管理
                <i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
            </dt>
            <dd>
                <ul>
                    <li>
                        <a href="#" target="iframe_show">订单管理</a>
                    </li>
                </ul>
            </dd>
        </dl>
        <dl id="menu_vip">
            <dt>
                <i class="Hui-iconfont">&#xe60d;</i>
                会员管理
                <i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
            </dt>
            <dd>
                <ul>
                    <li>
                        <a href="#" target="iframe_show">会员管理</a>
                    </li>
                </ul>
            </dd>
        </dl>
    </div>
</aside>
<div class="dislpayArrow">
    <a class="" href="javascript:void(0);" onclick="displaynavbar(this)"></a>
</div>
<section class="article_box">
    <div class="tabNav">
        <ol class="breadcrumb">
            <li>首页</li>
            <li>桌面</li>
        </ol>
    </div>
    <div id="iframe_box" class="article">
        <div class="show_iframe">
            <iframe scrolling="yes" frameborder="0" name="iframe_show" src="../../test.html"></iframe>
        </div>
    </div>
</section>
<script src="../../statics/js/jquery-3.3.1.min.js"></script>
<script>
    //左侧动态菜单下拉样式
    $(function () {
        $(".aside").Huifold({
            titCell: '.menu_dropdown dl dt',
            mainCell: '.menu_dropdown dl dd'
        });
    });
    //导航条下拉样式
    $(function () {
        $(".dropdown").hover(function () {
            $(this).addClass('open');
        },function () {
            $(this).removeClass('open');
        })
    });
    /* 左侧导航菜单收缩 */
    function displaynavbar(obj) {
        if ($(obj).hasClass("open")) {
            $(obj).removeClass("open");
            $("body").removeClass("big-page");
        } else {
            $(obj).addClass("open");
            $("body").addClass("big-page");
        }
    }
</script>
<!--左侧菜单动态下拉-->
<script src="../../statics/js/dropdown.js"></script>
<script src="../../statics/js/bootstrap.js"></script>
</body>
</html>
