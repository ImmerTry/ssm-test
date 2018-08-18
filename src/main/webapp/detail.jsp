<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/8/18
  Time: 下午6:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情页面</title>
    <link rel="stylesheet" href="statics/layui/css/layui.css">
</head>
<body>
<div class="layui-form">
    <div class="layui-form-item">
        <div class="layui-input-inline">
            <select name="province" lay-filter="province" class="province">
                <option value="">请选择省</option>
            </select>
        </div>
        <div class="layui-input-inline">
            <select name="city" lay-filter="city" disabled>
                <option value="">请选择市</option>
            </select>
        </div>
        <div class="layui-input-inline">
            <select name="area" lay-filter="area" disabled>
                <option value="">请选择县/区</option>
            </select>
        </div>
    </div>
</div>
<script src="statics/js/jquery-3.3.1.min.js"></script>
<script src="statics/js/address.js"></script>
<script src="statics/layui/layui.js"></script>
<script>
    layui.config({
        base: "statics/js/" //address.js的路径
    }).use(['layer', 'jquery', "address"], function () {
        var layer = layui.layer, $ = layui.jquery, address = layui.address();
    });
</script>
</body>
</html>
