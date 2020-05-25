<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/5/1
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>导游信息</title>
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

    <style type="text/css">
        .bt {
            position: absolute;
            top: 192px;
            right: 10px;
            /*width: 70px;*/
            /*height: 30px;*/
        }
        td, th{
            text-align: center;
            /*height: 40px;*/
            /*color: black;*/
        }
    </style>
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
                <li><a href="${pageContext.request.contextPath}/view/frontweb/accomdation.jsp" >住宿</a></li>
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
<!-- //banner -->
<div class="bt">
    <button class="btn btn-default" style="background: #ffcc33" onclick="javascript:window.location.href='${pageContext.request.contextPath}/view/guide/guialterpsw.jsp'">
        修改密码
    </button>
</div>
<!-- about -->
<!-- about-top -->
<div class="about-top">
    <!-- container -->
    <div class="container">
        <div class="about-info">
            <h3>导游中心&nbsp;&nbsp;<span style="font-size: 20px; color: #ffcc33">${gname}，欢迎您！</span></h3>
            <p>下面分别是导游的个人信息、负责的景点信息和负责的旅行信息</p>
        </div>
        <h1 style="color: black; font-size: 40px">导游个人信息</h1>
        <br>
        <div class="about-top-grids">
            <table class="table table-striped table-hover">
                <thead style="background: #9CB2FB">
                <th style="font-size: 17px">导游ID</th>
                <th style="font-size: 17px">姓名</th>
                <th style="font-size: 17px">性别</th>
                <th style="font-size: 17px">年龄</th>
                <th style="font-size: 17px">月薪</th>
                <th style="font-size: 17px">工龄</td>
                <th style="font-size: 17px">手机号码</th>
                </thead>

                <tr>
                    <td>${guide.gid}</td>
                    <td>${guide.gname}</td>
                    <td>${guide.sex}</td>
                    <td>${guide.age}</td>
                    <td>${guide.salary}</td>
                    <td>${guide.workYears}</td>
                    <td>${guide.phoneNum}</td>
                </tr>

            </table>
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
        <h1 style="color: black; font-size: 40px; color: white">负责的景点信息</h1>
        <div class="team-grids">
            <table class="table table-striped table-hover">
                <thead style="background: #9CB2FB">
                <th style="font-size: 17px">编号</th>
                <th style="font-size: 17px">景点ID</th>
                <th style="font-size: 17px">景点名称</th>
                <th style="font-size: 17px">等级</th>
                <th style="font-size: 17px">类型</th>
                <th style="font-size: 17px">收费标准</th>
                <th style="font-size: 17px">评分</th>
                <th style="font-size: 17px">开放时间</th>
                <th style="font-size: 17px">地理位置</th>
                </thead>

                <c:forEach items="${viewList}" var="view" varStatus="s">
                    <tr>
                        <td>${s.count}</td>
                        <td>${view.vid}</td>
                        <td>${view.vname}</td>
                        <td>${view.ranking}</td>
                        <td>${view.type}</td>
                        <td>${view.price}</td>
                        <td>${view.grade}</td>
                        <td>${view.openTime}</td>
                        <td>${view.location}</td>
                    </tr>
                </c:forEach>

            </table>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //about-team -->
<div class="about-top">
    <!-- container -->
    <div class="container">
        <br><br><br><br>
        <h1 style="color: black; font-size: 40px">负责的旅行信息</h1>
        <br>
        <div class="about-top-grids">
            <table class="table table-striped table-hover">
                <thead style="background: #9CB2FB">
                <th style="font-size: 17px">编号</th>
                <th style="font-size: 17px">景点名称</th>
                <th style="font-size: 17px">旅行时间</th>
                <th style="font-size: 17px">旅行期限</th>
                <th style="font-size: 17px">旅游团人数</th>
                <th style="font-size: 17px">住所</th>
                <th style="font-size: 17px">出发地</th>
                <th style="font-size: 17px">目的地</th>
                <th style="font-size: 17px">交通工具</th>
                </thead>

                <c:forEach items="${travelList}" var="travel" varStatus="s">
                    <tr>
                        <td>${s.count}</td>
                        <td>${travel.vname}</td>
                        <td>${travel.visitTime}</td>
                        <td>${travel.visitLength}</td>
                        <td>${travel.visitNum}</td>
                        <td>${travel.hotel}</td>
                        <td>${travel.startPoint}</td>
                        <td>${travel.destination}</td>
                        <td>${travel.transportation}</td>
                    </tr>
                </c:forEach>

            </table>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- //container -->
</div>
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


