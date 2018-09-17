<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/9/14
  Time: 下午6:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>订单结算页</title>
    <link rel="stylesheet" href="/statics/css/order.css">
    <link rel="stylesheet" href="/statics/css/ui.css">
    <link rel="stylesheet" href="/statics/css/bankList.css">
</head>
<body>
<jsp:include page="top.jsp"/>
<div class="w w1 header clearfix">
    <div id="logo">
        <a href="http://localhost:8101/" class="link1" target="_blank"><img
                src="" alt=""></a>
        <a href="#none" class="link2"><b></b>"结算页"</a>
    </div>
    <div class="stepflex" id="#sflex03">
        <dl class="first done">
            <dt class="s-num">1</dt>
            <dd class="s-text">1.我的购物车<s></s><b></b></dd>
        </dl>
        <dl class="normal doing">
            <dt class="s-num">2</dt>
            <dd class="s-text">2.填写核对订单信息<s></s><b></b></dd>
        </dl>
        <dl class="normal last">
            <dt class="s-num">3</dt>
            <dd class="s-text">3.成功提交订单<s></s><b></b></dd>
        </dl>
    </div>
</div>

<!-- /header -->
<div id="container">
    <div id="content" class="w">
        <!-- <div class="m"> -->
        <div class="checkout-tit">
            <span class="tit-txt">填写并核对订单信息</span>
        </div>
        <!--<div class="mc">-->
        <form id="gotoPay" method='post' action='/order/create.action'>

            <input type="hidden" name="paymentType" value="1"/>
            <c:forEach items="${cartList }" var="cart" varStatus="status">
                <c:set var="totalPrice" value="${ totalPrice + (cart.price * cart.num)}"/>
                <input type="hidden" name="orderInfos[${status.index}].itemid" value="${cart.id}"/>
                <input type="hidden" name="orderInfos[${status.index}].count" value="${cart.num }"/>
                <input type="hidden" name="orderInfos[${status.index}].price" value="${cart.price}"/>
                <input type="hidden" name="orderInfos[${status.index}].amount" value="${cart.price * cart.num}"/>
                <input type="hidden" name="orderInfos[${status.index}].itemname" value="${cart.title}"/>
                <input type="hidden" name="orderInfos[${status.index}].picturepath" value="${cart.image}"/>
            </c:forEach>
            <input type="hidden" name="payment" value="<fmt:formatNumber value="${totalPrice}"/>"/>
            <input type="hidden" name="orderSend.sendname" value=""/>
            <input type="hidden" name="orderSend.phoneno" value=""/>
            <input type="hidden" name="orderSend.province" value=""/>
            <input type="hidden" name="orderSend.receiverCity" value=""/>
            <input type="hidden" name="orderSend.city" value=""/>
            <input type="hidden" name="orderSend.address" value=""/>
        </form>
        <div class="checkout-steps">
            <!-- /widget/consignee-step/consignee-step.tpl -->
            <div class="step-tit">
                <h3>收货人信息</h3>
                <div class="extra-r">
                    <a href="#none" class="ftx-05" onclick="use_NewConsignee()">新增收货地址</a>
                    <input id="del_consignee_type" value="1" type="hidden">
                </div>
            </div>
            <div class="step-cont">
                <div id="consignee-addr" class="consignee-content">
                    <div class="consignee-scrollbar">
                        <div class="ui-scrollbar-main">
                            <div class="consignee-scroll">
                                <div class="consignee-cont" id="consignee1" style="height: 84px;">
                                    <ul id="consignee-list">

                                        <li class="ui-switchable-panel" style="display: list-item;"
                                            id="consignee_index_138538020">
                                            <div class="consignee-item item-selected" name="consignee"
                                                 id="consignee-item1" onclick="receiverName('1')">
                                                <span limit="8">刘磊</span><b></b></div>
                                            <div class="addr-detail"><span class="addr-name" limit="6">刘磊</span><span
                                                    class="addr-info" limit="45">安徽 合肥市 瑶海区 新华电脑专修学院 5136</span><span
                                                    class="addr-tel">150****0527</span></div>
                                        </li>
                                        <li class="ui-switchable-panel ui-switchable-panel-selected"
                                            style="display: list-item;" id="consignee_index_138065578"
                                            selected="selected">
                                            <div class="consignee-item" name="consignee" id="consignee-item2"
                                                 onclick="receiverName('2')">
                                                <span limit="8">刘磊</span><b></b>
                                            </div>
                                            <div class="addr-detail">
                                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                                <span class="addr-name" limit="6">刘磊</span>
                                                <span class="addr-info" limit="45">安徽 合肥市 瑶海区 新华电脑专修学院 5136</span>
                                                <span class="addr-tel">150****0527</span>
                                            </div>
                                        </li>
                                        <!---->
                                        <input id="hidden_consignees_size" value="4" style="display: none;"
                                               type="hidden">
                                        <li class="ui-switchable-panel ui-switchable-panel-selected"
                                            style="display: list-item;">
                                            <div class="consignee-item" consigneeid="138043668" provinceid="12"
                                                 cityid="959">
                                                <span limit="8">刘磊</span><b></b>
                                            </div>
                                            <div class="addr-detail">
                                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                                <span class="addr-name" limit="6">刘磊</span>
                                                <span class="addr-info" limit="45">安徽 合肥市 瑶海区 新华电脑专修学院 5136</span>
                                                <span class="addr-tel">150****0527</span>
                                            </div>

                                        </li>
                                        <li class="ui-switchable-panel ui-switchable-panel-selected"
                                            style="display: list-item;" id="consignee_index_138043668">
                                            <div class="consignee-item" consigneeid="138043668" provinceid="12"
                                                 cityid="959">
                                                <span limit="8">刘磊</span><b></b>
                                            </div>
                                            <div class="addr-detail">
                                                <!--yanwenqi 全球购添加idcard 不是国际购的要不要显示？ -->
                                                <span class="addr-name" limit="6">刘磊</span>
                                                <span class="addr-info" limit="45">安徽 合肥市 瑶海区 新华电脑专修学院 5136</span>
                                                <span class="addr-tel">150****0527</span>
                                            </div>

                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="addr-switch switch-on" id="consigneeItemAllClick" onclick="show_ConsigneeAll()">
                    <span>更多地址</span><b></b>
                </div>
                <div class="addr-switch switch-off hide" id="consigneeItemHideClick" onclick="hide_ConsigneeAll()">
                    <span>收起地址</span><b></b>
                </div>
                <!--end-->

                <input id="consigneeList_giftSenderConsigneeMobile" value="" type="hidden">
                <input id="consigneeList_giftSenderConsigneeName" value="" type="hidden">
            </div>
            <!--/ /widget/consignee-step/consignee-step.tpl -->
            <div class="hr"></div>
            <!--/ /widget/shopping-list/shopping-list.tpl -->
            <div id="shipAndSkuInfo">
                <div id="payShipAndSkuInfo">
                    <div class="step-tit">
                        <h3>支付方式</h3>
                    </div>
                    <div class="step-cont">
                        <div class="payment-list" id="">
                            <div class="list-cont">
                                <ul id="payment-list">
                                    <input id="instalmentPlan" value="false" type="hidden">

                                    <li style="cursor: pointer;" onclick="paymentType('1')">
                                        <div class=" payment-item item-selected online-payment " name="paymentType"
                                             id="paymentType1"
                                             for="pay-method-1"
                                             payname="货到付款" payid="1" onlinepaytype="0"><b></b>
                                            货到付款
                                        </div>
                                    </li>
                                    <li style="cursor: pointer;" name="paymentType" onclick="paymentType('2')">
                                        <div class=" payment-item  online-payment " name="paymentType" id="paymentType2"
                                             for="pay-method-4"
                                             payname="在线支付"
                                             payid="2" onlinepaytype="1"><b></b>在线支付
                                        </div>
                                    </li>

                                    <li style="cursor: pointer;" name="paymentType" onclick="paymentType('3')">
                                        <div class=" payment-item  online-payment " name="paymentType" id="paymentType3"
                                             for="pay-method-4"
                                             payname="微信支付"
                                             payid="3" onlinepaytype="2"><b></b>
                                            微信支付
                                        </div>
                                    </li>

                                    <li style="cursor: pointer;" name="paymentType" onclick="paymentType('4')">
                                        <div class="payment-item  online-payment" name="paymentType" id="paymentType4"
                                             for="pay-method-4"
                                             payname="支付宝支付"
                                             payid="4" onlinepaytype="3"><b></b>
                                            支付宝支付
                                        </div>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="hr"></div>
                    <!--/ /widget/payment-step/payment-step.tpl -->
                    <div class="step-cont" id="skuPayAndShipment-cont">
                        <!--添加商品清单 zhuqingjie -->
                        <div class="shopping-lists" id="shopping-lists">
                            <div class="shopping-list ABTest">
                                <div class="goods-list">

                                    <div class="goods-tit">
                                        <h4 class="vendor_name_h">商家：自营</h4>
                                    </div>
                                    <div class="goods-items"></div>

                                    <div class="goods-items">
                                        <div class="goods-suit goods-last">
                                            <div class="goods-suit-tit">
                                                <span class="sales-icon">换购</span>
                                                <strong>
                                                    已购满300.00元
                                                    ，再加45.00元，可返回购物车领取赠品
                                                </strong>
                                            </div>
                                            <c:forEach items="${cartList}" var="c">
                                                <c:set var="num" value="${c.num}"/>
                                                <div class="goods-item goods-item-extra" goods-id="${c.id}" sx-type="0">
                                                    <div class="p-img">
                                                        <a target="_blank"
                                                           href="#"><img
                                                                src="${c.image}"
                                                                alt=""></a>
                                                    </div>
                                                    <div class="goods-msg">
                                                        <div class="goods-msg-gel">
                                                            <div class="p-name">
                                                                <a href="#"
                                                                   target="_blank">${c.title}</a>
                                                            </div>
                                                            <div class="p-price">
                                                                <strong class="jd-price">￥${c.price}
                                                                </strong>
                                                                <!--增加预售金额显示 end-->
                                                                <span class="p-num">x${c.num}</span>
                                                                <span id="pre-state" class="p-state"
                                                                      skuid="${c.id}">有货</span>
                                                                <span class="p-weight">0.475 kg</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <i class="p-icon p-icon-w sevenicon"></i><span
                                                            class="ftx-04 withouthk seven">7天无理由退货</span>
                                                    </div>

                                                    <div class="clr"></div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <!--满赠套装结束-->
                                    <!-- 买家版运费险 -->
                                    <div class="hide service-items ml20 mr20" style="display: block;">
                                        <div class="hide service-item" id="vender_freight_insurance_0"
                                             style="display: block;">
                                            <div class="hr"></div>
                                            <span class="service-desc">退换无忧</span>
                                            <strong class="service-price" id="no_annoyance">￥0.00</strong>
                                        </div>
                                    </div>
                                </div><!--goods-list 结束-->
                                <div class="dis-modes">
                                    <div class="mode-item mode-tab">
                                        <div class="mode-item-tit">
                                            <h4>配送方式</h4>
                                            <div class="extral-r"><a id="jd-goods-item" class="cor-goods"
                                                                     href="#none"><i></i>对应商品</a></div>
                                        </div>
                                        <div class="mode-tab-nav">
                                            <ul>
                                                <li class="mode-tab-item curr" id="jd_shipment_item"
                                                    onclick="doSwithTab('pay')">
                                                    <span id="jdShip-span-tip" class="m-txt">顺丰速运
                                                        <i class="qmark-icon qmark-tip"
                                                           data-tips="此订单支持预约配送，您可以选择指定的时间段"></i>
                                                    </span>
                                                    <b></b>
                                                </li>
                                                <li class="mode-tab-item hide" id="pick_shipment_item"
                                                    onclick="doSwithTab('picksite')">

                                                    <span class="m-txt">上门自提
                                                        <i class="qmark-icon qmark-tip"
                                                           data-tips="自提时付款，支持现金、POS刷卡、支票支付&lt;a href='#' target='_blank' class='ftx-05'&gt;查看自提流程&lt;/a&gt;">
                                                        </i>
                                                    </span>
                                                    <b></b>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="mode-tab-con ui-switchable-panel-selected" id="jd_shipment">
                                            <ul class="mode-list">
                                                <li>
                                                    <div class="fore1" id="payment_name_div"><span
                                                            class="ftx-03">付款方式：</span>现金
                                                    </div>
                                                    <div class="fore2" onclick="doEditPayway('0')">
                                                        <a href="#none" class="ftx-05 payment-edit">修改</a>
                                                    </div>
                                                </li>

                                                <li class="delivery-info-li-none-border">
                                                    <div class="fore1" id="jd_shipment_calendar_date"><span
                                                            class="mode-label ftx-03">标&nbsp;&nbsp;准&nbsp;&nbsp;达：</span>
                                                        <div class="mode-infor">预计&nbsp;9月17日[周一]&nbsp;09:00-15:00&nbsp;送达</div>
                                                    </div>
                                                    <div class="fore2" id="jdshipdate_eidt_id"
                                                         onclick="doEdit311Time()">
                                                        <a href="#none" class="ftx-05">修改</a>
                                                    </div>
                                                </li>
                                                <li class="delivery-info-li" id="delivery-info-li-zxj">
                                                    <span class="delivery-tips fr">
                                                        <i class="d-ico fl mr5"></i> <i class="d-arr"></i>
                                                        <a id="zxj_show_id" href="#none" class="mr5"
                                                           onclick="doEdit311Time(3)">京准达</a>
                                                        <a id="311_show_id" href="#none" class="mr5"
                                                           onclick="doEdit311Time(1)">标准达</a>
                                                        <a id="411_show_id" href="#none" class="mr5 hide"
                                                           onclick="doEdit311Time(2)">极速达</a>配送服务全面升级
                                                    </span>
                                                </li>
                                                <li class="buyer_insurance hide" style="display: block;">
                                                    <div class="foreAll">
                                                        <span class="mode-label ftx-03">退换无忧：</span>
                                                        <div class="mode-infor J-mode-infor-tips">
                                                            <label>
                                                                <input id="vender" class="fl buyer_freight_insurance"
                                                                       onclick="selectBuyerFreightInsurance()"
                                                                       type="checkbox">
                                                                <span class="fl mode-infor-con buyer_insurance">15天内退换，可享1次上门取件<i
                                                                        class="arrow-down"></i></span>
                                                                <em class="fr" id="no_annoyance_price"
                                                                    value="5">￥0.50</em>
                                                                <span class="mode-infor-tips mode-infor-tips-sec"
                                                                      style="display: none;"><i id="0"
                                                                                                class="d-arr d-arr-jd"></i>
                                                                    自签收后15天内退换货，可享1次上门取件服务，此服务不再单独收费。
                                                                    <a target="_blank" href="#">查看详情</a></span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="tips-618 hide tips-618-for-normal" style="z-index:9">
                                                <div class="tips-con">
                                                    <i>&nbsp;</i>
                                                    <p class="tips-m">
                                                        双11大促恰逢周末，请确认好收货地址和时间以保证货物及时送达。
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div><!--dis-modes 结束-->
                                <div class="clr"></div>
                                <div class="weight-cont total-freight-weight hide" style="display: block;">总重量：<em
                                        class="ftx-03 total-freight-weight-val">0.400kg</em></div>
                            </div><!--shopping-list 结束--></div>
                        <!--shopping-lists 结束-->
                    </div>
                </div>
            </div>

            <div class="order-remarks hide" id="orderRemarkItem">
            </div>

            <div class="clr"></div>

            <div class="step-tit step-toggle-off" id="virtualdiv" onclick="vertualHidOrShow()">
                <h3>使用优惠/礼品卡/抵用</h3>
                <i></i>
            </div>

            <!--/ /widget/order-coupon/order-coupon.tpl -->
        </div>
        <!-- </div> -->
        <!-- </div> -->
        <!-- /widget/order-summary/order-summary.tpl -->
        <div class="order-summary">
            <!-- 预售 计算支付展现方式 begin -->
            <div class="statistic fr">
                <div class="list">
                    <span><em class="ftx-01">${num}</em> 件商品，总商品金额：</span>
                    <em class="price" id="warePriceId" value="${totalPrice}">￥${totalPrice}</em>
                </div>
                <div class="list">
                    <span>返现：</span>
                    <em class="price" id="cachBackId" v="0"> -￥0.00</em>
                </div>
                <div class="list">
                    <span>运费：</span>
                    <em class="price" id="freightPriceId">
                        <i class="freight-icon"></i>
                        ￥0.00
                    </em>
                </div>
                <div class="list" style="display:block;">
                    <span>服务费：</span>
                    <em class="price" id="serviceFeeId">￥0.00</em>
                </div>
                <div class="list" style="display:block;">
                    <span>退换无忧：</span>
                    <em class="price">￥0.00</em>
                </div>
                <div class="list" id="showCouponPrice" style="display:none;">
                    <input id="couponPriceNum" value="0" type="hidden">
                    <input id="couponPricehidden" value="0" type="hidden">
                    <span>商品优惠：</span><em class="price" id="couponPriceId" style="display: none;">-￥0.00</em>
                </div>
                <div class="list" id="showFreeFreight" style="display:none;">
                    <input id="freeFreightPriceNum" value="0" type="hidden">
                    <input id="freeFreightPricehidden" value="0" type="hidden">
                    <span>运费优惠：</span><em class="price" id="freeFreightPriceId">-￥0.00</em>
                </div>
                <div class="list" id="showGiftCardPrice" style="display:none;">
                    <input id="giftCardPricehidden" value="0" type="hidden">
                    <input id="giftCardPriceNum" value="0" type="hidden">
                    <span> 礼品卡： </span><em class="price" id="giftCardPriceId">-￥0.00</em>
                </div>
                <div class="list" id="showUsedJdBean" style="display:none;">
                    <input id="jdBeanexChange" value="0.00" type="hidden">
                    <span>京豆：</span><em class="price" id="usedJdBeanId">-￥0.00</em>
                </div>
                <div class="list" id="showUsedOrderBalance" style="display:none;">
                    <input id="useBalanceShowDiscount" value="0.00" type="hidden">
                    <span>余额：</span><em class="price" id="usedBalanceId">-￥0.00</em>
                </div>
                <div class="list" id="showPeriodFee" style="display:none;">
                    <span>分期手续费(由分期银行收取)：</span><em class="price" id="periodFee">￥0.00</em>
                </div>
            </div>
            <div class="clr"></div>
        </div>
        <!--/ /widget/order-summary/order-summary.tpl -->

        <!-- /widget/checkout-floatbar/checkout-floatbar.tpl -->
        <div class="trade-foot">
            <div class="trade-foot-detail-com">
                <div class="fc-price-info">
                    <span class="price-tit">应付总额：</span>
                    <span class="price-num" id="sumPayPriceId">￥${totalPrice}</span>
                </div>
                <div class="fc-baitiao-info" style="display: none;">
                    <span>白条支付：<em>30天免息</em>（不使用优惠）<i class="bt-edit-icon" onclick="javascript:btDetail();"></i></span>
                </div>
                <div class="giftbuy-info">
                    <label class="noShowMoney hide" id="giftBuyHidePriceDiv">
                        <input id="giftBuyHidePrice" checked="" type="checkbox">包装内不显示礼品价格
                    </label>
                </div>
                <div class="fc-consignee-info">
                    <span class="mr20" id="sendAddr">寄送至： 安徽省 合肥市 瑶海区 新华电脑专修学院</span>
                    <span id="sendMobile">收货人：刘磊 150****0527</span>
                </div>
            </div>

            <div id="checkout-floatbar" class="group">
                <div class="ui-ceilinglamp checkout-buttons">
                    <div class="sticky-placeholder hide" style="display: none;">
                    </div>
                    <div class="sticky-wrap">
                        <div class="inner">
                            <button type="submit" class="checkout-submit" id="order-submit"
                                    onclick="gotoPay()">
                                提交订单<b></b>
                            </button>

                            <span id="checkCodeDiv"></span>

                            <div class="checkout-submit-tip" id="changeAreaAndPrice" style="display: none;">
                                由于价格可能发生变化，请核对后再提交订单
                            </div>
                            <!--div style="display:none" id="factoryShipCodShowDivBottom" class="dispatching">
                            </div-->
                        </div>
                        <span id="submit_message" style="display:none" class="submit-error"></span>

                        <div class="submit-check-info" id="submit_check_info_message" style="display:none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/statics/js/jquery-3.3.1.min.js"></script>
