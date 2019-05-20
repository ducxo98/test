<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: duc
  Date: 20/05/2019
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>simple dictionary</title>

</head>
<body>
<%!
    Map<String,String> dic = new HashMap<>();
%>
<% dic.put("hello","xin chao");
dic.put("how","the nao");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");
    String search = request.getParameter("search");
    String result = dic.get(search);
    PrintWriter writer = response.getWriter();
    if (result != null) {
        writer.println("Word: " + search);
        writer.println("<br>");
        writer.println("Result: " + result);
    } else {
        writer.println("Not found");
    }
%>

</body>
</html>
