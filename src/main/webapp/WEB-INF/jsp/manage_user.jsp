<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: zyw18
  Date: 2020/8/5
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>中广数码-用户管理</title>
    <link rel="stylesheet" type="text/css" href="/resource/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/resource/css/main.css">
    <script type="text/javascript" src="/resourcejs/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="/resource/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/resource/js/slide.js"></script>
    <script src="https://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="https://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="https://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>

</head>
<body>
<div class="header_con">
    <div class="header">
        <div class="welcome fl">欢迎来到中广数码!</div>
        <div class="fr">
            <div class="login_info fl">
                欢迎您：<em>${sessionScope.adminname}</em>
            </div>
            <div class="login_btn fl">
                <a href="/login">登录</a>
                <span>|</span>
                <a href="/register">注册</a>
            </div>
            <div class="user_link fl">
                <span>|</span>
                <a href="user_list">用户管理</a>
                <span>|</span>
                <a href="product_list">商品管理</a>
                <span>|</span>
                <a href="#">留言管理</a>
            </div>
        </div>
    </div>
</div>

<div class="search_bar clearfix">
    <a href="index" class="logo fl"><img src="/resource/images/logo.png"></a>
    <div class="sub_page_name fl">|&nbsp;&nbsp;&nbsp;&nbsp;用户管理</div>
    <div class="search_con fr">
        <input type="text" class="input_text fl" name="" placeholder="搜索商品">
        <input type="button" class="input_btn fr" name="" value="搜索">
    </div>
</div>

<table class="table table-bordered">
    <thead>
    <th>序号</th>
    <th>姓名</th>
    <th>用户名</th>
    <th>密码</th>
    <th>邮箱</th>
    <th>电话号码</th>
    <th>操作</th>
    </thead>
    <tbody>
    <c:forEach items="${requestScope.userList}" var="user" varStatus="sta">
        <input type="hidden" name="userTag" value="${user.uid}"/>
        <tr>
            <td contentEditable="false">${sta.index+1}</td>
            <td contentEditable="false" name="updateTag${sta.index}">${user.name}</td>
            <td contentEditable="false" name="updateTag${sta.index}">${user.username}</td>
            <td contentEditable="false" name="updateTag${sta.index}">${user.password}</td>
            <td contentEditable="false" name="updateTag${sta.index}">${user.email}</td>
            <td contentEditable="false" name="updateTag${sta.index}">${user.phone}</td>

            <td>
                <a><button   type="button" class="btn btn-success" onclick="addUser()">新增</button></a>
                <a ><button id="updateButton" onclick="updateUser(${sta.index})"   type="button" class="btn btn-primary">修改</button></a>
                <a ><button  onclick="deleteByIndex(${sta.index})"  type="button" class="btn btn-danger">删除</button></a>
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>
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
    function addUser() {
        location.href="/add_user";
    }
    function updateUser(num) {
        var uids=document.getElementsByName("userTag");
        var uid=uids[num].value;
       location.href="/update_user?uid="+uid;
    }
    function deleteByIndex(num) {
        var uids=document.getElementsByName("userTag");
        var uid=uids[num].value;
        var uri="/deleteUser?uid="+uid;
        location.href=uri;
    }
</script>
</body>
</html>

