<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/3/3
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title> 景点信息列表</title>
    <meta charset="utf-8">
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css" media="all">
    <script src="${pageContext.request.contextPath}/js/layui.js" type="text/javascript"></script>

    <style type="text/css">
        td, th{
            text-align: center;
            height: 40px;
            color: black;
        }
    </style>

    <script type="text/javascript">
        function deleteOne(vid) {
            //用户安全提示
            if (confirm("您确定要删除吗?")){
                location.href = "${pageContext.request.contextPath}/DeleteViewServlet?vid=" + vid;
            }
        }

        window.onload = function () {
            //给删除选择按钮添加事件
            document.getElementById("delSelected").onclick = function () {
                //用户安全提示
                if (confirm("您确定要删除选中条目吗?")){
                    var flag = false;
                    var checkBoxs = document.getElementsByName("vid");
                    for (var i = 0; i < checkBoxs.length; i++){
                        //检查是否有复选框选中
                        if (checkBoxs[i].checked) {
                            flag = true;
                            break;
                        }
                    }
                    //如果有复选框被选中
                    if (flag){
                        //表单提交
                        document.getElementById("form").submit();
                    }
                }
            }

            //获取第一个复选框
            document.getElementById("firstCb").onclick = function () {
                //获取下面所有的复选框
                var checkBoxs = document.getElementsByName("vid");
                //遍历
                for (var i = 0; i < checkBoxs.length; i++){
                    //设置这些复选框的状态 = 第一个复选框的状态
                    checkBoxs[i].checked = this.checked;
                }
            }
        }

    </script>
</head>
<body>
<br>
<div class="pull-left">
    <form class="form-inline" action="${pageContext.request.contextPath}/ViewListByPageServlet?curPage=1&rows=8" method="post">
        <div class="form-group">
            <label for="inputSex">名称</label>
            <input type="text" name="vname1" value="${vname}" class="form-control" id="inputSex" placeholder="输入景点名称查找">
        </div>
        <div class="form-group">
            <label for="inputName">类型</label>
            <input type="text" name="type1" value="${type}" class="form-control" id="inputName" placeholder="输入景点类型查找">
        </div>
        <div class="form-group">
            <label for="inputClsee">位置</label>
            <input type="text" name="location1" value="${location}" class="form-control" id="inputClsee" placeholder="输入景点地理位置查找">
        </div>
        <button type="submit" class="btn btn-primary">查询</button>
    </form>
</div>

<div class="pull-right">
    <a class="btn btn-success" href="${pageContext.request.contextPath}/view/admin/addview1.jsp">添加景点</a>
    <a class="btn btn-danger" href="javascript:void(0);" id="delSelected">删除选中</a>
</div>

<br><br>
<form id="form" action="${pageContext.request.contextPath}/DelSelectedViewServlet" method="post">
    <table class="layui-table table-striped " lay-skin="line">
        <caption >
            景点信息
        </caption>
        <thead>
        <tr style="background: #33aecc; font-weight: bold" >
            <td><input type="checkbox" id="firstCb"></td>
            <td style=" font-size: 17px">编号</td>
            <td style=" font-size: 17px">景点ID</td>
            <td style=" font-size: 17px">景点名称</td>
            <td style=" font-size: 17px">等级</td>
            <td style=" font-size: 17px">类型</td>
            <td style=" font-size: 17px">收费标准</td>
            <td style=" font-size: 17px">评分</td>
            <td style=" font-size: 17px">开放时间</td>
            <td style=" font-size: 17px">地理位置</td>
            <td style=" font-size: 17px">操作</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${viewPage.arrayList}" var="view" varStatus="s">
            <tr>
                <td><input type="checkbox" name="vid" value="${view.vid}"></td>
                <td style=" font-size: 16px">${s.count}</td>
                <td style=" font-size: 16px">${view.vid}</td>
                <td style=" font-size: 16px">${view.vname}</td>
                <td style=" font-size: 16px">${view.ranking}</td>
                <td style=" font-size: 16px">${view.type}</td>
                <td style=" font-size: 16px">${view.price}</td>
                <td style=" font-size: 16px">${view.grade}</td>
                <td style=" font-size: 16px">${view.openTime}</td>
                <td style=" font-size: 16px">${view.location}</td>
                <td>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/FindViewByIdServlet?vid=${view.vid}">修改</a>
                    <a class="btn btn-danger"  href="javascript:deleteOne('${view.vid}');">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</form>


<div>
    <nav aria-label="Page navigation" class="pull-left">
        <ul class="pagination">
            <c:if test="${viewPage.curPage == 1}">
            <li class="disabled">
                </c:if>
                <c:if test="${viewPage.curPage != 1}">
            <li>
                </c:if>
                <a href="${pageContext.request.contextPath}/ViewListByPageServlet?curPage=${viewPage.curPage - 1}&rows=8&vname1=${vname}&type1=${type}&location1=${location}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>

            <c:forEach begin="1" end="${viewPage.totalPage}" var="i">
                <c:if test="${viewPage.curPage == i}">
                    <li class="active"><a href="${pageContext.request.contextPath}/ViewListByPageServlet?curPage=${i}&rows=8&vname1=${vname}&type1=${type}&location1=${location}">${i}</a></li>
                </c:if>
                <c:if test="${viewPage.curPage != i}">
                    <li><a href="${pageContext.request.contextPath}/ViewListByPageServlet?curPage=${i}&rows=8&vname1=${vname}&type1=${type}&location1=${location}">${i}</a></li>
                </c:if>
            </c:forEach>

            <c:if test="${viewPage.curPage == viewPage.totalPage}">
            <li class="disabled">
                </c:if>
                <c:if test="${viewPage.curPage != viewPage.totalPage}">
            <li>
                </c:if>
                <a href="${pageContext.request.contextPath}/ViewListByPageServlet?curPage=${viewPage.curPage + 1}&rows=8&vname1=${vname}&type1=${type}&location1=${location}" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>

            <span style="font-size: 23px; margin-left: 5px">共${viewPage.totalCount}条记录，共${viewPage.totalPage}页</span>
        </ul>
    </nav>

</div>
</body>
</html>

