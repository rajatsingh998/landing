<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="javax.persistence.EntityManagerFactory" %>
<%@ page import="javax.persistence.Persistence" %>
<%@ page import="javax.persistence.TypedQuery" %>
<%@ page import="javax.persistence.criteria.CriteriaBuilder" %>
<%@ page import="javax.persistence.criteria.CriteriaQuery" %>
<%@ page import="javax.persistence.criteria.Root" %>
<%@ page import="java.*" %><%--
  Created by IntelliJ IDEA.
  User: Rajat
  Date: 13/12/2019
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Data Display</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="header.jsp" />
<br><br><br>
<%@ page import="UserData.forma" %>
<%@ page import="java.util.List" %>
<%
    if(session.getAttribute("username")==null){
        response.sendRedirect("login.jsp");
    }
%>
<%
    EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("Form");
    EntityManager entityManager= entityManagerFactory.createEntityManager();


    CriteriaBuilder cb=entityManager.getCriteriaBuilder();
    CriteriaQuery<forma> cq=cb.createQuery(forma.class);

    Root<forma> user=cq.from(forma.class);

    cq.multiselect(user.get("name"),user.get("number"),user.get("address"), user.get("message") );
    CriteriaQuery<forma> select = cq.select(user);
    TypedQuery<forma> q = entityManager.createQuery(select);
    List<forma> list = q.getResultList();

%>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Mobile Number</th>
        <th scope="col">Email Address</th>
        <th scope="col">Message</th>
    </tr>
    </thead>
    <tbody>
        <%
            for(forma i: list) {
                String name = i.getName();
                String number = i.getNum();
                String email = i.getAddress();
                String message = i.getMessage();
              %>

            <tr>
                <th><%=name %></th>
                <th><%= number %></th>
                <th><%= email %></th>
                <th><%=message %></th>
            </tr>
            <% } %>



    </tbody>
</table>
</body>
</html>
