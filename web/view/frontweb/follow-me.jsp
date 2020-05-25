<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/5/1
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>跟我来</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Transit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%--    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />--%>
    <!-- Custom Theme files -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/lightbox.css">
<%--    <script src="js/jquery-1.11.1.min.js"> </script>--%>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
</head>
<body>
<!-- banner -->
<div class="banner a-banner">
    <!-- container -->
    <div class="container">
        <div class="header">
            <div class="logo">
                <a href="${pageContext.request.contextPath}/IndexServlet">导游管理</a>
            </div>
            <div class="icons">
                <ul>
                   <%-- <li><a href="#" class="facebook"> </a></li>
                    <li><a href="#" class="facebook twitter"> </a></li>
                    <li><a href="#" class="facebook chrome"> </a></li>
                    <li><a href="#" class="facebook dribbble"> </a></li>--%>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="top-nav">
            <span class="menu">菜单</span>
            <ul class="nav1">
                <li><a href="${pageContext.request.contextPath}/IndexServlet" class="active">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/ViewServlet">景区</a></li>
                <li><a href="${pageContext.request.contextPath}/view/frontweb/food.jsp">美食</a></li>
<%--                <li><a href="${pageContext.request.contextPath}/view/frontweb/food.jsp">交通</a></li>--%>
                <li><a href="${pageContext.request.contextPath}/view/frontweb/accomdation.jsp">住宿</a></li>
                <li><a href="${pageContext.request.contextPath}/view/frontweb/guide.jsp">导游中心</a></li>
<%--                <li><a href="#news" class="scroll">导游中心</a></li>--%>
                <li><a href="${pageContext.request.contextPath}/view/frontweb/admin.jsp">管理员中心</a></li>
            </ul>
            <!-- script-for-menu -->
            <script>
                $( "span.menu" ).click(function() {
                    $( "ul.nav1" ).slideToggle( 300, function() {
                        // Animation complete.
                    });
                });
            </script>
            <!-- /script-for-menu -->
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //banner -->
<!-- about -->
<!-- about-top -->
<div class="about-top">
    <!-- container -->
    <div class="container">
        <div class="about-info">
            <h3>导游宣传片</h3>
            <p>点击视频观看</p>
        </div>
        <div class="mov-liu">
            <object data="/video/guide.mp4" height="600px" width="100%"></object>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //about-top -->
<!-- about-team -->
<div class="about-team">
    <!-- container -->
    <div class="container">
        <h4>游玩攻略</h4>
        <div class="team-grids">
            <div class="col-md-3 team-grid">
                <img src="/images/fo1.PNG" alt="">
                <h6>子洲西峰寺</h6>
                <p>如果在这个夏天，给你一个机会重新回到小时候，你会和记忆里的哪些小伙伴打招呼？又会重温哪些童年趣事呢？</p>
            </div>
            <div class="col-md-3 team-grid">
                <img src="/images/fo2.PNG" alt="">
                <h6>子洲柏全山</h6>
                <p>三月三，庙门开，乡下蚕娘出门来，东亦逛、西亦颠，轧朵蚕花回家来……”淳朴的民谣传唱的是乌镇蚕农世代祈祷蚕桑丰收的愿望。</p>
            </div>
            <div class="col-md-3 team-grid">
                <img src="/images/fo3.PNG" alt="">
                <h6>子洲大洪寺</h6>
                <p>为了庆祝双节，乌镇乌村将在9月23日，秋分当日开展以“农民丰收，月圆中秋”为主题的庆祝活动，邀请四方好友共度佳节。</p>
            </div>
            <div class="col-md-3 team-grid">
                <img src="/images/fo4.PNG" alt="">
                <h6>淮宁河</h6>
                <p>春风十里，春天是一个多风的季节，东风吹得枝上花始华，粉墙黛瓦之间逐渐生出了一种莫名的心悸。</p>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //about-team -->
<!-- footer -->
<div class="footer">
    <!-- container -->
    <div class="container">
        <div class="col-md-6 footer-left">
            <h3>目标</h3>
            <br>
            <%--<form>
                <input type="text" placeholder="电子邮件,例如1435469178@qq.com" required="">
                <input type="submit" value="提交">
            </form>--%>
            <p style="color: white">
                专为导游打造的旅行管理平台
            </p>
        </div>
        <div class="col-md-3 footer-middle">
            <h3>地址</h3>
            <div class="address">
                <p>
                    广东省湛江市岭南师范学院
                </p>
            </div>
            <div class="phone">
                <p>0573-88731088</p>
            </div>
        </div>
        <div class="col-md-3 footer-right">
            <div class="f-logo">
                <a href="${pageContext.request.contextPath}/IndexServlet">导游管理</a>
            </div>
            <%--            <p>陕北黄土高原丘陵沟壑区腹地，榆林市南缘</p>--%>
        </div>
        <div class="clearfix"> </div>
    </div>
    <!-- //container -->
</div>
<!-- //footer -->
<!-- copyright -->
<div class="copyright">
    <!-- container -->
    <div class="container">
        <div class="copyright-left">
            <p>Copyright © 2020 MZL. All rights reserved.</p>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- copyright -->
</body>
</html>
