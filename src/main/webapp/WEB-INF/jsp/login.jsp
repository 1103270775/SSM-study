<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>中广数码-登录</title>
    <link rel="stylesheet" type="text/css" href="../../resource/css/reset.css">
    <link rel="stylesheet" type="text/css" href="../../resource/css/main.css">
</head>
<body>
<div class="login_top clearfix">
    <a href="/index" class="login_logo"><img src="../../resource/images/logo.png"></a>
</div>

<div class="login_form_bg">
    <div class="login_form_wrap clearfix">
        <div class="login_banner fl"></div>
        <div class="slogan fl">日夜兼程 · 急速送达</div>
        <div class="login_form fr">
            <div class="login_title clearfix">
                <h1>用户登录</h1>
                <a href="/register">立即注册</a>
            </div>
            <div style="text-align: center;color: red;font-size: 12px">${requestScope.msg}</div>
            <div class="form_input">

                <form action="/login.do" method="post">

                    <input value="abc" type="text" name="username" class="name_input" placeholder="请输入用户名">

                    <input value="456" type="password" name="password" class="pass_input" placeholder="请输入密码">

                    <div class="more_input clearfix">
                        <input type="checkbox" checked >
                        <label>记住密码</label>
                        <a href="/backLogin">管理员登录</a>
                    </div>
                    <input type="submit" name="" value="登录" class="input_submit">
                    
                </form>

            </div>
        </div>
    </div>
</div>

<div class="footer no-mp">
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