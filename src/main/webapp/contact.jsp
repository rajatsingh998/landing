<!DOCTYPE html>
<html lang="en">
<head>
    <title>Contact V2</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" type="text/css" href="css/contactcss.css">

</head>
<%----%>
<body>
<%@page  import = "static com.constant.Constant.*" %>
<jsp:include page="header.jsp" />
<form action="formsubmited" method="post">


    <div class="container">
        <label ><b><%=NAME%></b></label>
        <input type="text" placeholder="Enter name" name="name" required>

        <label ><b><%=PHONE_NUMBER%></b></label>
        <input type="text" placeholder="Enter Phone Number" name="number" required>

        <label ><b>Email Address</b></label>
        <input type="text" placeholder="Enter Email Address" name="address" required>

        <label ><b><%=MESSAGE%></b></label>
        <input type="text" placeholder="Enter Your Message" name="message" required>

        <input type="submit" value="Submit" class="bttn">

    </div>


</form>
</body>
</html>
