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
                        Loan Amount
                    </div>
                    <div class="col-sm-3 textline2">
                        Loan Purpose
                    </div>
                    <div class="col-sm-3 textline2">
                        Tenure
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
            <img class="image4" src="https://finzy.com/assets/images/finzy_rbi_badge.png">
        </div>
        <div class="container-fluid ">
            <div class="row">
                <div class="col-sm-12 positioning2">Quick personal loans. Low intereset rates.
                </div>
            </div>
        </div>
        <img class="image3" src="https://res.cloudinary.com/finzy/image/upload/Final1_oogh7d" />
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <p class=" text11">How finzy works</p></div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <p class="text12">finzy connects personal loan borrowers with investors</p></div>
    </div>
</div>


<div class="container-fluid">
    <div class="row">
        <% for(IconCardEnum i : IconCardEnum.values()) {%>
        <div class="col-sm-4">
            <div class="card" class="okkk" >
                <img class="card-img-top" src=<%= i.image%>>
                <div class="card-body">
                    <p class="card-text"><%= i.text%>></p>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <p class="text21">What do I need to do for a Personal Loan</p></div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <p class="text22">finzy makes entire borrowing process simple and user friendly <br> You can get your loan funded in as little as 48 hours</p></div>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <img src="https://res.cloudinary.com/finzy/image/upload/v1498288560/borrower_2div_ghvugv.png">
        </div>
    </div></div>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <p class="text31">The Core Team</p></div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <p class="text32">The founding team of Finzy are professionals who have excelled in their fields ranging across <br>finance, technology, product, sales, marketing and leadership.</p></div>
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
            <p class="text11">Do you have a question or feedback?</p>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <p>Your Name</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <input type="text" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <p>Your Mobile Number</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <input type="number" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <p>Email Address</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <input type="text" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <p>Message</p>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <input type="text" />
        </div>
    </div>
</div>
<input type= submit value="Submit" class="btn">

</body>
</html>

