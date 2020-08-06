<%--
  Created by IntelliJ IDEA.
  User: zyw18
  Date: 2020/7/30
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>中广数码-首页</title>
    <link rel="stylesheet" type="text/css" href="../../resource/css/reset.css">
    <link rel="stylesheet" type="text/css" href="../../resource/css/main.css">
    <script type="text/javascript" src="../../resource/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="../../resource/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../../resource/js/slide.js"></script>
</head>
<body>
<div class="header_con">
    <div class="header">
        <div class="welcome fl">欢迎来到中广数码!</div>
        <div class="fr">
            <div id="login_name" class="login_info fl">
                欢迎您：<em>${sessionScope.username}</em>
            </div>

            <div  class="login_btn fl">
                <a id="login" href="login">登录</a>
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
    <a href="index.jsp" class="logo fl"><img src="../../resource/images/logo.png"></a>
    <div class="search_con fl">
        <input type="text" class="input_text fl" id="pkey" placeholder="搜索商品"/>
        <input type="button" class="input_btn fr" onclick="selectByKey()" value="搜索"/>
    </div>
    <div class="guest_cart fr">
        <a href="cart.jsp" class="cart_name fl">我的购物车</a>
        <div class="goods_count fl" id="show_count" style="color: #a8a8a8">${sessionScope.cart_count}</div>
    </div>
</div>

<div class="navbar_con">
    <div class="navbar">
        <h1 class="fl">全部商品分类</h1>
        <ul class="navlist fl">
            <li><a href="#">首页</a></li>
            <li class="interval">|</li>
            <li><a href="#">手机</a></li>
            <li class="interval">|</li>
            <li><a href="#">平板</a></li>
            <li class="interval">|</li>
            <li><a href="#">笔记本</a></li>
            <li class="interval">|</li>
            <li><a href="#">电视</a></li>
            <li class="interval">|</li>
            <li><a href="#">盒子</a></li>
            <li class="interval">|</li>
            <li><a href="#">路由器</a></li>
            <li class="interval">|</li>
            <li><a href="#">服务</a></li>
            <li class="interval">|</li>
            <li><a href="#">社区</a></li>
        </ul>
    </div>
</div>

<div class="center_con clearfix">
    <ul class="subnav fl">
        <li><a href="#model01" class="fruit">手机 电话卡</a></li>
        <li><a href="#model02" class="seafood">笔记本 平板</a></li>
        <li><a href="#model03" class="meet">电视 盒子</a></li>
        <li><a href="#model04" class="egg">路由器 智能硬件</a></li>
        <li><a href="#model05" class="vegetables">移动电源 电池 </a></li>
        <li><a href="#model05" class="ice">保护套 贴膜</a></li>
    </ul>
    <div class="slide fl">
        <ul class="slide_pics">
            <li><img src="../../resource/images/slide.jpg" alt="幻灯片"></li>
            <li><img src="../../resource/images/slide02.jpg" alt="幻灯片"></li>
            <li><img src="../../resource/images/slide03.jpg" alt="幻灯片"></li>
            <li><img src="../../resource/images/slide04.jpg" alt="幻灯片"></li>
        </ul>
        <div class="prev"></div>
        <div class="next"></div>
        <ul class="points"></ul>
    </div>
    <div class="adv fl">
        <a href="#"><img style="width: 220px" src="../../resource/images/adv01.png"></a>
        <a href="#"><img style="width: 220px" src="../../resource/images/adv02.png"></a>
    </div>
</div>

<div class="list_model">
    <div class="list_title clearfix">
        <h3 class="fl" id="model01">手机</h3>
        <div class="subtitle fl">
            <span>|</span>
            <a href="#">华为手机</a>
            <a href="#">小米10Pro</a>
            <a href="#">Redmi K30</a>
        </div>
        <a href="#" class="goods_more fr" id="fruit_more">查看更多 ></a>
    </div>

    <div class="goods_con clearfix">
        <div class="goods_banner fl"><img src="../../resource/images/banner01.png"></div>
        <ul class="goods_list fl">
            <c:forEach items="${sessionScope.phoneList}" var="pro">
                <li>
                    <h4><a href="/productDetail.do?pid=${pro.pid}">${pro.pname}</a></h4>
                    <a href="/productDetail.do?pid=${pro.pid}">
                    <img src="${pro.imgurl}"></a>
                    <div class="prize">${pro.price}</div>
                </li>
            </c:forEach>

        </ul>
    </div>
