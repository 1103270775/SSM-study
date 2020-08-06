<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zyw18
  Date: 2020/8/3
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>中广数码-购物车</title>
    <link rel="stylesheet" type="text/css" href="../../resource/css/reset.css">
    <link rel="stylesheet" type="text/css" href="../../resource/css/main.css">
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
    <a href="/index" class="logo fl"><img src="../../resource/images/logo.png"></a>
    <div class="sub_page_name fl">|&nbsp;&nbsp;&nbsp;&nbsp;购物车</div>
    <div class="search_con fr">
        <input type="text" class="input_text fl" name="" placeholder="搜索商品">
        <input type="button" class="input_btn fr" name="" value="搜索">
    </div>
</div>

<div class="total_count">全部商品<em id="total_count">0</em>件</div>
<ul class="cart_list_th clearfix">
    <li class="col01">商品名称</li>
    <li class="col02">商品单位</li>
    <li class="col03">商品价格</li>
    <li class="col04">数量</li>
    <li class="col05">小计</li>
    <li class="col06">操作</li>
</ul>
<c:forEach items="${requestScope.carts}" var="cart" varStatus="sta">
    <input type="hidden" value="${cart.carid}" name="carid">
    <input type="hidden" value="${cart.pid}" name="pid">
    <ul class="cart_list_td clearfix">
        <li class="col01"><input type="checkbox" name="" checked></li>
        <li class="col02"><img src="${cart.imgurl}"></li>
        <li class="col03">${cart.pname}<br><em>${cart.price}/1个</em></li>
        <li class="col04">1个</li>
        <li class="col05" name="price">${cart.price}</li>
        <li class="col06">
            <div class="num_add">
                <a href="javascript:;" onclick="minus(${sta.index})" class="minus fl">-</a>
                <input name="amount" type="text" class="num_show fl" value="${cart.count}"/>
                <a href="javascript:;" onclick="plus(${sta.index})" class="add fl">+</a>
            </div>
        </li>
        <li id="price${sta.index}" class="col07" name="onePrice">${cart.price*cart.count}</li>
        <li class="col08"><a href="javascript:;" onclick="deleteByIndex(${sta.index})">删除</a></li>
    </ul>
</c:forEach>




<ul class="settlements">
    <li class="col01"><input type="checkbox" name="" checked=""></li>
    <li class="col02">全选</li>
    <li class="col03">合计(不含运费)：<span>¥</span><em id="totalPrice"></em><br>共计<b id="pay_count">0</b>件商品</li>
    <li class="col04"><a href="javascript:;" onclick="productPay()">去结算</a></li>
</ul>

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

<%--<button onclick="show()" >触发点击事件</button>--%>
<script src="../../resource/js/jquery_2.1.4_baidu_min.js"></script>
<script>
    //根据素材 编写minus()函数
    //减
    function minus(num){
        //1.根据name属性找到表示数量的标签( name='amount')
        var amountes=document.getElementsByName("amount");
        var carids=document.getElementsByName("carid");

        //当参数num为0 时表示是第一个商品的数量需要更改
        //数量不能为负数
        var count=amountes[num].value;
        if(count<1){
            amountes[num].value=0;
        }else{
            amountes[num].value-=1;
        }
        //计算单个总价
        oneCount(num);
        //计算所有总价
        computeAll();
        //更新购物车.
        ajaxUpdateCar(amountes[num].value,carids[num].value)

    }
    //加
    function plus(num){
        //1.根据name属性找到表示数量的标签( name='amount')
        var amountes=document.getElementsByName("amount");
        var carids=document.getElementsByName("carid");
        //当参数num为0 时表示是第一个商品的数量需要更改
        var count=amountes[num].value;
        //转换的作用是防止+号进行字符串拼接
        amountes[num].value=parseInt(count)+1;
        //计算单个总价
        oneCount(num);
        //计算所有总价
        computeAll();
        //更新购物车
        ajaxUpdateCar(amountes[num].value,carids[num].value)
    }

    //编写计算单个商品总价的方法
    function  oneCount(num){
        //根据name获取商品的单价
        var prices=document.getElementsByName("price");
        var price=prices[num].innerHTML;
        //获取单个商品的数量
        var amountes=document.getElementsByName("amount");
        //当参数num为0 时表示是第一个商品的数量需要更改
        var count=amountes[num].value;
        //计算单个商品的总价
        var sum=price*count;
        //总价格小数点很长
        sum=sum.toFixed(2);
        //根据id 获取单个总价的元素
        var id="price"+num;
        document.getElementById(id).innerHTML=sum;
    }

    //编写计算所有商品的总价格的方法
    function  computeAll(){
        var pris = document.getElementsByName("onePrice");
        var amounts=document.getElementsByName("amount");

        var sum=0;
        var count=0;
        for (var i =0;i<pris.length;i++){
            sum+=parseFloat(pris[i].innerHTML);
        }
        for(var j=0;j<amounts.length;j++){
            count+=parseInt(amounts[j].value);
        }
        document.getElementById("total_count").innerHTML=count;
        document.getElementById("pay_count").innerHTML=count;
        document.getElementById("totalPrice").innerHTML=sum;
    }

    function ajaxUpdateCar(count,carid){
        $.ajax({
            url: "/updateCart",
            type: "post",
            dataType:"json",
            data: {
                carid:carid,
                count:count
            },
            success:function (data) {
            }
        });
    }
    computeAll();
    function deleteByIndex(num) {
        var carids=document.getElementsByName("carid");
        var carid=carids[num].value;
        var uri="/deleteCart?carid="+carid;
        location.href=uri;
    }
    function productPay() {
        var totalPrice=document.getElementById("totalPrice");
        var payCount=document.getElementById("pay_count");
        sessionStorage.setItem("totalPrice",totalPrice.innerHTML);
        sessionStorage.setItem("payCount",payCount.innerHTML);
        location.href="/productPay";
    }


</script>
</body>
</html>