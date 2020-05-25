<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/4/23
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台系统登录页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Internship Sign In & Sign Up Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%--    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">--%>
    <link href="${pageContext.request.contextPath}/css/snow.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/css/login1.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- web font -->
    <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

    <!-- //web font -->
    <style type="text/css">
        .back{
            position: absolute;
            top: 1px;
            left: 1px;
        }
    </style>
</head>
<body>
<div class="snow-container">
    <div class="snow foreground"></div>
    <div class="snow foreground layered"></div>
    <div class="snow middleground"></div>
    <div class="snow middleground layered"></div>
    <div class="snow background"></div>
    <div class="snow background layered"></div>
</div>
<div class="back top-buttons-agileinfo">
    <a href="${pageContext.request.contextPath}/view/frontweb/admin.jsp">返回</a>
</div>

<div class="top-buttons-agileinfo">
    <a href="${pageContext.request.contextPath}/view/admin/login1.jsp"  class="active">登录</a><a href="${pageContext.request.contextPath}/view/admin/findpsw1.jsp">找回密码</a>
</div>
<h1>导游管理信息系统</h1>
<div class="main-agileits">
    <!--form-stars-here-->
    <div class="form-w3-agile">
        <h2 class="sub-agileits-w3layouts">管理员登录</h2>
        <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
            <input type="text" name="adId" placeholder="请输入账号" required="required" />
            <input type="password" name="adPsw" placeholder="请输入密码" required="required" />
            <a href="${pageContext.request.contextPath}/view/admin/findpsw1.jsp" class="forgot-w3layouts pull-right">忘记密码 ?</a><br><br>
            <div class="submit-w3l">
                <input type="submit" value="登录">
            </div>
        </form>
    </div>
</div>
<!--//form-ends-here-->
<!-- copyright -->
<div class="copyright w3-agile">
    <p>Copyright © 2020 MZL. All rights reserved | Design by <a target="_blank">MZL</a></p>
</div>
<!-- //copyright -->
<%--<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>--%>

</body>
</html>