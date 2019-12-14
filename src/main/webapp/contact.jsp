<%--
  Created by IntelliJ IDEA.
  User: Rajat
  Date: 10/12/2019
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<form action="formsubmited">
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <p>Your Name</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <input type="text" name="name" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <p>Your Mobile Number</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <input type="number" name="number" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <p>Email Address</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <input type="text" name="address" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <p>Message</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <input type="text" name="message" />
        </div>
    </div>
</div>
<input type= submit value="Submit" class="btn">
</form>
</body>
</html>
