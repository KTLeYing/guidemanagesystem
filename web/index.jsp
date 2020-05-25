<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/4/18
  Time: 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
      <%
//         request.getRequestDispatcher("/view/admin/login1.jsp").forward(request, response);
          response.sendRedirect(request.getContextPath() + "/view/admin/login1.jsp");
      %>
  </body>
</html>
