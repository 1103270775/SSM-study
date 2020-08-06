<%--
  Created by IntelliJ IDEA.
  User: zyw18
  Date: 2020/8/3
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>中广数码-商品详情</title>
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
                <a href="/login">登录</a>
                <span>|</span>
                <a href="/register">注册</a>
            </div>
            <div class="user_link fl">
                <span>|</span>
                <a href="/user_center_info">用户中心</a>
                <span>|</span>
                <a href="/cart">我的购物车</a>
                <span>|</span>
                <a href="/user_center_order">我的订单</a>
            </div>
        </div>
    </div>
</div>

<div class="search_bar clearfix">
    <a href="/index" class="logo fl"><img src="/resource/images/logo.png"></a>
    <div class="search_con fl">
        <input type="text" class="input_text fl" name="" placeholder="搜索商品">
        <input type="button" class="input_btn fr" name="" value="搜索">
    </div>
    <div class="guest_cart fr">
        <a href="/cart" class="cart_name fl">我的购物车</a>
        <div class="goods_count fl" id="show_count">1</div>
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
    <a href="#">商品详情</a>
</div>

<div class="goods_detail_con clearfix">
    <div class="goods_detail_pic fl"><img style="width: 380px" src="${requestScope.product.imgurl}"></div>

    <div class="goods_detail_list fr">
        <h3>${requestScope.product.pname}</h3>
        <p>${requestScope.product.pdesc}</p>
        <div class="prize_bar">
            <span class="show_pirze">¥<em>${requestScope.product.price}</em></span>
            <span class="show_unit">单  位：1个</span>
        </div>
        <div class="goods_num clearfix">
            <div class="num_name fl">数 量：</div>
            <div class="num_add fl">
                <input type="text" class="num_show fl" value="1">
                <a href="javascript:;" class="add fr">+</a>
                <a href="javascript:;" class="minus fr">-</a>
            </div>
        </div>
        <div class="total">总价：<em>${requestScope.product.price}</em></div>
        <div class="operate_btn">
            <a href="javascript:;" onclick="pay()" class="buy_btn">立即购买</a>
            <a href="javascript:;" onclick="add_cart()" class="add_cart" id="add_cart">加入购物车</a>
        </div>
    </div>
</div>

<div class="main_wrap clearfix">
    <div class="l_wrap fl clearfix">
        <div class="new_goods">
            <h3>新品推荐</h3>
            <ul>
                <li>
                    <a href="#"><img src="/resource/images/goods/goods001.jpg"></a>
                    <h4><a href="#">小米8</a></h4>
                    <div class="prize">￥3499</div>
                </li>
                <li>
                    <a href="#"><img src="/resource/images/goods/goods002.jpg"></a>
                    <h4><a href="#">小米耳机</a></h4>
                    <div class="prize">￥699</div>
                </li>
            </ul>
        </div>
    </div>

    <div class="r_wrap fr clearfix">
        <ul class="detail_tab clearfix">
            <li class="active">商品介绍</li>
            <li>评论</li>
        </ul>

        <div class="tab_content">
            <dl>
                <dt>商品详情：</dt>
                <dd>${requestScope.product.pdesc}</dd>
            </dl>
        </div>

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

<script type="text/javascript" src="js/jquery-1.12.2.js"></script>
<script type="text/javascript">
    var $add_x = $('#add_cart').offset().top;
    var $add_y = $('#add_cart').offset().left;

    var $to_x = $('#show_count').offset().top;
    var $to_y = $('#show_count').offset().left;


    $('#add_cart').click(function(){
        $(".add_jump").stop().animate({
                'left': $to_y+7,
                'top': $to_x+7},
            "fast", function() {
                $(".add_jump").fadeOut('fast',function(){
                    $('#show_count').html(2);
                });

            });
    })
    function pay() {
        location.href="/productPay";
    }
    function add_cart() {
        location.href="/add_cart?pid=${requestScope.product.pid}";
    }
</script>

</body>
</html>
