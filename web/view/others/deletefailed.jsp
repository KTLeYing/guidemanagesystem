<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/4/25
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>无数据页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css" media="all">
    <script src="${pageContext.request.contextPath}/js/layui.js" type="text/javascript"></script>

    <style type="text/css">
        body{
            background-image: url("/img/banner.jpg");
        }
        .main{
            width: 850px;
            height: 600px;
            margin: 0 auto;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .bt{
            position: absolute;
            top: 3px;
            right: 3px;
        }
    </style>
</head>
<body>
<div class="bt">
    <a class="layui-btn" style="background: rgba(0, 0, 0, 0.5);" href="javascript:history.back(-1);" <%--onclick="javascript:history.back(-1);"--%>>返回</a>
</div>

<div class="main">
    <p style="font-size: 64px;color: #eeeeee; font-weight: bold;text-shadow: 2px 2px 2px #F5F5F5;text-align: center">
        删除失败！<br>
        找不到要删除的记录！
    </p>
</div>
</body>
</html>
