<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zyw18
  Date: 2020/8/5
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>中广数码-商品列表</title>
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
    <div class="search_con fl">
        <input type="text" class="input_text fl" id="pkey" placeholder="搜索商品"/>
        <input type="button" class="input_btn fr" onclick="selectByKey()" value="搜索"/>
    </div>
    <div class="guest_cart fr">
        <a href="#" class="cart_name fl">我的购物车</a>
        <div class="goods_count fl">1</div>
    </div>
</div>

<div class="navbar_con">
    <div class="navbar clearfix">
        <div class="subnav_con fl">
            <h1>全部商品分类</h1>
            <span></span>
            <ul class="subnav">
                <li><a href="#" class="fruit">手机 电话卡</a></li>
                <li><a href="#" class="seafood">笔记本 平板</a></li>
                <li><a href="#" class="meet">电视 盒子</a></li>
                <li><a href="#" class="egg">路由器 智能硬件</a></li>
                <li><a href="#" class="vegetables">移动电源 电池</a></li>
                <li><a href="#" class="ice">保护套 贴膜</a></li>
            </ul>
        </div>
        <ul class="navlist fl">
            <li><a href="">首页</a></li>
            <li class="interval">|</li>
            <li><a href="">手机</a></li>
            <li class="interval">|</li>
            <li><a href="">平板</a></li>
            <li class="interval">|</li>
            <li><a href="">笔记本</a></li>
            <li class="interval">|</li>
            <li><a href="">电视</a></li>
            <li class="interval">|</li>
            <li><a href="">盒子</a></li>
            <li class="interval">|</li>
            <li><a href="">路由器</a></li>
            <li class="interval">|</li>
            <li><a href="">服务</a></li>
            <li class="interval">|</li>
            <li><a href="">社区</a></li>
        </ul>
    </div>
</div>

<div class="breadcrumb">
    <a href="#">全部分类</a>
    <span>></span>
    <a href="#">数码产品</a>
    <span>></span>
    <a href="#">搜索关键词：</a>
    <a href="#" id="header_selectKey"></a>
</div>

<div class="main_wrap clearfix">
    <div class="l_wrap fl clearfix">
        <div class="new_goods">
            <h3>新品推荐</h3>
            <ul>
                <li>
                    <a href="#"><img src="/resource/images/goods/goods001.jpg"></a>
                    <h4><a href="#">小米10</a></h4>
                    <div class="prize">￥3799</div>
                </li>
                <li>
                    <a href="#"><img src="/resource/images/goods/goods002.jpg"></a>
                    <h4><a href="#">小米10</a></h4>
                    <div class="prize">￥3799</div>
                </li>
            </ul>
        </div>
    </div>

    <div class="r_wrap fr clearfix">
        <div class="sort_bar">
            <a href="#" class="active">默认</a>
            <a href="#">价格</a>
            <a href="#">人气</a>
        </div>

        <ul class="goods_type_list clearfix">
            <c:forEach items="${requestScope.productsList}" var="product">
                <li>
                    <a href="/productDetail.do?pid=${product.pid}"><img src="${product.imgurl}"></a>
                    <h4><a href="">${product.pname}</a></h4>
                    <div class="operate">
                        <span class="prize">￥${product.price}</span>
                        <a href="/add_cart?pid=${product.pid}" class="add_goods" title="加入购物车"></a>
                    </div>
                </li>
            </c:forEach>



        </ul>
    </div>
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
<script type="text/javascript">
    document.getElementById("header_selectKey").innerHTML=sessionStorage.getItem("selectKey");
    document.getElementById("pkey").value=sessionStorage.getItem("selectKey");
    function selectByKey() {
        var key=document.getElementById("pkey").value;
        sessionStorage.setItem("selectKey",key);
        key=encodeURI(encodeURI(key));

        var uri="/selectByKey?key="+key;
        window.location.href=uri;
    }
</script>
</body>
</html>
