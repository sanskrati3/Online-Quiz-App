<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>LNCT Quiz Portal</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" href="bootstrap/css/custom-theme.css">


    <!-- Latest compiled and minified JavaScript -->
    <script src="bootstrap/js/jquery-2.2.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <header>
        <jsp:include page="header.jsp" />
        <jsp:include page="nav_user.jsp" />

    </header>
    <form class="form-horizontal" action="SelectTopic" method="post">
        <fieldset>
            <legend>
                Select Topic
            </legend>
            <div class="form-group">
                <div class="col-lg-1"></div>
                <div class="text-center col-lg-10" style="margin: 40px 0px;">
                    <select class="form-control" required="required" name="topic" id="select">
                        <option disabled="disabled" selected="selected">Select Topic</option>
                        <c:forEach items="${topic_list}" var="topic">
                            <option value="${topic.id}">${topic.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-lg-1"></div>
            </div>
            <div class="text-left">
                <h4>Terms and Conditions:</h4>
                <h5>
                <ul>
                    <li>Total number of questions : 10.</li>
<li>Time alloted : 10 minutes.</li>
<li>Each question carry 1 mark, no negative marks.</li>
<li>DO NOT refresh the page.</li>
<li>All the best :-).</li>
                </ul></h5>
            </div>
            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-5">
                    <button type="submit" class="btn btn-primary">Start Quiz</button>
                </div>
            </div>
        </fieldset>
    </form>
</div>
</body>
<script>
    $('.nav-collapse').click('li', function () {
        $('.nav-collapse').collapse('hide');
    });
</script>
</html>