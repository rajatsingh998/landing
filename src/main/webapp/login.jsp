<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login V19</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">

</head>
<body>
<%@page  import = "static com.constant.Constant.*" %>
<jsp:include page="header.jsp" />
<% response.setHeader("Cache-Control", "no-ache, no-store, must-revalidate");
%>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
            <form class="login100-form validate-form" action="Display"   method="post">
                <%  if(request.getAttribute(LOGIN_MESSAGE)!=null) { %>
					<span class="login100-form-title p-b-33" >
                        <p style="color: red; font-size: larger; text-align: center;">Invalid Login</p>
					</span>
                <% }
                else {%>
                <span class="login100-form-title p-b-33">
						Account Login
					</span>
                <%}%>

                <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                    <input class="input100" type="text" name="login" placeholder="Username">
                    <span class="focus-input100-1"></span>
                    <span class="focus-input100-2"></span>
                </div>

                <div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
                    <input class="input100" type="password" name="password" placeholder="Password">
                    <span class="focus-input100-1"></span>
                    <span class="focus-input100-2"></span>
                </div>

                <div class="container-login100-form-btn m-t-20">
                    <button class="login100-form-btn">
                        Sign in
                    </button>
                </div>


            </form>
        </div>
    </div>
</div>





</body>
</html>