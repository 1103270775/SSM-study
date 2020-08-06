<%--
  Created by IntelliJ IDEA.
  User: zyw18
  Date: 2020/8/5
  Time: 19:36
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
                欢迎您：<em>张 山</em>
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
            <li><a href="user_center_info">· 个人信息</a></li>
            <li><a href="user_center_order" class="active">· 全部订单</a></li>
            <li><a href="user_center_site">· 收货地址</a></li>
        </ul>
    </div>
    <div class="right_content clearfix">
        <h3 class="common_title2">全部订单</h3>
        <ul class="order_list_th w978 clearfix">
            <li class="col01">2016-8-21 17:36:24</li>
            <li class="col02">订单号：56872934</li>
            <li class="col02 stress">未支付</li>
        </ul>

        <table class="order_list_table w980">
            <tbody>
            <tr>
                <td width="55%">
                    <ul class="order_goods_list clearfix">
                        <li class="col01"><img src="/resource/images/goods02.jpg"></li>
                        <li class="col02">小米10<em>3799元/1个</em></li>
                        <li class="col03">1</li>
                        <li class="col04">3799元</li>
                    </ul>
                    <ul class="order_goods_list clearfix">
                        <li class="col01"><img src="/resource/images/goods02.jpg"></li>
                        <li class="col02">小米10<em>3799元/1个</em></li>
                        <li class="col03">1</li>
                        <li class="col04">3799元</li>
                    </ul>
                </td>
                <td width="15%">7680元</td>
                <td width="15%">待付款</td>
                <td width="15%"><a href="#" class="/resource/oper_btn">去付款</a></td>
            </tr>
            </tbody>
        </table>

        <ul class="order_list_th w978 clearfix">
            <li class="col01">2016-8-21 17:36:24</li>
            <li class="col02">订单号：56872934</li>
            <li class="col02 stress">已支付</li>
        </ul>
        <table class="order_list_table w980">
            <tbody>
            <tr>
                <td width="55%">
                    <ul class="order_goods_list clearfix">
                        <li class="col01"><img src="/resource/images/goods02.jpg"></li>
                        <li class="col02">小米10<em>3799元/1个</em></li>
                        <li class="col03">1</li>
                        <li class="col04">3799元</li>
                    </ul>
                    <ul class="order_goods_list clearfix">
                        <li class="col01"><img src="/resource/images/goods02.jpg"></li>
                        <li class="col02">小米10<em>3799元/1个</em></li>
                        <li class="col03">1</li>
                        <li class="col04">3799元</li>
                    </ul>
                </td>
                <td width="15%">7608元</td>
                <td width="15%">已付款</td>
                <td width="15%"><a href="#" class="oper_btn">查看物流</a></td>
            </tr>
            </tbody>
        </table>

        <div class="pagenation">
            <a href="#"><上一页</a>
            <a href="#" class="active">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">下一页></a>
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

</body>
</html>