</div>

<div class="list_model">
    <div class="list_title clearfix">
        <h3 class="fl" id="model02">笔记本</h3>
        <div class="subtitle fl">
            <span>|</span>
            <a href="#">huawei笔记本</a>
            <a href="#">小米笔记本</a>
        </div>
        <a href="#" class="goods_more fr">查看更多 ></a>
    </div>

    <div class="goods_con clearfix">
        <div class="goods_banner fl"><img src="../../resource/images/banner02.jpg"></div>
        <ul class="goods_list fl">
            <c:forEach var="computer" items="${computerList}">
                <li>
                    <h4><a href="/productDetail.do?pid=${computer.pid}">${computer.pname}</a></h4>
                    <a href="/productDetail.do?pid=${computer.pid}"><img src="${computer.imgurl}"></a>
                    <div class="prize">${computer.price}</div>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
<div class="list_model">
    <div class="list_title clearfix">
        <h3 class="fl" id="model03">电视</h3>
        <div class="subtitle fl">
            <span>|</span>
            <a href="#">honor电视</a>
            <a href="#">小米全屏电视</a>
        </div>
        <a href="#" class="goods_more fr">查看更多 ></a>
    </div>

    <div class="goods_con clearfix">
        <div class="goods_banner fl"><img src="../../resource/images/banner03.jpg"></div>
        <ul class="goods_list fl">
            <c:forEach items="${sessionScope.tvList}" var="tv">
                <li>
                    <h4><a href="/productDetail.do?pid=${tv.pid}">${tv.pname}</a></h4>
                    <a href="/productDetail.do?pid=${tv.pid}"><img src="${tv.imgurl}"></a>
                    <div class="prize">${tv.price}</div>
                </li>
            </c:forEach>

        </ul>
    </div>
</div>

<div class="list_model">
    <div class="list_title clearfix">
        <h3 class="fl" id="model04">路由器</h3>
        <div class="subtitle fl">
            <span>|</span>
            <a href="#">honor路由器</a>
            <a href="#">小米路由器</a>
        </div>
        <a href="#" class="goods_more fr">查看更多 ></a>
    </div>

    <div class="goods_con clearfix">
        <div class="goods_banner fl"><img src="../../resource/images/banner04.jpg"></div>
        <ul class="goods_list fl">
            <c:forEach items="${routerList}" var="router">
                <li>
                    <h4><a href="/productDetail.do?pid=${router.pid}">${router.pname}</a></h4>
                    <a href="/productDetail.do?pid=${router.pid}"><img src="${router.imgurl}"></a>
                    <div class="prize">${router.price}</div>
                </li>
            </c:forEach>

        </ul>
    </div>
</div>


<div class="list_model">
    <div class="list_title clearfix">
        <h3 class="fl" id="model05">配件专区</h3>
        <div class="subtitle fl">
            <span>|</span>
            <a href="#">键盘鼠标</a>
            <a href="#">耳机</a>
        </div>
        <a href="#" class="goods_more fr">查看更多 ></a>
    </div>
<div class="goods_con clearfix">
    <div class="goods_banner fl"><img src="../../resource/images/banner05.jpg"></div>
    <ul class="goods_list fl">
        <c:forEach var="component" items="${componentList}">
            <li>
                <h4><a href="/productDetail.do?pid=${component.pid}">${component.pname}</a></h4>
                <a href="/productDetail.do?pid=${component.pid}"><img src="${component.imgurl}"></a>
                <div class="prize">${component.price}</div>
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
<script type="text/javascript" src="../../resource/js/slideshow.js"></script>
<script type="text/javascript">
    BCSlideshow('focuspic');
    var oFruit = document.getElementById('fruit_more');
    var count=sessionStorage.getItem("cart_count");


    oFruit.onclick = function(){
        window.location.href = 'list.html';
    }
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