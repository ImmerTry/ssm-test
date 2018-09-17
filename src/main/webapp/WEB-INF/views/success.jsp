<%--
  Created by IntelliJ IDEA.
  User: SugarMan
  Date: 2018/9/17
  Time: 上午9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单成功页面</title>
</head>
<body>
<div class="w w1 header clearfix">
    <div id="logo">
        <a href="#" class="link1" target="_blank">
            <img src="#">
        </a>
        <a href="#none" class="link2"><b></b>"结算页"</a>
    </div>
    <div class="stepflex" id="#sflex03">
        <dl class="first done">
            <dt class="s-num">1</dt>
            <dd class="s-text">1.填写验证码<s></s><b></b></dd>
        </dl>
        <dl class="normal done">
            <dt class="s-num">2</dt>
            <dd class="s-text">2.填写核对订单信息<s></s><b></b></dd>
        </dl>
        <dl class="normal doing last">
            <dt class="s-num">3</dt>
            <dd class="s-text">3.成功提交订单<s></s><b></b></dd>
        </dl>
    </div>
</div>
<div class="w" id="safeinfo"></div><!--父订单的ID-->
<input type="hidden" id="successOrderId" value="50543247878">
<div id="container">
    <div class="w main">
        <div class="m m3 msop">
            <div class="mt" id="success_tittle"><s class="icon-succ02"></s>
                <h3 class="ftx-02">感谢您，订单提交成功！</h3>
            </div>
            <div class="mc" id="success_detail">
                <input type="hidden" id="loadSuccessFlag" value="ok"><!-- 加載成功標識  -->
                <input type="hidden" id="skuIds" value="2409310"><!-- 商品id串  -->
                <!-- 再次购买按钮 -->
                <div class="btn-area mb10">
                    <a class="btn-ordershow" href="#">查看订单</a>
                    <a class="btn-buyagain ml10"href="#">
                        <i></i>
                        再次购买
                    </a>
                </div>

                <ul class="list-order">
                    <li class="li-st">
                        <div class="fore1">订单号：<a href="#">${orderId}</a>
                        </div>
                        <!-- 货到付款 -->
                        <div class="fore2">货到付款：<strong class="ftx-01">${payment}元</strong></div>
                        <div class="fore3">
                            上门自提 &nbsp; 提货日期：<strong class="ftx-01">${date}</strong><br>
                            自提地址：<strong> 磨店自提店</strong> &nbsp; 地址：合肥市瑶海区磨店xxxxxxx
                            <a href="" target="_blank">(详细地图)</a>
                        </div>
                    </li>
                </ul>
                <!-- 在线支付按钮  -->
                <div id="bookDiv"></div>
                <div class="wx-banner">
                    <div class="wx-share">
                        <div class="share-trigger" id="gwqpc-handle-point" data-scene="100104000"
                             data-dealid="50543247878" data-pin="897960453">
                            <i class="i-share"></i><span class="txt">分享给微信好友</span>
                        </div>
                    </div>
                    <div class="mobile-ordertrack">
                        <div class="ordertrack-trigger">
                            <i class="i-mobile"></i><span class="txt">订单小助手&nbsp;随时随地查订单</span>
                        </div>
                        <div class="wx-qrcode-tip">
                            <span class="tip-arrow"><em class="layer1"></em><em class="layer2"></em></span>
                            <div class="tip-inner">
                                <img src="https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGZ8DwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUm9Rc2x0Y0ZiRnMxd1JsUWhvMVQAAgS1w7JYAwSAUQEA"
                                     id="qrcode-order" alt="" class="tip-img">
                                <div class="tip-cont">
                                    <div class="tip-title">订单助手</div>
                                    <div class="tip-hint">关注微信公众号<br>随时随地查订单</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="d-tips">
            <span class="d-tips-cont">
                <i></i>
			       重要提醒：平台及销售商不会以
			    <span class="ftx-01">任何理由</span>
			       ，要求您点击
			    <span class="ftx-01">任何网址链接</span>
                进行退款操作。点此查看平台“
			    <a class="ftx-05" target="_blank" href="http://www.jd.com/news.aspx?id=22399">谨防诈骗公告声明</a>
			    ”
            </span>
                </div>
            </div>
            <div class="qr-code">
                <a class="code" href="javascript:void(0)">
                    <img alt=""
                         src="//img10.360buyimg.com/da/jfs/t355/22/1290598403/5586/a8504482/5435f1eeNc4bfcf9e.jpg">
                </a>
                <a class="sao02" href="javascript:void(0)"></a>
            </div>
        </div>
        <div class="o-mb">完成支付后，您可以：
            <a href="//www.jd.com" clstag="pageclick|keycount|trade_201602181|33">继续购物</a>&nbsp;&nbsp;<a
                    href="http://surveys.jd.com/index.php?r=survey/index/sid/264885/newtest/Y/lang/zh-Hans"
                    clstag="pageclick|keycount|trade_201602181|34">问题反馈</a>
            <span class="jl-jingdou">
            <a href="http://vip.jd.com/help_beansIntroduction.html" class="jl-la" style="color:#7ABD54;"
               target="_blank">完成订单有机会奖励京豆</a> | 使用京豆更超值，请登录<a href="http://vip.jd.com/" target="_blank">会员俱乐部</a>
          </span>
        </div>
    </div>
    <div class="w m" id="da930X100">
        <a href="//c-nfa.jd.com/adclick?keyStr=z5AXFoIimt1jiDK32+w4me7Q3BzAuRONdfYEReONi9Pf82iKMw4v6HAfugOWO+2psa2o+gazQPvUz0tWFQ8wR0bvZcNQb6bW8NjA7sH4qnxa4eG9P+LQ+i7XDdn0nvJz1oEwRbUsC6tQMin70asoR/8NPBPOOMv67ZOyIBJTOJkWKGS/8IRmN5GpuqrBOPYDBvY0tDzeYVvO6GD7pv64H8vAa6QAm01CnX10pC6qyde7NopedPC3du7DL5C86LCm7rgAJfsDkN3cr39q/mKyOw8DnD4R7zcofvTr4ytU1fEqjV5eNKY+ZtEexFIgZ9O50KLb4qjigzwt6HHBU+SMjg==&amp;cv=2.0&amp;url=//sale.jd.com/act/N3VRifA7szZaoxuG.html"
           target="_blank">
        </a>
    </div>
</div>

</body>
</html>
