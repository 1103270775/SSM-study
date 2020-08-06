<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zyw18
  Date: 2020/8/4
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>中广数码-提交订单</title>
    <link rel="stylesheet" type="text/css" href="/resource/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/resource/css/main.css">
</head>
<body>
<div class="header_con">
    <div class="header">
        <div class="welcome fl">欢迎来到中广数码!</div>
        <div class="fr">
            <div class="login_info fl">
                欢迎您：<em>${sessionScope.username}</em>
            </div>
            <div class="login_btn fl">
                <a href="login.html">登录</a>
                <span>|</span>
                <a href="register.html">注册</a>
            </div>
            <div class="user_link fl">
                <span>|</span>
                <a href="user_center_info.html">用户中心</a>
                <span>|</span>
                <a href="cart.html">我的购物车</a>
                <span>|</span>
                <a href="user_center_order.html">我的订单</a>
            </div>
        </div>
    </div>
</div>

<div class="search_bar clearfix">
    <a href="/index" class="logo fl"><img src="/resource/images/logo.png"></a>
    <div class="sub_page_name fl">|&nbsp;&nbsp;&nbsp;&nbsp;提交订单</div>
    <div class="search_con fr">
        <input type="text" class="input_text fl" name="" placeholder="搜索商品">
        <input type="button" class="input_btn fr" name="" value="搜索">
    </div>
</div>

<h3 class="common_title">确认收货地址</h3>

<div class="common_list_con clearfix">
    <dl>
        <dt>寄送到：</dt>
        <dd><input type="radio" name="" checked="">湖北省 宜昌市 西陵区三峡大学欣苑 （小明 收） 158****3871</dd>
    </dl>
    <a href="user_center_site.html" class="edit_site">编辑收货地址</a>

</div>

<h3 class="common_title">支付方式</h3>
<div class="common_list_con clearfix">
    <div class="pay_style_con clearfix">
        <input type="radio" name="pay_style" checked>
        <label class="cash">货到付款</label>
        <input type="radio" name="pay_style">
        <label class="weixin">微信支付</label>
        <input type="radio" name="pay_style">
        <label class="zhifubao"></label>
        <input type="radio" name="pay_style">
        <label class="bank">银行卡支付</label>
    </div>
</div>

<h3 class="common_title">商品列表</h3>

<div class="common_list_con clearfix">
    <ul class="goods_list_th clearfix">
        <li class="col01">商品名称</li>
        <li class="col02">商品单位</li>
        <li class="col03">商品价格</li>
        <li class="col04">数量</li>
        <li class="col05">小计</li>
    </ul>
    <c:forEach items="${sessionScope.carts}" var="cart" varStatus="sta">
        <ul class="goods_list_td clearfix">
            <li class="col01">${sta.index+1}</li>
            <li class="col02"><img src="${cart.imgurl}"></li>
            <li class="col03">${cart.pname}</li>
            <li class="col04">1</li>
            <li class="col05">${cart.price}</li>
            <li class="col06">${cart.count}</li>
            <li class="col07">${cart.count*cart.price}</li>
        </ul>
    </c:forEach>

</div>

<h3 class="common_title">总金额结算</h3>

<div class="common_list_con clearfix">
    <div id="order_pay" style="text-align: center;" ><img style="width:20%" src="/resource/images/pay.png" alt="pay"/></div>
    <div class="settle_con">
        <div class="total_goods_count">共<em id="payCount">2</em>件商品，总金额<b id="totalPrice">0</b></div>
        <div class="transit">运费：<b>10元</b></div>
        <div class="total_pay">实付款：<b id="payMoney">0</b></div>
    </div>
</div>

<div class="order_submit clearfix">
    <a onclick="" href="javascript:;" id="order_btn">已付款</a>
</div>

<div class="footer">
    <div class="foot_link">
        <a href="#">关于我们</a>
        <span>|</span>
        <a href="#">联系我们</a>
        <span>|</span>
        <a href="#">招聘人才</a>
        <span>|</span>
        <a href="#">友情链接</a>
    </div>
    <p>CopyRight © 2016 北京中广数码信息技术有限公司 All Rights Reserved</p>
    <p>电话：010-****888    京ICP备*******8号</p>
</div>

<div class="popup_con">
    <div class="popup">
        <p>订单提交成功！</p>
    </div>

    <div class="mask"></div>
</div>
<script type="text/javascript" src="js/jquery-1.12.2.js"></script>
<script type="text/javascript">
    var s = parseFloat(sessionStorage.getItem("totalPrice"));
    var payCount = parseInt(sessionStorage.getItem("payCount"));
    document.getElementById("totalPrice").innerHTML=s+"元";
    s=parseFloat(s)+parseFloat(10);
    document.getElementById("payMoney").innerHTML=s+"元";
    document.getElementById("payCount").innerHTML=payCount;
</script>
</body>
</html>
