<%--
  Created by IntelliJ IDEA.
  User: YOU
  Date: 2020/11/2
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="first_servlets" method="post" style="text-align: center">
    账号：<input type="text" name="username" placeholder="请输入用户名">
    <br>
    电话：<input type="text" name="user_email" placeholder="xxx-xxxx-xxxx">
    <br>
    密码：<input type="password" name="user_password" placeholder="请输入密码">
    <br>
    介绍：<input type="text" style="width: 15%;height: 10%"  name="user_profile" placeholder="介绍">
    <br>
    <input type="submit" value="login">
    <br>
    <%
        if (request.getAttribute("return")!=null)
            out.print(request.getAttribute("return"));
    %>
    <%--    <input type="reset" value="重置">--%>

</form>
</body>
</html>
