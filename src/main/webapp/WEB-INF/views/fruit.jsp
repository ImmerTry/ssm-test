<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/7/2
  Time: 下午6:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="base.jsp" %>
<html>
<head>
    <title> 水果 生鲜【行情 价格 评价 图片】</title>
    <link href="/statics/css/bootstrap.css" rel="stylesheet">
    <link href="/statics/css/fruit.css" rel="stylesheet">
</head>
<body>
<jsp:include page="top.jsp"/>
<div class="container">
    <c:choose>
        <c:when test="${empty itemList}">
            <h1 style="text-align: center">页面没有数据</h1>
        </c:when>
        <c:otherwise>
            <h3><a href="index.jsp">生鲜</a>>水果</h3>
            <div class="row">
                <c:forEach items="${itemList}" var="item">
                    <input type="hidden" name="itemId" value="${item.itemId}">
                    <div class="col-lg-2.4 col-md-3">
                        <ul>
                            <li>
                                <div class="item_picture">
                                    <a class="img" target="_blank" href="/item/detail/${item.itemId}.action"
                                       title="长在树上的“矿泉水”  两粒尝鲜装】自营团队泰国“定制”优质产地 ，附带开椰器和吸管【苛求新鲜美味 我们不一样】只挑“适龄椰青”，汁更香甜肉更细嫩，清晨采摘急速冷藏只为更鲜！自营泰国金枕榴莲卖爆了！">
                                    </a>
                                </div>
                                <div class="item_price">
                                    <strong>
                                        <em>￥</em>
                                        <i>${item.price}</i>
                                    </strong>
                                </div>
                                <div class="item_pname">
                                    <a href="#"
                                       title="长在树上的“矿泉水”  两粒尝鲜装】自营团队泰国“定制”优质产地 ，附带开椰器和吸管【苛求新鲜美味 我们不一样】只挑“适龄椰青”，汁更香甜肉更细嫩，清晨采摘急速冷藏只为更鲜！自营泰国金枕榴莲卖爆了！">
                                        <em>${item.remark}</em>
                                        <i class="item_remark">${item.description}</i>
                                    </a>
                                </div>
                                <div class="item_cart">
                                    <a class="contrast" href="#">
                                        <i></i>对比
                                    </a>
                                    <a class="follow" href="#">
                                        <i></i>关注</a>
                                    <a class="cart" href="#">
                                        <i></i>加入购物车</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>
</div>
<script src="/statics/js/jquery-3.3.1.min.js"></script>
<script src="/statics/js/bootstrap.js"></script>
<script type="text/javascript">
    var str = "";
    $(" input[ name='itemId' ] ").each(function (index) {

        var itemId = $(this).val();
        $.ajax({
            url: '/picture/selectPic.action',
            type: 'post',
            data: {
                itemId: itemId
            },
            success: function (data) {
                $.each(data, function (index) {
                    var picturePath = data[index]['picturePath'].split(',')[0];
                    str = "<img src='${ctx}/" + picturePath + "' />";
                });
                $('.img')[index].innerHTML = str;
            }
        });
    })
</script>
</body>
</html>
