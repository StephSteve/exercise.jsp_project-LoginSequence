
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP DEMO</title>
</head>


<html>
<%! int count = 0;
    void incrementCount(){
        count++;
    }%>

<body>
<h2>Hello World!</h2>
<h3><% out.print("Welcome to JSP"); %></h3>
Hello! the time is now <%= new java.util.Date()%>
<h1>
    <%
        int localVariable = 0;
        out.print("This page is viewed " + count + " times");
        incrementCount();
    %>
</h1>
The Value of the local variable is
<%=localVariable%>
<% localVariable++;%>

</body>
</html>