<script>
    function show_ConsigneeAll() {
        var size = parseInt($('#hidden_consignees_size').val()) * 42;
        $('#consignee1').attr('style', 'height:' + size + 'px;');
//            style="height: 84px;"
        $('#consigneeItemAllClick').addClass('hide');
        $('#consigneeItemHideClick').removeClass('hide');
    }

    function hide_ConsigneeAll() {
        var size = parseInt($('#hidden_consignees_size').val());
        if (size > 2) {
            size = 2 * 42;
        } else {
            size = size * 42;
        }
        $('#consignee1').attr('style', 'height:' + size + 'px;');
        $('#consigneeItemHideClick').addClass('hide');
        $('#consigneeItemAllClick').removeClass('hide');
    }

    function receiverName(id) {
//            alert(id);
        $("[name='consignee']").each(function () {
            $(this).removeClass('item-selected');
        });
        var receiver_name = $('#consignee-item' + id);
        receiver_name.addClass('item-selected');
        $('#addr_id').val(id);
    }

    function paymentType(id) {
//            alert(id);
        $("[name='paymentType']").each(function () {
            $(this).removeClass('item-selected');
        });
        var receiver_name = $('#paymentType' + id);
        receiver_name.addClass('item-selected');
        $('#payment_type').val(id);
    }

    function gotoPay() {
        var form = $("#gotoPay");
        form.submit();
    }
</script>
</body>
</html>
