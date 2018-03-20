<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/27
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" media="screen">

    <!-- Bootstrap Admin Theme -->
    <link href="css/bootstrap-admin-theme.css" rel="stylesheet" media="screen">

    <!-- Custom styles -->
    <style type="text/css">
        .alert{
            margin: 0 auto 20px;
        }
    </style>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>

    <![endif]-->

</head>
<body class="bootstrap-admin-without-padding">
<div class="container">
    <div class="row" style="margin-top: 120px;">
        <form id="loginfrom" class="bootstrap-admin-login-form" >
            <h1>登录</h1>
            <div class="form-group">
                <input class="form-control" type="text" name="uname" placeholder="用户名">
            </div>
            <div class="form-group">
                <input class="form-control" type="password" name="upwd" placeholder="密码">
            </div>
        </form>
    </div>
    <button class="btn btn-lg btn-primary" onclick="login()" style="width: 340px; margin-left: 400px;margin-top: 10px">提交</button>
</div>


<script src="bootstrap/jquery.min.js"></script>
<script src="bootstrap/bootstrap.min.js"></script>

<script type="text/javascript">



function login() {
             $.ajax({
                url:"/login.action",
                data:$('#loginfrom').serialize(),
                dataType:"JSON",
                type: "POST",
                success:function (result) {
                    window.location.replace("ce.jsp");
                }
            });

        }
</script>
</body>

</html>
