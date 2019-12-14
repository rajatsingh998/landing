<%--
  Created by IntelliJ IDEA.
  User: Rajat
  Date: 14/12/2019
  Time: 06:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet"  href="css/landingpage.css" >
</head>
<body>
<div class="navv">
<nav class="navbar navbar-expand-lg navbar-white  static-top"   >
    <div class="container" style="background-color: white" >
        <a class="navbar-brand" href="#">
            <img src="https://res.cloudinary.com/finzy/image/upload/v1491394379/logoWeb1x_1_thzngg.png" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive" style="background-color: white">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home

                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item">

                    <%
                        if(session.getAttribute("username")==null) {%>
                    <form action="login.jsp">
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
