<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/4/24
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>删除导游信息页面</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <%--    <link rel="stylesheet" href="css/bootstrap.min.css">--%>
    <%--    <link rel="stylesheet" href="css/font-awesome.min.css">--%>
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/form-elements.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addgui.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/ico/apple-touch-icon-57-precomposed.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css" media="all">
    <script src="${pageContext.request.contextPath}/js/layui.js" type="text/javascript"></script>

    <style type="text/css">
        .bt{
            position: absolute;
            top: 3px;
            right: 3px;
        }
        .core{
            padding-top: 124px;
        }
    </style>

</head>

<body>
<%--<div class="bt">
    <a class="layui-btn" style="background: rgba(0, 0, 0, 0.5);" href="javascript:history.back(-1);" &lt;%&ndash;onclick="javascript:history.back(-1);"&ndash;%&gt;>返回</a>
</div>--%>
<!-- Top content -->

<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <%-- <div class="row">
                 <div class="col-sm-8 col-sm-offset-2 text">
                     <h1><strong>Bootstrap</strong> Login Form</h1>
                     <div class="description">
                         <p>
                             This is a free responsive login form made with Bootstrap.
                             Download it on <a href="#"><strong>AZMIND</strong></a>, customize and use it as you like!
                         </p>
                     </div>
                 </div>
             </div>--%>
            <div class="row core">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>删除导游信息</h3><br>
                            <p>输入要删除的导游ID号:</p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-plane"></i>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form role="form" action="${pageContext.request.contextPath}/DeleteGuiServlet" method="post" class="login-form">
                            <div class="form-group">
                                <label class="sr-only" for="form-password1">导游ID:</label>
                                <input type="text" name="gid" placeholder="请输入要删除的导游ID号" class="form-password form-control" id="form-password1">
                            </div>
                            <button type="submit" class="btn">提交</button>
                        </form>
                    </div>
                </div>
            </div>
            <%--<div class="row">
                <div class="col-sm-6 col-sm-offset-3 social-login">
                    <h3>...or login with:</h3>
                    <div class="social-login-buttons">
                        <a class="btn btn-link-1 btn-link-1-facebook" href="#">
                            <i class="fa fa-facebook"></i> Facebook
                        </a>
                        <a class="btn btn-link-1 btn-link-1-twitter" href="#">
                            <i class="fa fa-twitter"></i> Twitter
                        </a>
                        <a class="btn btn-link-1 btn-link-1-google-plus" href="#">
                            <i class="fa fa-google-plus"></i> Google Plus
                        </a>
                    </div>
                </div>
            </div>--%>
        </div>
    </div>

</div>
<%--<div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>--%>


<!-- Javascript -->
<%--<script src="js/jquery-1.11.1.min.js"></script>--%>
<%--<script src="bootstrap/js/bootstrap.min.js"></script>--%>
<script src="${pageContext.request.contextPath}/js/jquery.backstretch.min.js"></script>
<script src="${pageContext.request.contextPath}/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="${pageContext.request.contextPath}/js/placeholder.js"></script>
<![endif]-->

</body>

</html>
