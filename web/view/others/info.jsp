<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/4/24
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/4/24
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>跳转提示页面</title>
    <!-- Meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Adorable Error Page Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
    />
    <script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
    </script>
    <!-- Meta tags -->


    <!-- font-awesome icons -->
    <%--    <link rel="stylesheet" href="css/font-awesome.min.css" />--%>
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //pop-ups-->
    <!--stylesheets-->
    <link href="css/info.css" rel='stylesheet' type='text/css' media="all">
    <!--//style sheet end here-->

    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">

    <style>
        .main{
            position: absolute;
            width: 200px;
            height: 200px;
            top: 400px;
            left: 660px;
        }
    </style>

    <script>
        var num = 3;
        setInterval(function () {
            if (num == 0){
                location.href="<%=request.getContextPath() %>${httpUrl}"
            }else {
                num--;
                var spanDom = document.querySelector("span");
                spanDom.innerHTML = num;
            }

        }, 1000)
    </script>

</head>

<body>

<%--<h1 class="error">页面跳转提示</h1>--%>
<br><br><br><br><br><br>
<div class="top-w3ls">
    <h2 style="font-size: 65px">${title}</h2>
    <br><br>
    <h3 style="font-size: 30px">${info}</h3>
    <p style="font-size: 20px"><span>3</span>秒后跳转至${direction}</p>
    <%--    <p>It looks like that page no longer exist. Would you like to go to <a href="#">homepage</a></p>--%>

    <div class="main">
        <img src="/img/loader.gif">
    </div>
</div>
