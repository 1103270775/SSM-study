<%--
  Created by IntelliJ IDEA.
  User: zyw18
  Date: 2020/8/5
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商品信息添加</title>
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
            <h4 class="modal-title">商品信息添加</h4>
        </div>
        <div class="modal-body">
            <form action="/add_product.do" method="post">
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">pid</span>
                    <input readonly name="pid" value="" type="text" class="form-control" placeholder="商品编号由系统决定" aria-describedby="basic-addon1">
                </div>

                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon2">pname</span>
                    <input name="pname" value="" type="text" class="form-control" placeholder="商品名称" aria-describedby="basic-addon2">

                </div>

                <div class="input-group">
                    <span class="input-group-addon">price</span>
                    <input name="price" value="" type="text" class="form-control"  placeholder="价格" >
                </div>

                <div class="input-group">
                    <span class="input-group-addon">imgurl</span>
                    <input name="imgurl" value="" type="text" class="form-control" placeholder="图片链接" aria-describedby="basic-addon2">

                </div>

                <div class="input-group">
                    <span class="input-group-addon">pdesc</span>
                    <input name="pdesc" value="" type="text" class="form-control"  placeholder="商品描述" >
                </div>

                <div class="input-group">
                    <span class="input-group-addon">cid</span>
                    <input name="cid" value="" type="text" class="form-control" placeholder="商品分类" aria-describedby="basic-addon2">

                </div>
                <div class="modal-footer">
                    <button data-dismiss="modal" class="btn btn-default" type="button"  ><a href="/product_list">关闭</a></button>
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
