<%--
  Created by IntelliJ IDEA.
  User: Rajat
  Date: 14/12/2019
  Time: 06:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page  import = "static com.constant.Constant.*" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet"  href="css/landingpage.css" >
</head>
<body>
<div style="background-color: #fffdd0">
<nav class="navbar navbar-expand-lg navbar-white  static-top"   >
    <div class="container" style="background-color: #fffdd0" >
        <a class="navbar-brand" href="#">
            <img src="https://res.cloudinary.com/finzy/image/upload/v1491394379/logoWeb1x_1_thzngg.png" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive" style="background-color:#fffdd0">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp"> <%=HOME%>

                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contactus"><%=CONTACT_US%></a>
                </li>

                <%
                    if(session.getAttribute(SESSION_USERNAME)!=null) {%>
                <li class="nav-item">
                    <a class="nav-link" href="display"><%=RECORD%></a>
                </li>
                <% } %>


                <li class="nav-item">

                    <%
                        if(session.getAttribute(SESSION_USERNAME)==null || request.getAttribute(LOGIN_MESSAGE)!=null) {%>
                    <form action="Login" method="post">
                        <input type=submit value="Log IN" class="btn btn-primary">
                    </form>
                    <% }
                    else { %>
                    <form action="logOutForm">
                        <input type=submit value="Log Out" class="btn btn-primary">
                        <%}%>
                    </form>
                </li>
            </ul>
        </div>
    </div>
</nav>
</div>
</body>
</html>
