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
    <title>生鲜</title>
    <link rel="stylesheet" href="statics/css/bootstrap.css">
    <link rel="stylesheet" href="statics/layui/css/layui.css">
    <link rel="stylesheet" href="statics/css/index.css">
</head>
<body>
<div class="head_nav">
    <div class="head_nav2">
        <ul class="fl">
            <li>
                <a href="login.jsp">登录</a>
            </li>
            <li>
                <a href="regist.jsp">注册</a>
            </li>
        </ul>
        <ul class="fr">
            <a href="">购物车</a>
        </ul>
    </div>
</div>
<div class="container">
    <div class="nav_left_title">生鲜商品分类</div>
    <div class="nav_left">
        <div class="nav_item_fruit">
            <div class="item_head">
                <div class="item_title">

                </div>
                <ul class="fruit_menu">
                    <li>
                        <div>
                            <a href="#">苹果</a>
                            <a href="#">葡萄/提子</a>
                            <a href="#">奇异果/猕猴桃</a>
                        </div>
                    </li>
                </ul>
                <div class="fruit_children">
                    <a href="#">芒果</a>
                    <a href="#">榴莲</a>
                    <a href="#">车厘子</a>
                </div>
            </div>
        </div>
        <div class="nav_item_seafood">
            <div class="item_head">
                <div class="item_title">

                </div>
                <ul class="seafood_menu">
                    <li>
                        <div>
                            <a href="#">三文鱼</a>
                            <a href="#">鳕鱼</a>
                            <a href="#">带鱼</a>
                        </div>
                    </li>
                </ul>
                <div class="fruit_children">
                    <a href="#">鱼类</a>
                    <a href="#">贝类</a>
                    <a href="#">小龙虾</a>
                </div>
            </div>
        </div>
        <div class="nav_item_meat">
            <div class="item_head">
                <div class="item_title">

                </div>
                <ul class="meat_menu">
                    <li>
                        <div>
                            <a href="#">肋排</a>
                            <a href="#">猪蹄</a>
                            <a href="#">五花肉</a>
                        </div>
                    </li>
                </ul>
                <div class="fruit_children">
                    <a href="#">鸡翅</a>
                    <a href="#">牛排</a>
                    <a href="#">猪肋排</a>
                </div>
            </div>
        </div>
        <div class="nav_item_freezing">
            <div class="item_head">
                <div class="item_title">

                </div>
                <ul class="freezing_menu">
                    <li>
                        <div>
                            <a href="#">水饺</a>
                            <a href="#">云吞</a>
                            <a href="#">汤圆/元宵</a>
                        </div>
                    </li>
                </ul>
                <div class="fruit_children">
                    <a href="#">牛奶</a>
                    <a href="#">酸奶</a>
                    <a href="#">冰淇淋</a>
                </div>
            </div>
        </div>
        <div class="nav_item_vegetables">
            <div class="item_head">
                <div class="item_title">
                </div>
                    <ul class="vegetables_menu">
                        <li>
                            <div>
                                <a href="#">菠菜</a>
                                <a href="#">菜心</a>
                                <a href="#">西兰花</a>
                            </div>
                        </li>
                    </ul>
                    <div class="fruit_children">
                        <a href="#">山药</a>
                        <a href="#">玉米</a>
                        <a href="#">鹌鹑蛋</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="broadcast">
            <div class="layui-carousel" id="test10">
                <div carousel-item="">
                    <div><img src="statics/images/p1.jpg"></div>
                    <div><img src="statics/images/p2.jpg"></div>
                    <div><img src="statics/images/p3.jpg"></div>
                    <div><img src="statics/images/p4.jpg"></div>
                </div>
            </div>
        </div>
        <div class="news">
            <div class="news_top">
                <div class="news_header">
                    <span>(*´▽｀)ノノ头条</span>
                </div>
                <div class="news_context">
                    <a href="#">遍寻天下鲜招募吃货小分队</a>
                    <a href="#">0元试吃 全新上线 抓紧尝鲜</a>
                    <a href="#">一键立享 用心做顿好饭</a>
                </div>
            </div>
            <div class="news_img">
                <img src="//img10.360buyimg.com/babel/jfs/t23338/45/1104080851/63144/b59d20fb/5b51aa80N3a14cd89.png!q80.webp">
            </div>
        </div>
    </div>
    <script src="statics/js/jquery-3.3.1.min.js"></script>
    <script src="statics/js/bootstrap.js"></script>
    <script src="statics/layui/layui.js"></script>
    <script src="statics/js/index.js"></script>
    <script>
        $.ajax({
            url: '/cla/show.action',
            type: 'post',
            dataType: 'json',
            success: function (data) {

                var claList = data.claLists;

                $.each(claList, function (index, cla) {
                    var str = "<a class='show_item' target='_blank' href='/item/showFruit.action?classId=" + cla.classId + "'>"
                        + cla.className
                        + "<span>></span>"
                        + "</a>";
                   $(".item_title")[index].innerHTML=str;
                });

            }
        })
    </script>
</body>
</html>
