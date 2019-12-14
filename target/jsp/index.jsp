<%@ page import="Enums.Card1enum" %>
<%@ page import="Enums.IconCardEnum" %>
<html>
<head>
    <title>$Title$</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet"  href="css/landingpage.css" >
</head>
<body>
<%@page  import = "static com.constant.Constant.*" %>
<jsp:include page="header.jsp" />

<%--    <div ><img class="image1"src="https://res.cloudinary.com/finzy/image/upload/v1491394379/logoWeb1x_1_thzngg.png"></div>--%>
<%--    <div > <img class="image2" src="https://finzy.com/assets/images/badge_small.png"> NBFC-P2P--%>
<%--        <br> Registered With Rbi</div>--%>

    <!--  -->
    <!--  -->



<!-- <img class="image3" src="https://res.cloudinary.com/finzy/image/upload/Final1_oogh7d">

    <div class="box1">
        <div class="card okk">
            <div class="card-body">
            <div class="textline1">  Loan Amount</div>
           <br>
           <input type="text" class="text-line" />
            </div>
          </div>
          <div class="card okk">
              <div class="card-body">
                This is some text within a card body.
              </div>
            </div>

       -->
<div id="container-fluid" class="col-sm-12">
    <div class="img-container">
        <div class="positioning">

            <div class="container">
                <div class="row">
                    <div class="col-sm-3 textline2">
                       <%= LOAN_AMOUNT %>
                    </div>
                    <div class="col-sm-3 textline2">
                        <%= LOAN_PURPOSE%>
                    </div>
                    <div class="col-sm-3 textline2">
                        <%=TENURE%>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 textline">
                        <input type="text" class="text-line" />
                    </div>
                    <div class="col-sm-3 textline">
                        <input type="text" class="text-line" />
                    </div>
                    <div class="col-sm-3 textline">
                        <input type="text" class="text-line" />
                    </div>
                </div>
            </div>

        </div>
        <div class="positioning1">
            <img class="image4" src= <%=RBI_BADGE_IMAGE%> >
        </div>
        <div class="container-fluid ">
            <div class="row">
                <div class="col-sm-12 positioning2"><%=QUICK_LOANS%>
                </div>
            </div>
        </div>
        <img class="image3" src=<%=BACKGROUND_IMAGE%> />
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <p class=" text11"><%=FINZY_WORK%></p></div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <p class="text12"><%=FINZY_COUSTOMERS%></p></div>
    </div>
</div>


<div class="container-fluid">
    <div class="row">
        <% for(IconCardEnum i : IconCardEnum.values()) {%>
        <div class="col-sm-4">
            <div class="card myClass" >
                <img class="card-img-top" src=<%= i.image%>>
                <div class="card-body">
                    <p class="card-text1"><%= i.text%>></p>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <p class="text21"><%=PERSONAL_LOAN%></p></div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <p class="text22"><%=FINZY_PROCESS%></p></div>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <img src= <%=FINZY_PROCESS_IMAGE%> />
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <p class="text31"><%=CORE_TEAM%></p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <p class="text32"><%=CORE_TEAM_TEXT1%> <br> <%=CORE_TEAM_TEXT2%></p>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <%for (Card1enum i: Card1enum.values() ){%>
        <div class="col-sm-3">
            <div class="card" >
                <img class="card-img-top card-image1" src=<%= i.image%> >
                <div class="card-body">
                    <h5 class="card-title"><%= i.name%></h5>
                    <p class="card-text"><%= i.about %></p>
                </div>
            </div>
        </div>
        <% }%>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col-sm-41">
            <p class="text11"><%=ANY_QUESTION%></p>
        </div>
    </div>
</div>


<%--<div class="container">--%>
<%--    <div class="row">--%>
<%--        <div class="col-sm-12">--%>
<%--            <p>Your Name</p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--        <div class="col-sm-12">--%>
<%--            <input type="text" />--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--        <div class="col-sm-12">--%>
<%--            <p>Your Mobile Number</p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--        <div class="col-sm-12">--%>
<%--            <input type="number" />--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--        <div class="col-sm-12">--%>
<%--            <p>Email Address</p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--        <div class="col-sm-12">--%>
<%--            <input type="text" />--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--        <div class="col-sm-12">--%>
<%--            <p>Message</p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--        <div class="col-sm-12">--%>
<%--            <input type="text" />--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<input type= submit value="Submit" class="btn">--%>

</body>
</html>

