<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/9/8
  Time: 下午1:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品已成功加入购物车</title>
</head>
<style>
    a {
        text-decoration: none;
    }

    .success-cont {
        display: block;
        font-family: "Microsoft YaHei";
    }

    .success-lcol {
        float: left;
    }

    .success-top {
        position: relative;
        padding-left: 35px;
        margin: 20px 0;
    }

    h3 {
        font-size: 18px;
        line-height: 25px;
        font-weight: 400;
    }

    .ftx-02 {
        color: #71b247;
    }

    .btn-tobback {
        padding: 0 30px;
        margin-right: 10px;
        display: inline-block;
        height: 34px;
        line-height: 36px;
        font-size: 16px;

        background: #fff;
        color: #e4393c;
        border: 1px solid #fff;
    }

    .btn-addtocart {
        display: inline-block;
        height: 34px;
        line-height: 36px;
        font-size: 16px;
        position: relative;
        width: 136px;
        padding-left: 30px;
        background: #e4393c;
        border: 1px solid #e4393c;
        color: #fff;
    }

    .success-wrap {
        height: 145px;
        background: #f5f5f5;
        margin-bottom: 20px;
    }

    .w {
        width: 1210px;
        margin: 0 auto;
    }
    .success-lcol{
        float: left;
    }
    .success-btns {
        float: right;
        font-size: 0;
        overflow: hidden;
    }
    .success-ad {
        float: right;
        height: 70px;
        width: 106px;
        margin: 10px 0;
    }
    .clr {
        display: block;
        overflow: hidden;
        clear: both;
        height: 0;
        line-height: 0;
        font-size: 0;
    }
</style>
<body>
<div class="success-wrap">
    <div class="w">
        <div class="mc success-cont">
            <div class="success-lcol">
                <div class="success-top"><b class=""></b>
                    <h3 class="ftx-02">商品已成功加入购物车！</h3>
                </div>
            </div>
            <div class="success-btns success-btns-new">
                <div class="success-ad"><a href="#none"></a></div>
                <div class="clr"></div>
                <div>
                    <a class="btn-tobback" href="#" onclick="window.history.back();return false;">查看商品详情</a>
                    <a class="btn-addtocart" href="/cart/cart.action" id="GotoShoppingCart"><b></b>去购物车结算</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
</script>
</html>
