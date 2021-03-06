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
    <title> 导游信息列表</title>
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
        function deleteOne(gid) {
            //用户安全提示
            if (confirm("您确定要删除吗?")){
                location.href = "${pageContext.request.contextPath}/DeleteGuiServlet?gid=" + gid;
            }
        }

        window.onload = function () {
            //给删除选择按钮添加事件
            document.getElementById("delSelected").onclick = function () {
                //用户安全提示
                if (confirm("您确定要删除选中条目吗?")){
                    var flag = false;
                    var checkBoxs = document.getElementsByName("gid");
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
                var checkBoxs = document.getElementsByName("gid");
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
    <form class="form-inline" action="${pageContext.request.contextPath}/GuiListByPageServlet?curPage=1&rows=8" method="post">
        <div class="form-group">
            <label for="inputName">ID</label>
            <input type="text" name="gid1" value="${gid}" class="form-control" id="inputName" placeholder="输入导游ID查找">
        </div>
        <div class="form-group">
            <label for="inputSex">姓名</label>
            <input type="text" name="gname1" value="${gname}" class="form-control" id="inputSex" placeholder="输入姓名查找">
        </div>
        <div class="form-group">
            <label for="inputClsee">性别</label>
            <input type="text" name="sex1" value="${sex}" class="form-control" id="inputClsee" placeholder="输入性别查找">
        </div>
        <button type="submit" class="btn btn-primary">查询</button>
    </form>
</div>

<div class="pull-right">
    <a class="btn btn-success" href="${pageContext.request.contextPath}/view/admin/addgui1.jsp">添加导游</a>
    <a class="btn btn-danger" href="javascript:void(0);" id="delSelected">删除选中</a>
</div>

<br><br>
<form id="form" action="${pageContext.request.contextPath}/DelSelectedGuiServlet" method="post">
    <table class="layui-table table-striped " lay-skin="line">
        <caption >
            导游信息
        </caption>
        <thead>
        <tr style="background: #33aecc; font-weight: bold" >
            <td><input type="checkbox" id="firstCb"></td>
            <td style=" font-size: 17px">编号</td>
            <td style=" font-size: 17px">导游ID</td>
            <td style=" font-size: 17px">姓名</td>
            <td style=" font-size: 17px">性别</td>
            <td style=" font-size: 17px">年龄</td>
            <td style=" font-size: 17px">月薪</td>
            <td style=" font-size: 17px">工龄</td>
            <td style=" font-size: 17px">手机号码</td>
            <td style=" font-size: 17px">操作</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${guidePage.arrayList}" var="guide" varStatus="s">
            <tr>
                <td><input type="checkbox" name="gid" value="${guide.gid}"></td>
                <td style=" font-size: 16px">${s.count}</td>
                <td style=" font-size: 16px">${guide.gid}</td>
                <td style=" font-size: 16px">${guide.gname}</td>
                <td style=" font-size: 16px">${guide.sex}</td>
                <td style=" font-size: 16px">${guide.age}</td>
                <td style=" font-size: 16px">${guide.salary}</td>
                <td style=" font-size: 16px">${guide.workYears}</td>
                <td style=" font-size: 16px">${guide.phoneNum}</td>
                <td>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/FindGuiByIdServlet?gid=${guide.gid}">修改</a>
                    <a class="btn btn-danger"  href="javascript:deleteOne('${guide.gid}');">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</form>


<div>
    <nav aria-label="Page navigation" class="pull-left">
        <ul class="pagination">
            <c:if test="${guidePage.curPage == 1}">
            <li class="disabled">
            </c:if>
            <c:if test="${guidePage.curPage != 1}">
            <li>
            </c:if>
                <a href="${pageContext.request.contextPath}/GuiListByPageServlet?curPage=${guidePage.curPage - 1}&rows=8&gid1=${gid}&gname1=${gname}&sex1=${sex}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>

            <c:forEach begin="1" end="${guidePage.totalPage}" var="i">
                <c:if test="${guidePage.curPage == i}">
                    <li class="active"><a href="${pageContext.request.contextPath}/GuiListByPageServlet?curPage=${i}&rows=8&gid1=${gid}&gname1=${gname}&sex1=${sex}">${i}</a></li>
                </c:if>
                <c:if test="${guidePage.curPage != i}">
                    <li><a href="${pageContext.request.contextPath}/GuiListByPageServlet?curPage=${i}&rows=8&gid1=${gid}&gname1=${gname}&sex1=${sex}">${i}</a></li>
                </c:if>
            </c:forEach>

            <c:if test="${guidePage.curPage == guidePage.totalPage}">
            <li class="disabled">
            </c:if>
            <c:if test="${guidePage.curPage != guidePage.totalPage}">
            <li>
             </c:if>
                <a href="${pageContext.request.contextPath}/GuiListByPageServlet?curPage=${guidePage.curPage + 1}&rows=8&gid1=${gid}&gname1=${gname}&sex1=${sex}" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>

            <span style="font-size: 23px; margin-left: 5px">共${guidePage.totalCount}条记录，共${guidePage.totalPage}页</span>
        </ul>
    </nav>

</div>
</body>
</html>

