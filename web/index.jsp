<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>LNCT Quiz Portal</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="bootstrap/css/custom-theme.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="bootstrap/js/jquery-2.2.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <header>
        <jsp:include page="header.jsp" />
        <jsp:include page="nav_public.jsp" />
    </header>
    <div class="page-header">
        <h3>About Us</h3>
    </div>
    <% String info = (String) session.getAttribute("info");
        String info_msg = (String) session.getAttribute("info_msg"); %>
    <% if (info == "true") { %>
    <div class="alert alert-dismissible alert-success">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong><%= info_msg%>
        </strong>
    </div>
    <% } %>
    <div class="col-lg-1"></div>
    <div class="col-lg-10">
        <p style="font-size: 1.5em;">
        <br/>
            The ONLINE QUIZ is a web application for students to take online test in an efficient manner and no time wasting for checking the paper and automated gives fast results.

            <br />
        
            This project was developed by :<br>
            1. Nikhil Gandhi<br>
            2. Sanskrati Gawande<br>
            3. Shivam Bhawsar 
        
    </div>
    <div class="col-lg-1"></div>
</div>
</body>
<script>
    $('.nav-collapse').click('li', function () {
        $('.nav-collapse').collapse('hide');
    });
</script>
</html>