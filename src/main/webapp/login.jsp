<%--
  Created by IntelliJ IDEA.
  User: steph
  Date: 8/25/2020
  Time: 9:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<%
    String message = null;
    if (request.getParameter("login") != null){
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        if("tom".equals(userName) && "jerry".equals(password)) {
            response.sendRedirect("success.jsp");
        }else {
            message = "Password and Username do not match";
        }
    }
%>
<body>
<%
    if (message != null){
        out.print("<span style='color:red'>" + message + "</span>");
    }
%>
<form method="post">
    UserName<input type="text" name="userName"/>
    <br />
    Password<input type="text" name="password"/>
    <br /><input type="submit" name="login" value="Login" />
</form>
</body>
</html>
