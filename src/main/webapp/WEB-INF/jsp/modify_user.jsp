<%--
  Created by IntelliJ IDEA.
  User: zyw18
  Date: 2020/8/5
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户信息修改</title>
    <script src="https://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="https://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="https://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <style>
        div{
            margin:5px;
        }
    </style>

</head>

<body>
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title">用户信息修改</h4>
        </div>
        <div class="modal-body">
            <form action="/update_user.do" method="post">
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">uid</span>
                    <input readonly id="uid" name="uid" value="${requestScope.user.uid}" type="text" class="form-control" placeholder="用户编号" aria-describedby="basic-addon1">
                </div>

                <div class="input-group">
                    <span class="input-group-addon">name</span>
                    <input id="name" name="name" value="${requestScope.user.name}" type="text" class="form-control" placeholder="姓名" aria-describedby="basic-addon2">
                </div>

                <div class="input-group">
                    <span class="input-group-addon" >username</span>
                    <input id="username" name="username" value="${requestScope.user.username}" type="text" class="form-control" placeholder="用户名称" aria-describedby="basic-addon2">
                </div>

                <div class="input-group">
                    <span class="input-group-addon">password</span>
                    <input id="password" name="password" value="${requestScope.user.password}" type="text" class="form-control"  placeholder="密码" >
                </div>



                <div class="input-group">
                    <span class="input-group-addon">email</span>
                    <input id="email" name="email" value="${requestScope.user.email}" type="text" class="form-control"  placeholder="电子邮箱" >
                </div>

                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon2">phone</span>
                    <input id="phone" name="phone" value="${requestScope.user.phone}" type="text" class="form-control" placeholder="电话" aria-describedby="basic-addon2">

                </div>
                <div class="modal-footer">
                    <button data-dismiss="modal" class="btn btn-default" type="button"  ><a href="/user_list">关闭</a></button>
                    <button class="btn btn-primary" type="submit">提交</button>
                </div>
            </form>
        </div>

    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
<script type="text/javascript">

</script>
</body>
</html>
