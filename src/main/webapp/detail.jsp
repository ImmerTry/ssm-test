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
    <link rel="stylesheet" href="statics/css/goods.css">
    <link rel="stylesheet" href="statics/css/fangdajing.css">
</head>
<body>
<div class="main">
    <div class="w">
        <div class="product">
            <div class="img-warpper">
                <div id="preview">
                    <div class=jqzoom>
                        <img id=bigImg src="img/main-img1.jpg" width=350 height=350 jqimg="img/big1.jpg">
                    </div>
                    <div id=spec>
                        <div id=specLeft class="control specLeftT"></div>
                        <div id=specList>
                            <ul class=listImg>
                                <li><img src="img/list1.jpg" src_H="img/big1.jpg" src_D="img/main-img1.jpg"></li>
                                <li><img src="img/list2.jpg" src_H="img/big2.jpg" src_D="img/main-img2.jpg"></li>
                                <li><img src="img/list3.jpg" src_H="img/big3.jpg" src_D="img/main-img3.jpg"></li>
                                <li><img src="img/list4.jpg" src_H="img/big4.jpg" src_D="img/main-img4.jpg"></li>
                                <li><img src="img/list5.jpg" src_H="img/big5.jpg" src_D="img/main-img5.jpg"></li>
                                <li><img src="img/list7.jpg" src_H="img/big6.jpg" src_D="img/main-img6.jpg"></li>
                            </ul>
                        </div>
                        <div id=specRight class="control specRightT"></div>
                    </div>
                </div>
                <div class="bottom">
                    <div class="left">
                        <a href="#">
                            <i class="fa fa-heart"></i>
                            <span>关注</span>
                        </a>

                        <a href="#">
                            <i class="fa fa-share-alt"></i>
                            <span>分享</span>
                        </a>
                    </div>
                    <div class="right">
                        <a href="#">举报</a>
                    </div>
                </div>
            </div>
            <div class="msg-wrapper">
                <div class="name">【奥迪R8授权】贝瑞佳儿童电动车四轮摇摆双驱遥控电瓶车婴儿小孩玩具车可坐人汽车 红色2.4G双电双驱+全新中控+避震+独立摇摆</div>
                <div class="news">贝瑞佳官方旗舰店 满减 店庆狂欢 限量抢 再送店庆礼包!</div>
                <div class="middle">
                    <div class="msg">
                        <div class="price">
                            <div class="dt">京东价</div>
                            <div class="dd">
                                <span class="p-price"></span>
                                <a href="#">降价通知</a>
                            </div>
                            <div class="pj">
                                <p class="comment">累计评价</p>
                                <a class="num">10+</a>
                            </div>
                        </div>
                        <div class="cx">
                            <div class="left">促销</div>
                            <div class="right">
                                <div class="right-top">
                                    <a>换购</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="adress">
                    <div class="dz">配 送 至</div>
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
                </div>
                <div class="chose">
                    <div class="ys">
                        选择种类
                    </div>
                    <div class="type">
                        <div class="fl">
                            <a><img src="img/list1.jpg"/><span>越南红心巨无霸大果 2个</span></a>
                        </div>
                        <div class="fl">
                            <a><img src="img/list2.jpg"/><span>越南红心大果 3个</span></a>
                        </div>
                        <div class="fl">
                            <a><img src="img/list4.jpg"/><span>越南红心大果 3个</span></a>
                        </div>
                        <div class="fl">
                            <a><img src="img/list6.jpg"/><span>越南红心中果 4个</span></a>
                        </div>
                        <div class="fl">
                            <a><img src="img/list6.jpg"/><span>越南白心巨无霸大果 3个</span></a>
                        </div>
                        <div class="fl">
                            <a><img src="img/list6.jpg"/><span>越南白心中果 4个</span></a>
                        </div>
                    </div>
                </div>
                <div class="input-wrapper">
                    <div class="left">
                        <a class="reduce">-</a>
                        <input type="text" value="1" class="num"/>
                        <a class="add">+</a>
                    </div>
                    <div class="right">
                        <button type="button">加入购物车</button>
                    </div>
                </div>
                <div class="tishi">
                    <p>温馨提示 ·支持7天无理由退货</p>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="statics/js/jquery-3.3.1.min.js"></script>
<script src="statics/js/address.js"></script>
<script src="statics/js/jquery.livequery.js"></script>
<script src="statics/layui/layui.js"></script>
<script>
    layui.config({
        base: "statics/js/" //address.js的路径
    }).use(['layer', 'jquery', "address"], function () {
        var layer = layui.layer, $ = layui.jquery, address = layui.address();
    });
</script>
<script type=text/javascript>
    $(function () {
        /* 鼠标移动小图，小图对应大图显示在大图上，并替换放大镜中的图*/
        $("#specList ul li img").livequery("mouseover", function () {
            var imgSrc = $(this).attr("src");
            var i = imgSrc.lastIndexOf(".");
            var unit = imgSrc.substring(i);
            imgSrc = imgSrc.substring(0, i);
            var imgSrc_small = $(this).attr("src_D");
            var imgSrc_big = $(this).attr("src_H");
            $("#bigImg").attr({
                "src": imgSrc_small,
                "jqimg": imgSrc_big
            });
            $(this).css({
                "border": "2px solid #ff0000",
                "padding": "1px"
            });
        });

        $("#specList ul li img").livequery("mouseout", function () {
            $(this).css({
                "border": "1px solid #ddd",
                "padding": "2px"
            });
        });

//使用jqzoom
        $(".jqzoom").jqueryzoom({
            xzoom: 500, //放大图的宽度(默认是 200)
            yzoom: 400, //放大图的高度(默认是 200)
            offset: 10, //离原图的距离(默认是 10)
            position: "right", //放大图的定位(默认是"right")
            preload: 1
        });

        /*如果小图过多，则出现滚动条在一行展示*/
        var btnNext = $('#specRight');
        var btnPrev = $('#specLeft')
        var ul = btnPrev.next().find('ul');

        var len = ul.find('li').length;
        var i = 0;
        if (len > 5) {
            $("#specRight").addClass("specRightF").removeClass("specRightT");
            ul.css("width", 54 * len)
            btnNext.click(function (e) {
                if (i >= len - 5) {

                    return;
                }
                i++;
                if (i == len - 5) {
                    $("#specRight").addClass("specRightT").removeClass("specRightF");
                }
                $("#specLeft").addClass("specLeftF").removeClass("specLeftT");
                moveS(i);
            })
            btnPrev.click(function (e) {
                if (i <= 0) {
                    return;
                }
                i--;
                if (i == 0) {
                    $("#specLeft").addClass("specLeftT").removeClass("specLeftF");
                }
                $("#specRight").addClass("specRightF").removeClass("specRightT");
                moveS(i);
            })
        }

        function moveS(i) {
            ul.animate({
                left: -54 * i
            }, 500)
        }

        function picAuto() {
            if ($(".listImg li").size() <= 5) {
                $("#specLeft,#specRight").hide();
            }
        }

        picAuto();
    });
</script>
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
</script>

</body>
</html>
