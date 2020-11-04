<%--
  Created by IntelliJ IDEA.
  User: YOU
  Date: 2020/10/26
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="number_verify" method="post">
    用户:<input type="text" name="user">
    电话: <input type="text"  name="telephone" placeholder="xxx-xxxx-xxxx">
    <br>
    <input type="submit" value="submit">
    <div id="success" ></div>
        <%
             if (request.getAttribute("return")!=null){
                 if ((boolean)request.getAttribute("return"))
                 out.print(" 提交成功");
                else
                 out.print("输入错误，请重新输入");
             }

        %>


</form>
</body>
</html>
