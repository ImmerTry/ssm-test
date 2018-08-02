/**
 * 首页左侧商品信息栏js
 */

$(function () {
    $(".nav_item_fruit").hover(function () {
        $(".fruit_menu").show();
    }, function () {
        $(".fruit_menu").hide();
    });

    $(".nav_item_seafood").hover(function () {
        $(".seafood_menu").show();
    }, function () {
        $(".seafood_menu").hide();
    });
    $(".nav_item_meat").hover(function () {
        $(".meat_menu").show();
    }, function () {
        $(".meat_menu").hide();
    });

    $(".nav_item_freezing").hover(function () {
        $(".freezing_menu").show();
    }, function () {
        $(".freezing_menu").hide();
    });

    $(".nav_item_vegetables").hover(function () {
        $(".vegetables_menu").show();
    }, function () {
        $(".vegetables_menu").hide();
    });

    $(".fruit_menu").hover(function () {
        $(this).show();
    });

    $(".seafood_menu").hover(function () {
        $(this).show();
    });
    $(".meat_menu").hover(function () {
        $(this).show();
    });
    $(".freezing_menu").hover(function () {
        $(this).show();
    });
    $(".vegetables_menu").hover(function () {
        $(this).show();
    });

    layui.use('carousel', function () {
        var carousel = layui.carousel;

        //图片轮播
        carousel.render({
            elem: '#test10'
            , width: '800px'
            , height: '400px'
            , interval: 5000
        });
    });

});