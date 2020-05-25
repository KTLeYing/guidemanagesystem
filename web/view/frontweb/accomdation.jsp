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
    <title>住宿</title>
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
                    <%--<li><a href="#" class="facebook"> </a></li>
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
                <li><a href="${pageContext.request.contextPath}/IndexServlet">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/ViewServlet">景区</a></li>
                <li><a href="${pageContext.request.contextPath}/view/frontweb/food.jsp">美食</a></li>
<%--                <li><a href="${pageContext.request.contextPath}/view/frontweb/food.jsp">交通</a></li>--%>
                <li><a href="${pageContext.request.contextPath}/view/frontweb/accomdation.jsp" class="active">住宿</a></li>
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
            <h3>住宿推荐</h3>
            <p>作为导游，要提前熟悉各个地方的住宿条件，才能更好保证旅客的作息条件和质量</p>
        </div>
        <h1 style="color: black; font-size: 55px">著名民宿</h1>
        <br>
        <div class="about-top-grids">
            <div class="col-md-8 about-top-grid">
                <h4>宜美人家农家乐</h4>
                <p>
                    房间内部情况介绍：4个标间，6个大床房，每个标间都有卫生间，大床房部分有卫生间，每个房间配有电视机，空调，无线网<br>
                    本店特色：停车位很多，停车方便，离山很近，爬山方便<br>
                    周边生活配套：登山，玩水，看田园风光<br>
                    周围景点：竹海，陶祖圣境<br>
                    房型：别墅<br>
                    地理位置：宜兴市湖父镇龙山村宜美人家<br>
                    综合评分：4.0(满分5分)<br>
                    价位：￥2010/套&nbsp;起
                </p>
            </div>
            <div class="col-md-4 about-top-grid">
                <img src="/images/ms3.jpg"   alt="" height="255"/>
            </div>
            <div class="clearfix"> </div>
        </div>
        <br><br>
        <div class="about-top-grids">
            <div class="col-md-8 about-top-grid">
                <h4>地中海海景大床房</h4>
                <p>
                    房间内部情况介绍:全实木家具，120支床品，品牌卫浴，空调。写字台，茶几，电视一应俱全<br>
                    交通:大丽路往东进入月华路，2路车终点站往南100米在临海雅苑处左转50米即到<br>
                    周边生活配套:菜市场，小超市，湿地公园，公交车站点<br>
                    周围景点:湿地公园，大理古城，喜洲，崇圣寺三塔，苍山，天龙八部影视城，双廊<br>
                    房型：客栈<br>
                    地理位置：云南省大理白族自治州大理镇才村码头滨湖生态园内<br>
                    综合评分：4.0(满分5分)<br>
                    价位：￥880/间&nbsp;起
                </p>
            </div>
            <div class="col-md-4 about-top-grid">
                <img src="/images/ms2.jpg"   alt="" height="255"/>
            </div>
            <div class="clearfix"> </div>
        </div>
        <br><br>
        <div class="about-top-grids">
            <div class="col-md-8 about-top-grid">
                <h4>竹海阮氏农家乐</h4>
                <p>
                    房间内部情况介绍:一楼有客厅、餐厅、棋牌室，背靠山林竹海，带有私家花园，曲径通幽，有凉亭.......<br>
                    周围景点:宜兴竹海、湖父深氧公园<br>
                    其他:提供各种餐饮定桌服务，有大圆桌包房2间，厨艺精湛，广受好评<br>
                    房型：别墅<br>
                    地理位置：宜兴市湖㳇镇竹海新村阮氏农家乐（近竹海风景区）<br>
                    综合评分：4.0(满分5分)<br>
                    价位：￥600/间&nbsp;起
                </p>
            </div>
            <div class="col-md-4 about-top-grid">
                <img src="/images/ms1.jpg"   alt="" height="255"/>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //about-top -->
<!-- about-team -->
<div class="about-team">
    <!-- container -->
    <div class="container">
        <h4>精品酒店</h4>
        <div class="team-grids">
            <div class="col-md-3 team-grid">
                <img src="/images/su2.PNG" alt="">
                <h6>宜园精品酒店</h6>
                <p>高级标间、园林大床、高级大床、豪华大床、双人浪漫套房、行政套房、双人浪漫豪华套房</p>
            </div>
            <div class="col-md-3 team-grid">
                <img src="/images/su3.PNG" alt="">
                <h6>锦堂行馆</h6>
                <p>高级大床房、豪华大床房、豪华套房、中央套房</p>
            </div>
            <div class="col-md-3 team-grid">
                <img src="/images/su4.PNG" alt="">
                <h6>望津里精品酒店</h6>
                <p>高级标间、大床房、浪漫双人套房</p>
            </div>
            <div class="col-md-3 team-grid">
                <img src="/images/su5.PNG" alt="">
                <h6>枕水度假酒店</h6>
                <p>标准间、大床房、套房、民宿二房套A、民宿二房套B、民宿三房套A、民宿标间、民宿四房套、民宿大床、总统套房、司陪标间</p>
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


