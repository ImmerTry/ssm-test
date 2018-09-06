<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/8/18
  Time: 下午6:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>商品详情页面</title>
    <link rel="stylesheet" href="../../statics/layui/css/layui.css">
    <link rel="stylesheet" href="../../statics/css/product.css">
    <link rel="stylesheet" href="../../statics/css/selector.css">
</head>
<body>
<jsp:include page="top.jsp"/>
<div class="w">
    <div class="product">
        <div class="img-warpper">
            <div class="preview">
                <div id="spec-n1" class="jqzoom main-img" data-big="1">
                    <img id=bigImg src="../../statics/img/big37.jpg" width=350 height=350
                         jqimg="../../statics/img/big37.jpg">
                </div>
                <div id=spec>
                    <div id=specLeft class="control specLeftT"></div>
                    <div id=specList>
                        <ul class=listImg>
                            <li><img src="../../statics/img/small37.jpg" src_H="../../statics/img/main37.jpg"
                                     src_D="../../statics/img/big37.jpg">
                            </li>
                            <li><img src="../../statics/img/smalld8.jpg" src_H="../../statics/img/maind8.jpg"
                                     src_D="../../statics/img/bigd8.jpg">
                            </li>
                            <li><img src="../../statics/img/small32.jpg" src_H="../../statics/img/main32.jpg"
                                     src_D="../../statics/img/big32.jpg">
                            </li>
                            <li><img src="../../statics/img/small81.jpg" src_H="../../statics/img/main81.jpg"
                                     src_D="../../statics/img/big81.jpg">
                            </li>
                            <li><img src="../../statics/img/smallec.jpg" src_H="../../statics/img/mainec.jpg"
                                     src_D="../../statics/img/bigec.jpg">
                            </li>
                        </ul>
                    </div>
                    <div id=specRight class="control specRightT"></div>
                </div>
            </div>
            <div class="preview-info">
                <div class="left-btns">
                    <a class="follow J-follow" href="#none">
                        <i></i><em>关注</em>
                    </a>
                    <a class="share J-share" href="#none">
                        <i></i><em>分享</em>
                    </a>
                </div>
                <div class="right-btns">
                    <a class="report-btn" href="" target="_blank">
                        举报
                    </a>
                </div>
            </div>
        </div>
        <div class="itemInfo">
            <div class="sku-name">
                ${item.remark}
            </div>
            <div class="news">
                <div class="itemnews">
                    ${item.description}
                </div>
            </div>
            <div class="summary summary-first">
                <div class="summary-warp">
                    <div class="price">
                        <div class="dt">京 东 价</div>
                        <div class="dd">
                        <span class="p-price">
                            <span style="font-size: 16px;">￥</span>
                            <span style="font-size: 22px;">${item.price}</span>
                        </span>
                            <a class="notice" href="#none">降价通知</a>
                        </div>
                    </div>
                    <div class="count-info">
                        <div class="comment-count">
                            <p>累计评价</p>
                            <a class="count">97万+</a>
                        </div>
                    </div>
                    <div class="summary-quan">
                        <div class="dt">优 惠 券</div>
                        <div class="dd">
                            <dl class="dl">
                                <dd class="lh">
                                    <a>
                                    <span class="quan-item">
                                        <span class="text">满198减40</span>
                                    </span>
                                        <span class="quan-item">
                                        <span class="text">满199减60</span>
                                    </span>
                                    </a>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
            <div class="summary p-choose-wrap">
                <div class="summary-stock">
                    <div class="dt">配 送 至</div>
                    <div class="dd">
                        <div class="store">
                            <div id="store-selector">
                                <div class="address">
                                    <div></div>
                                    <b></b>
                                </div>
                                <div class="store-prompt">
                                    <strong>有货</strong>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="summary-weight">
                    <div class="dt">重　　量</div>
                    <div class="dd">1.47kg</div>
                </div>
                <div class="summary-line"></div>
                <div class="choose-attrs">
                    <div class="choose-attr-1">
                        <div class="dt">选择种类</div>
                        <div class="dd">
                            <div class="item">
                                <a href="#none" clstag="shangpin|keycount|product|yanse-越南红心巨无霸大果 2个">
                                    <img data-img="1"
                                         src="//img10.360buyimg.com/n9/s40x40_jfs/t3118/197/229364904/200600/37296076/57ab28ceNf76fe40f.jpg"
                                         width="40" height="40" alt="越南红心巨无霸大果 2个"><i>越南红心巨无霸大果 2个</i>
                                </a>
                            </div>
                            <div class="item">
                                <a href="#none" clstag="shangpin|keycount|product|yanse-越南红心大果 3个">
                                    <img data-img="1"
                                         src="//img14.360buyimg.com/n9/s40x40_jfs/t2605/152/4094328248/200600/37296076/57ab290aN34f76b37.jpg"
                                         width="40" height="40" alt="越南红心大果 3个"><i>越南红心大果 3个</i>
                                </a>
                            </div>
                            <div class="item">
                                <a href="#none" clstag="shangpin|keycount|product|yanse-越南红心中果3个">
                                    <img data-img="1"
                                         src="//img11.360buyimg.com/n9/s40x40_jfs/t24037/134/2174764297/566040/f02d6ec/5b7641a5N32002747.jpg"
                                         width="40" height="40" alt="越南红心中果3个"><i>越南红心中果3个</i>
                                </a>
                            </div>
                            <div class="item">
                                <a href="#none" clstag="shangpin|keycount|product|yanse-越南红心中果 4个">
                                    <img data-img="1"
                                         src="//img12.360buyimg.com/n9/s40x40_jfs/t15571/65/1426059721/535511/4bf0389b/5a51d14eNa115e050.jpg"
                                         width="40" height="40" alt="越南红心中果 4个"><i>越南红心中果 4个</i>
                                </a>
                            </div>
                            <div class="item">
                                <a href="#none" clstag="shangpin|keycount|product|yanse-越南白心巨无霸大果 3个">
                                    <img data-img="1"
                                         src="//img10.360buyimg.com/n9/s40x40_jfs/t18556/110/207186389/486134/171c1d37/5a62a509N2583a7bd.jpg"
                                         width="40" height="40" alt="越南白心巨无霸大果 3个"><i>越南白心巨无霸大果 3个</i>
                                </a>
                            </div>
                            <div class="item">
                                <a href="#none" clstag="shangpin|keycount|product|yanse-越南白心中果 4个">
                                    <img data-img="1"
                                         src="//img11.360buyimg.com/n9/s40x40_jfs/t18877/40/319533497/486134/171c1d37/5a6aa298N0dd3473a.jpg"
                                         width="40" height="40" alt="越南白心中果 4个"><i>越南白心中果 4个</i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="summary-line"></div>
                <div class="choose-btns">
                    <div class="input-wrapper">
                        <div class="left">
                            <a class="reduce">-</a>
                            <input type="text" value="1" class="num"/>
                            <a class="add">+</a>
                        </div>
                        <div class="right">
                            <button type="button" id="cart">加入购物车</button>
                        </div>
                    </div>
                </div>
                <div class="summary-tips">
                    <div class="dt">温馨提示</div>
                    <div class="dd">
                        <ol class="tips-list">
                            <li>·不支持7天无理由退货</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../../statics/js/jquery-3.3.1.min.js"></script>
<script src="../../statics/layui/layui.js"></script>
<script src="../../statics/js/city.js"></script>
<script src="../../statics/js/fangdajing.js"></script>
<script src="../../statics/js/jquery.jqzoom.js"></script>
<script src="../../statics/js/jquery.livequery.js"></script>
<script>
    //加的效果
    $(".add").click(function () {
        var n = $(this).prev().val();
        var num = parseInt(n) + 1;
        if (num == 0) {
            return;
        }
        $(this).prev().val(num);
    });
    //减的效果
    $(".reduce").click(function () {
        var n = $(this).next().val();
        var num = parseInt(n) - 1;
        if (num == 0) {
            return
        }
        $(this).next().val(num);
    });
    $('#cart').on('click', function () {
       $.ajax({
           url:"/cart/add.action",
           dataType:"json",
           success:function (data) {
               if (data.status == 200) {
                   location.href = "/page/addCart.action";
               }
           }
       })
    })

</script>

</body>
</html>
