<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/5/1
  Time: 23:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导游中心</title>
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
                <li><a href="${pageContext.request.contextPath}/view/frontweb/accomdation.jsp">住宿</a></li>
                <li><a href="${pageContext.request.contextPath}/view/frontweb/guide.jsp" class="active">导游中心</a></li>
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
<!-- news -->
<div id="news" class="news">
    <div class="container">
        <div class="news-text">
            <h3>修改密码</h3>
            <p>导游可以输入修改自己的登录密码</p>
        </div>
        <div class="news-grids">
            <%--<div class="col-md-3 news-grid">
                <h4>子洲西峰寺</h4>
                <span>2020.02.07</span>
                <img src="/images/ticket.jpg" alt="">
                <div class="news-info">
                    <p>子洲县瓜园则湾乡政府东北2公里处有一块山地，名叫芦草坛，其上有一西峰寺，依山而建。北临乏牛山，西北与柏全山相望。芦草坛虽不雄伟壮观，却也峻峭，人若站于其顶眺望，视野倒也开阔，更因其西峰寺而遐迩闻名。西峰寺坐西北面东南，占地约3亩，一个独院。正殿由三孔拱形洞组成，纯砖结构，顶呈硬山式，用黄色琉璃瓦铺顶，飞檐翘角，兽头独尊，遥遥相望，顶上中有三层小0，独特精致,引人注目。正殿走廊四柱支撑，朱柱彩壁，画栋雕梁，十分生动。</p>
                </div>
            </div>
            <div class="col-md-3 news-grid">
                <h4>子洲大洪寺</h4>
                <span>2020.02.07</span>
                <img src="/images/ticket.jpg" alt="">
                <div class="news-info">
                    <p>子洲城西五里大理河北岸有大洪寺。“据庙内碑记载，明景泰初年，信士诸公创修庙于底石崖，延及成化年间乃修葺于中峰之巅，后世多次重修，1917年——1920年再重修葺”。(1958年文物普查记录)其寺据今已有550多年的历史了。大洪寺面南而建，与大理河南岸之青龙山、克戎寨(今张家寨)遥遥相对。</p>
                </div>
            </div>
            <div class="col-md-3 news-grid">
                <h4>淮宁河</h4>
                <span>2020.02.07</span>
                <img src="/images/ticket.jpg" alt="">
                <div class="news-info">
                    <p>淮宁河无定河，陕北最著名的一条河。它从遥远的三边高原西南部的白于山脉奔腾而来，它在陡峭的石壁间、狭窄的河谷里咆哮冲撞，夺路东下，在莽莽的山沟大川上，又有无数的大河小溪从四面八方汇入了它博大的怀抱。淮宁河，就是这无数支流中的一条河流。它发源于子长县石家湾乡高柏山麓的枣树畔村，流经子长、子洲、绥德三县的十个乡镇，近百个村庄，最后从绥德县邓家楼村入无定河，全长85．2公里，流域总面积1222平方公里。</p>
                </div>
            </div>
            <div class="col-md-3 news-grid">
                <h4>子洲柏全山</h4>
                <span>2020.02.07</span>
                <img src="/images/ticket.jpg" alt="">
                <div class="news-info">
                    <p>柏全山位于瓜园则湾乡政府驻地南3公里处。据传说，此山曾有4株枝叶繁茂的大柏树，故名柏全山。柏全山北高南低，山巅上有一古庙，主奉天皇、地皇、人皇，简称为“三皇庙”。坐北面南，正殿为三孔硬山形顶拱式砖窑，整个寺院虽然面积不大，但布局合理，层次分明，有泥塑五十余尊，保持有晚清风格。</p>
                </div>
            </div>--%>
            <form action="${pageContext.request.contextPath}/GuiAlterPswServlet" method="post" class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <label>密码：</label>
                    <input class="form-control" type="password" name="psw" placeholder="请输入密码" required="required">
                </div>
                <div class="form-group">
                    <label>确认密码：</label>
                    <input class="form-control" type="password" name="psw1" placeholder="请确认密码" required="required">
                </div>
                <div class="form-group">
                    <button class="btn" style="background: #ffcc33">提交</button>
                </div>
            </form>
            <div class="clearfix"> </div>
        </div>

        <div style="background: red; margin-left: 395px; width: 349px">
            <p class="text-center" style="font-weight: bold">
                ${message}
            </p>
        </div>

    </div>
</div>
<!-- //news -->
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