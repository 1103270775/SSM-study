<%--
  Created by IntelliJ IDEA.
  User: zyw18
  Date: 2020/8/5
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>中广数码-用户中心</title>
    <link rel="stylesheet" type="text/css" href="/resource/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/resource/css/main.css">
</head>
<body>
<div class="header_con">
    <div class="header">
        <div class="welcome fl">欢迎来到中广数码!</div>
        <div class="fr">
            <div class="login_info fl">
                欢迎您：<em>${requestScope.username}</em>
            </div>
            <div class="login_btn fl">
                <a href="login">登录</a>
                <span>|</span>
                <a href="register">注册</a>
            </div>
            <div class="user_link fl">
                <span>|</span>
                <a href="user_center_info">用户中心</a>
                <span>|</span>
                <a href="cart">我的购物车</a>
                <span>|</span>
                <a href="user_center_order">我的订单</a>
            </div>
        </div>
    </div>
</div>

<div class="search_bar clearfix">
    <a href="index.html" class="logo fl"><img src="/resource/images/logo.png"></a>
    <div class="sub_page_name fl">|&nbsp;&nbsp;&nbsp;&nbsp;用户中心</div>
    <div class="search_con fr">
        <input type="text" class="input_text fl" name="" placeholder="搜索商品">
        <input type="button" class="input_btn fr" name="" value="搜索">
    </div>
</div>

<div class="main_con clearfix">
    <div class="left_menu_con clearfix">
        <h3>用户中心</h3>
        <ul>
            <li><a href="user_center_info" class="active">· 个人信息</a></li>
            <li><a href="user_center_order">· 全部订单</a></li>
            <li><a href="user_center_site">· 收货地址</a></li>
        </ul>
    </div>
    <div class="right_content clearfix">
        <div class="info_con clearfix">
            <h3 class="common_title2">基本信息</h3>
            <ul class="user_info_list">
                <li><span>用户名：</span>15871613871</li>
                <li><span>联系方式：</span>15871613871</li>
                <li><span>联系地址：</span>湖北省宜昌市西陵区</li>
            </ul>
        </div>

        <h3 class="common_title2">最近浏览</h3>
        <div class="has_view_list">
            <ul class="goods_type_list clearfix">
                <li>
                    <a href="detail.html"><img src="/resource/images/goods/goods003.jpg"></a>
                    <h4><a href="detail.html">小米10</a></h4>
                    <div class="operate">
                        <span class="prize">￥3799</span>
                        <span class="unit">3799/1个</span>
                        <a href="#" class="add_goods" title="加入购物车"></a>
                    </div>
                </li>

                <li>
                    <a href="#"><img src="/resource/images/goods/goods004.jpg"></a>
                    <h4><a href="#">小米10</a></h4>
                    <div class="operate">
                        <span class="prize">￥3799</span>
                        <span class="unit">3799/1个</span>
                        <a href="#" class="add_goods" title="加入购物车"></a>
                    </div>
                </li>

                <li>
                    <a href="#"><img src="/resource/images/goods/goods005.jpg"></a>
                    <h4><a href="#">小米10</a></h4>
                    <div class="operate">
                        <span class="prize">￥3799</span>
                        <span class="unit">3799/1个</span>
                        <a href="#" class="add_goods" title="加入购物车"></a>
                    </div>
                </li>

                <li>
                    <a href="#"><img src="/resource/images/goods/goods006.jpg"></a>
                    <h4><a href="#">小米10</a></h4>
                    <div class="operate">
                        <span class="prize">￥3799</span>
                        <span class="unit">3799/1个</span>
                        <a href="#" class="add_goods" title="加入购物车"></a>
                    </div>
                </li>

                <li>
                    <a href="#"><img src="/resource/images/goods/goods007.jpg"></a>
                    <h4><a href="#">小米10</a></h4>
                    <div class="operate">
                        <span class="prize">￥3799</span>
                        <span class="unit">3799/1个</span>
                        <a href="#" class="add_goods" title="加入购物车"></a>
                    </div>
                </li>
            </ul>
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
    <p>CopyRight © 2016 北京天天生鲜信息技术有限公司 All Rights Reserved</p>
    <p>电话：010-****888    京ICP备*******8号</p>
</div>

</body>
</html>
