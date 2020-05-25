<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/4/23
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta name="keywords" content="scclui框架">
    <meta name="description" content="scclui为轻量级的网站后台管理系统模版。">
    <title>后台首页</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mainview.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/skin/qingxin/skin.css" id="layout-skin"/>

</head>

<body>
<div class="layout-admin">
    <header class="layout-header">
        <span class="header-logo">导游管理信息系统</span>
        <a class="header-menu-btn" href="javascript:;"><i class="icon-font">&#xe600;</i></a>
        <ul class="header-bar">
            <li class="header-bar-role"><a href="javascript:;">超级管理员</a></li>
            <li class="header-bar-nav">
                <a href="javascript:;">${adName}<i class="icon-font" style="margin-left:5px;">&#xe60c;</i></a>
                <ul class="header-dropdown-menu">
<%--                    <li><a href="javascript:;">个人信息</a></li>--%>
<%--                    <li><a href="javascript:;">切换账户</a></li>--%>
                    <li><a href="${pageContext.request.contextPath}/view/admin/login1.jsp">退出</a></li>
                </ul>
            </li>
            <li class="header-bar-nav">
                <a href="javascript:;" title="换肤"><i class="icon-font">&#xe608;</i></a>
                <ul class="header-dropdown-menu right dropdown-skin">
                    <li><a href="javascript:;" data-val="qingxin" title="清新">清新</a></li>
                    <li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
                    <li><a href="javascript:;" data-val="molv" title="墨绿">墨绿</a></li>

                </ul>
            </li>
        </ul>
    </header>
    <aside class="layout-side">
        <ul class="side-menu">

        </ul>
    </aside>

    <div class="layout-side-arrow"><div class="layout-side-arrow-icon"><i class="icon-font">&#xe60d;</i></div></div>

    <section class="layout-main">
        <div class="layout-main-tab">
            <button class="tab-btn btn-left"><i class="icon-font">&#xe60e;</i></button>
            <nav class="tab-nav">
                <div class="tab-nav-content">
                    <a href="javascript:;" class="content-tab active" data-id="${pageContext.request.contextPath}/view/others/welcome.jsp">首页</a>
                </div>
            </nav>
            <button class="tab-btn btn-right"><i class="icon-font">&#xe60f;</i></button>
        </div>
        <div class="layout-main-body">
            <iframe class="body-iframe" id="iframe0" name="iframe0" width="100%" height="99%" src="${pageContext.request.contextPath}/view/others/welcome.jsp" frameborder="0" data-id="${pageContext.request.contextPath}/view/others/welcome.jsp" seamless></iframe>
        </div>
    </section>
    <div class="layout-footer">Copyright © 2020 MZL. All Rights Reserved.</div>
</div>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery-1.9.0.min.js"></script>--%>
<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/mainview.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/mainview-util.js"></script>
</body>
</html>
