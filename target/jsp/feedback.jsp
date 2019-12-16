<%@ page import="static com.constant.Constant.FEEDBACK" %><%--
  Created by IntelliJ IDEA.
  User: Rajat
  Date: 14/12/2019
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet"  href="css/feedback.css" >
</head>
<body>
<jsp:include page="header.jsp"/>
<% response.setHeader("Cache-Control", "no-ache, no-store, must-revalidate");
%>
<p class="feedback-text"> <%FEEDBACK%></p>
</body>
</html>
